#!/usr/bin/bash

# This script restores backup data to a Grafana installation.  This is
# accomplished by retrieving a backup file from Azure blob storage and making
# calls to the Grafana API to restore the data.

echo "Restoring Grafana backup data..."

export KUBECONFIG=${HARNESS_KUBE_CONFIG_PATH}
echo "setting KUBECONFIG to ${KUBECONFIG}"

namespace=${context.input.namespace}

az_storage_container_name="grafana-${context.cluster.name}"
echo "az_storage_container_name $az_storage_container_name"

# Name of the backup file to use for restoration located in Azure blob storage
backup_file_name="${context.input.backup_file_name}"

# Generates a random string to add to the end of the temp directory to 
# prevent collision on the delegate if multiple pipelines are run.
random_string=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1)

local_temp_dir="grafana-temp-$random_string"
temp_curl_data_file="./${local_temp_dir}/curl_data"
current_data_dir="current"
backup_data_dir="backup"
backup_path="./$local_temp_dir/$backup_data_dir"
current_resource_path="./$local_temp_dir/$current_data_dir"
backup_file_path="./${local_temp_dir}/${backup_file_name}"
current_folders_file="./${local_temp_dir}/current_folders.json"
current_datasources_file="./${local_temp_dir}/current_datasources.json"

# Backup file names
datasources="datasources.json"
dashboards="dashboards.json"
dashboard_folders="dashboard_folders.json"
grafana_alert_rules="grafana_alert_rules.json"
loki_alert_rules="loki_alert_rules.json"
alert_contact_point="alert_contact_point.json"
alert_msg_template="alert_msg_template.json"
alert_mute_timing="alert_mute_timing.json"
alert_notification_policy="alert_notification_policy.json"

# Expected success response output for curl commands
success_re="response_code: 20[0-8]"

# Function to print an error, remove the temporary backup directory on the
# delegate, and exit the script.
#
# Parameters
# $1 The error message to print.
handle_error() {
    echo "$1" >&2
    rm -rf "${local_temp_dir}"
    exit 1
}

# Login to Azure cli
az_sp_id=${secrets.getValue("sp_raider_owner-client-id")}
az_sp_secret=${secrets.getValue("sp_raider_owner-client-secret")}
az_tenant_id=${secrets.getValue("sp_raider_owner-tenant-id")}
az login --service-principal -u $az_sp_id -p $az_sp_secret --tenant $az_tenant_id
if [[ $? -ne 0 ]]; then
    handle_error "Error: Unable to login to Azure cli."
fi

# Set subscription Id in Azure cli 
azure_subscription=${environmentVariable.azure_subscription_id}
az account set --subscription $azure_subscription
if [[ $? -ne 0 ]]; then
    handle_error "Error: Unable to set subscription Id in Azure cli."
fi

# Get Azure storage account name
az_storage_account_name=$(kubectl get secrets blob-storage \
  -n "${namespace}" -o yaml \
  | yq e '.data.account_name' - \
  | base64 -d )
storage_name_regex='^[a-z0-9]+$'
if [[ ! "$az_storage_account_name" =~ $storage_name_regex ]]; then
    handle_error "Error: Unable to retrieve storage account name."
fi

# Get Azure storage account key
az_storage_account_key=$(az storage account keys list \
  --account-name "${az_storage_account_name}" \
  --output yaml | yq e ".[0] | .value" -)
if [[ -z "$az_storage_account_key" ]]; then
    handle_error "Error: Unable to retrieve storage account key."
fi

grafana_host_name=${context.grafana.hostname}
grafana_fqdn="$grafana_host_name.${context.dns.public_zone}"
grafana_pswd=${secrets.getValue(${context.grafana.admin_password_secret})}
if [[ -z "$grafana_pswd" ]]; then
    handle_error "Error: Grafana secret is not set."
fi

# Create temporary backup data and current setting directories on delegate
mkdir -p "$current_resource_path"
mkdir -p "$backup_path"

# Function to get current resource and write it to file.
#
# Parameters
# $1 API path
# $2 Temporary file to write resource to
get_current_resource() {
    echo "Getting resource at $1..."
    response=$(curl -sk -w 'response_code: %{response_code}\n' \
        -H 'Content-Type: application/json' \
        "https://admin:$grafana_pswd@${grafana_fqdn}$1" -o "$2")
    if [[ ! "$response" =~ $success_re ]] || [[ ! -f "$2" ]]; then
        handle_error "Error: Failed to store resource at $1 and write to file."
    fi
}

# Function to get a uid for a given resource type and name.
#
# Parameters
# $1 Resource field name
# $2 Resource name
# $3 File with resource file
get_uid_by_name() {
    local matched_resource_obj=$(jq --arg fieldname "$1" --arg value "$2" '.[] | select(.[ $fieldname ] == $value)' "$3")
    local uid=$(jq -r '.uid' <<< "$matched_resource_obj")

    if [[ -n "$uid" ]]; then
        echo "$uid"
    fi
}

# Function to get an array of identifiers that can uniquely identify alert
# groups. Each identifier is formed by combining the folder that the alert is
# stored in concatenated with the group separated by a ';' character. 
# Each resulting identifier will be in the format {folder};{group}. There are
# many groups associated with a single folder.
#
# Parameters
# $1 The path to a local json file where alert data is stored.
get_alert_identifiers() {
    local folders=()
    local alert_id_array=()
    while IFS= read -r key; do
        trimmed_key=$(echo "$key" | xargs)
        folders+=("$trimmed_key")
    done < <(cat "$1" | jq -r 'keys[]')

    for folder in "${folders[@]}"; do
        readarray -t group_array < <(cat $1 | jq -r ".\"$folder\" | .[] | .name")
        for group_name in "${group_array[@]}"; do
            alert_id_array+=( "$folder;$group_name" )
        done
    done

    echo "${alert_id_array[@]}"
}

# Function to get an array of identifiers that can be used to uniquely
# identify a resources. The term 'resource' refers to datasources,
# dashboards, alerts, etc.
#
# Parameters
# $1 Resource Type
# $2 The API path to retrieve all resources of a specific type.
# $3 Path where a local json file that contains resources of a specific type
#   will be stored.
get_current_identifiers() {
    response=$(curl -sk -w 'response_code: %{response_code}\n' \
      -H 'Content-Type: application/json' \
      "https://admin:$grafana_pswd@$grafana_fqdn$2" -o "$3")
    if [[ $? -ne 0 ]] || [[ ! "$response" =~ $success_re ]] || [[ ! -f "$3" ]]; then
        handle_error "Error: Failed to get resource at $2 and create $3."
    fi

    local id_array=()
    case $1 in
        datasource | dashboard | dashboard_folder | alert_contact_point)
            # Generate array of uid's for each resource
            for item in $(cat $3 | jq -r '.[] | @base64'); do
                uid=$(echo $item | base64 -d | jq '.uid' | tr -d \")
                id_array+=( $uid )
            done
            ;;

        alert_mute_timing | alert_template)
            # Generate array of names's for each resource
            for item in $(cat $3 | jq -r '.[] | @base64'); do
                name=$(echo $item | base64 -d | jq '.name' | tr -d \")
                id_array+=( $name )
            done
            ;;

        alert_notifications)
            # Existing Grafana API's only allow update of the entire 
            # notification policy, rather than parts of it, so storing a hash
            # of the entire configuration to uniquely identify any changes.
            notification_policy_hash=$(cat $3 | md5sum | cut -d ' ' -f1)
            id_array=( "$notification_policy_hash" )
            ;;

        alert)
            id_array=$(get_alert_identifiers $3)
            ;;

        *)
            handle_error "Error: Unknown backup type."
            ;;
    esac

    echo "${id_array[@]}"
}

# Store current folders in temporary file 
get_current_resource "/api/folders" $current_folders_file
get_current_resource "/api/datasources" $current_datasources_file

# Get current datasource, dashboard, and dashboard identifiers.
current_datasource_uids=$(get_current_identifiers datasource "/api/datasources" "$current_resource_path/$datasources")
current_dashboard_folder_uids=$(get_current_identifiers dashboard_folder "/api/search?type=dash-folder" "$current_resource_path/$dashboard_folders")
current_dashboards_uids=$(get_current_identifiers dashboard "/api/search?type=dash-db" "$current_resource_path/$dashboards")

# Get current loki datasource uid's.  These are required to make API calls
# to collect loki alert data.
current_loki_datasource_uids=$(cat "$current_resource_path/$datasources" | jq '.[] | select(.type == "loki") | .uid' | tr -d \")
if [[ -z "$current_loki_datasource_uids" ]]; then
    handle_error "Error: Failed to get current loki datasource uids requied for alert restoration."
fi

# Store all of the loki datasource uid's as keys in an associative array and 
# set the values of those keys to loki alert identifiers associated with the
# datasource. This is array is used to check if an alert already exists before
# attempting to restore.
declare -A current_loki_alert_id_array=()

# Get current Loki and Managed Grafana alert identifiers. Loki identifiers are
# stored in the array defined immediately above.
while IFS= read -r loki_uid
do
    if [[ -n "$loki_uid" ]]; then
        loki_backup_file_name="$loki_uid-$loki_alert_rules"
        loki_api_path="/api/ruler/$loki_uid/api/v1/rules"
        alert_current_data_path="$current_resource_path/$loki_backup_file_name"

        # Retrieve loki alert data by datasource
        response=$(curl -sk -w 'response_code: %{response_code}\n' \
        -H 'Content-Type: application/json' \
        "https://admin:$grafana_pswd@$grafana_fqdn$loki_api_path" -o "$alert_current_data_path")

        if [[ "$response" =~ $success_re ]] && [[ -f "$alert_current_data_path" ]]; then
            loki_alert_identifiers=$(get_alert_identifiers $alert_current_data_path)
            current_loki_alert_id_array+=(["$loki_uid"]="$loki_alert_identifiers")
        fi
    fi
done <<< "$current_loki_datasource_uids"
current_grafana_alert_names=$(get_current_identifiers alert "/api/ruler/grafana/api/v1/rules" "$current_resource_path/$grafana_alert_rules")

# Get current alert setting identifiers.
current_contact_point_uids=$(get_current_identifiers alert_contact_point "/api/v1/provisioning/contact-points" "$current_resource_path/$alert_contact_point")
current_alert_template_names=$(get_current_identifiers alert_template "/api/v1/provisioning/templates" "$current_resource_path/$alert_msg_template")
current_mute_timing_names=$(get_current_identifiers alert_mute_timing "/api/v1/provisioning/mute-timings" "$current_resource_path/$alert_mute_timing")

# The Notification policy can only be updated not created and can only be
# updated as a whole rather than per setting.  This is a hash of all settings
# in the policy.  This hash of current settings is compared to the hash of 
# backed up settings to determine if a restore is required.
current_notifications_hash=$(get_current_identifiers alert_notifications "/api/v1/provisioning/policies" "$current_resource_path/$alert_notification_policy")

# Download Grafana backup data from Azure Blob Storage
echo "Downloading backup data from blob storage..."
az storage blob download \
  --account-key "$az_storage_account_key" \
  --account-name "${az_storage_account_name}" \
  --container-name "${az_storage_container_name}" \
  -f "${backup_file_path}" -n "${backup_file_name}"
if [[ $? -ne 0 ]]; then
    handle_error "Error: Unable to download backup data from Azure blob storage."
fi

# Unpack backup data in temporary directory
echo "Unpacking backup files on delegate..."
(cd "$local_temp_dir"; tar -xzvf "${backup_file_name}" -C "./${backup_data_dir}")
if [[ $? -ne 0 ]]; then
    handle_error "Error: Unable to unpack backup data locally on delegate."
fi

# Function to restore resources from a backup file.
#
# Parameters
# $1 Resource Type
# $2 The location of the backup file.
# $3 The path of the API for resource creation.
# $4 The set of identifier's for existing resources.
restore_resources() {
    local existing_identifiers="${@:4}"
    local http_method="POST"
    local api_path_id=""
    echo "Checking for $1 resources that need to be restored..."
    for resource in $(cat "$2" | jq -r '.[] | @base64'); do
        data=$(echo $resource | base64 -d )

        # Define the identifiers and http methods which vary between resources
        # being restored.  In some cases, the unique identifier is a uid that 
        # needs to be restored while in other cases there is no uid and just 
        # a name.
        case $1 in 
            datasource | dashboard_folder | alert_contact_point)
                identifier=$(echo $data | jq '.uid' | tr -d \")

                # Creating this kind of resource requires that the id be set 
                # to null. Set the uid to the value of the backup, so that it's
                # restored with the same uid.
                data=$(echo "$data" | jq '.id = null')
                data=$(echo "$data" | jq --arg var "$identifier" '.uid = $var')

                # Skip restore if a resource with the same name already exists.
                if [[ $1 = "dashboard_folder" ]] || [[ $1 = "datasource" ]]; then
                    field="name"
                    resource_file="$current_datasources_file"
                    if [[ $1 = "dashboard_folder" ]]; then
                        field="title"
                        resource_file="$current_folders_file"
                    fi
                    
                    resource_name=$(echo $data | jq --arg fieldname "$field" '.[$fieldname]' | tr -d \")
                    echo "Checking for existing resource named '$resource_name'..."
                    resource_uid=$(get_uid_by_name "$field" "$resource_name" $resource_file)
                    if [[ -n $resource_uid ]]; then
                        echo "Existing resource found with name '$resource_name'. Skipping restore."
                        continue
                    else
                        echo "No resource found with name '$resource_name'..."
                    fi
                fi
                ;;

            dashboard)
                identifier=$(echo $data | jq '.dashboard.uid' | tr -d \")
                folder_uid=$(echo $data | jq '.meta.folderUid' | tr -d \")
                
                # Check if there is an existing folder that matches the name
                # of the folder from the backup. If so, replace that backup
                # folder uid with the uid of the folder that matches the 
                # folder name.
                folder_name=$(echo $data | jq '.meta.folderTitle' | tr -d \")
                temp_folder_uid=$(get_uid_by_name "title" "$folder_name" $current_folders_file)
                if [[ -n temp_folder_uid ]]; then
                    echo "Existing folder '$folder_name' with uid '$temp_folder_uid' found. Using this folder uid to restore dashboard with uid '$identifier'..."
                    folder_uid=${temp_folder_uid}
                fi

                # Creating this kind of resource requires that the id be set 
                # to null. Set the uid to the value of the backup, so that it's
                # restored with the same uid.
                data=$(echo "$data" | jq '.dashboard.id = null')
                data=$(echo "$data" | jq --arg var "$identifier" '.dashboard.uid = $var')

                # Need to add reference to the folder Uid in the correct place in
                # json hierarchy and remove reference to the folder Id.
                data=$(echo "$data" | jq --arg var "$folder_uid" '.folderUid = $var')

                data=$(echo "$data" | jq 'del(.meta.folderId)')
                data=$(echo "$data" | jq 'del(.meta.folderUid)')
                data=$(echo "$data" | jq 'del(.meta.folderTitle)')
                data=$(echo "$data" | jq 'del(.meta.folderUrl)')

                data=$(echo "$data" | jq 'del(.dashboard.version)')
                data=$(echo "$data" | jq 'del(.meta.version)')
                ;;

            alert_mute_timing)
                identifier=$(echo $data | jq '.name' | tr -d \")
                ;;

            alert_template)
                http_method="PUT"
                identifier=$(echo $data | jq '.name' | tr -d \")
                api_path_id="$identifier"
                ;;

            alert_notification)
                http_method="PUT"
                identifier=$(echo -n $data | md5sum | cut -d ' ' -f1)
                ;;

            alert)
                # Extract the folder from the API path
                folder=$(echo "$3" | sed 's|.*/\([^/?]*\)\?.*|\1|')

                # Replace any url encoded spaces with spaces
                folder_name_intermediate=$(echo "$folder" | sed 's/%25/%/g')
                folder=$(echo "$folder_name_intermediate" | sed 's/%20/ /g')

                group_name=$(echo $data | jq '.name' | tr -d \")
                identifier="$folder;$group_name"
                ;;

            *)
                handle_error "Error: Unknown backup type."
                ;;
        esac
        
        # Skip restoration if the backup resource's identifier matches an existing identifier.
        if [[ "${existing_identifiers[@]}" =~ "$identifier" ]]; then
            echo "Existing resource found with identifier '$identifier'. Skipping update."
            continue
        fi

        # Replace the ':identifier:' placeholder text with the resource Id if present.
        api_path=$(echo "${3/:identifier:/$api_path_id}")

        # Write data to file to be read by curl.  Curl has had trouble accepting
        # large amounts of dashboard data passed directly on the command line.
        echo "$data" > $temp_curl_data_file

        # Attempt to restore the resource from backup
        echo "No existing resource found with identifier '$identifier'. Attempting to restore data...."
        response=$(curl -sSk -w 'response_code: %{response_code}\n' \
          -H 'X-Disable-Provenance: ' \
          -H 'Content-Type: application/json' \
          -X "$http_method" "https://admin:$grafana_pswd@$grafana_fqdn$api_path" -d "@$temp_curl_data_file")
        echo "$response"
        if [[ "$response" =~ $success_re ]]; then
            echo "Successfully restored resource with identifier '$identifier'."
        else
            echo "Error: Failed to restore resource with identifier '$identifier'." >&2
            echo "$response" >&2
            update_fail=true
        fi
    done

    # Output newlines for more readable logs
    echo -ne '\n'
}

# A flag to track if any of the updates fail.
update_fail=false

# Restore datasources
restore_resources datasource "$backup_path/$datasources" "/api/datasources" "$current_datasource_uids"
# Update current datasource set after restore
get_current_resource "/api/datasources" $current_datasources_file

# Restore dashboard folders before dashboards, so that dashboards can be
# placed in the correct location.
restore_resources dashboard_folder "$backup_path/$dashboard_folders" "/api/folders" "$current_dashboard_folder_uids"
# Update current folder set after folder restore 
get_current_resource "/api/folders" $current_folders_file

restore_resources dashboard "$backup_path/$dashboards" "/api/dashboards/db" "$current_dashboards_uids"

# Function to restore alerts from a backup file.
#
# Parameters
# $1 Alert type
# $2 The location of the backup file.
# $3 The API path used for resource creation.
# $4 The set of identifier's for existing resources.
restore_alerts() {
    local folders=()
    while IFS= read -r key; do
        trimmed_key=$(echo "$key" | xargs)
        folders+=("$trimmed_key")
    done < <(cat "$2" | jq -r 'keys[]')

    for folder in "${folders[@]}"; do
        echo "Processing the alert folder '$folder'..."

        # Replace the ':folder:' placeholder text with the actual folder in
        # the API path to be used to restore alerts.
        api_path=$(echo "${3/:folder:/$folder}")

        # Get the array of alert groups for the current folder and write to a
        # temporary file that will be referenced when calling the restore 
        # resource function.
        case $1 in
            loki)
                echo "Processing loki alerts..."
                cat "$2" | jq -r ".\"$folder\"" > "./$local_temp_dir/temp_alert_rules.json"
                ;;

            grafana)
                echo "Processing grafana alerts..."
                grafana_groups=$(cat "$2" | jq -r ".\"$folder\"")

                modified_grafana_groups=$(echo "$grafana_groups" | jq 'walk(
                    if type == "object" and has("grafana_alert") then
                        .grafana_alert.uid = null
                    else
                        .
                    end
                )')
                echo "$modified_grafana_groups" > "./$local_temp_dir/temp_alert_rules.json"
                ;;

            *)
                handle_error "Error: Unknown backup type."
                ;;
        esac

        # URL encode any spaces and % characters in path to ensure valid url
        api_path_no_percents=$(echo "$api_path" | sed 's/%/%25/g')
        api_path_no_spaces=$(echo "$api_path_no_percents" | sed 's/ /%20/g')
        restore_resources alert "./$local_temp_dir/temp_alert_rules.json" "$api_path_no_spaces" "$4"
    done
}

# Iterate through each loki backup datasource uid and restore the data in each
# associated backup file.
while IFS= read -r loki_uid
do
    if [[ -n "$loki_uid" ]] && [[ -f "$backup_path/$loki_uid-$loki_alert_rules" ]]; then
        current_loki_alert_ids="${current_loki_alert_id_array[$loki_uid]}"
        restore_alerts loki "$backup_path/$loki_uid-$loki_alert_rules" "/api/ruler/$loki_uid/api/v1/rules/:folder:?subtype=cortex" "$current_loki_alert_ids"
    fi
done <<< "$current_loki_datasource_uids"
restore_alerts grafana "$backup_path/$grafana_alert_rules" "/api/ruler/grafana/api/v1/rules/:folder:?subtype=cortex" "$current_grafana_alert_names"

restore_resources alert_contact_point "$backup_path/$alert_contact_point" "/api/v1/provisioning/contact-points" "$current_contact_point_uids"
restore_resources alert_template "$backup_path/$alert_msg_template" "/api/v1/provisioning/templates/:identifier:" "$current_alert_template_names"
restore_resources alert_mute_timing "$backup_path/$alert_mute_timing" "/api/v1/provisioning/mute-timings" "$current_mute_timing_names"

# Wrap the alert json object in an array, so that it can be processed like the
# other Grafana resources by the restore_resources file.
jq -s '.' "$backup_path/$alert_notification_policy" > "$backup_path/alert_notification_array.json"
restore_resources alert_notification "$backup_path/alert_notification_array.json" "/api/v1/provisioning/policies" "$current_notifications_hash"

# Clean-up temporary backup files on delegate
echo "Cleaning up temporary backup files on delegate..."
rm -r "${local_temp_dir}"
if [[ "$update_fail" = true ]]; then
    handle_error "Error: At least one of the resources failed to be restored."
fi
