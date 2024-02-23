#!/usr/bin/bash

# As a result of previous csi-blob node installations, an env variable in the
# csi-blob-node daemonset init container had an environment variable named 
# INSTALL_BLOBFUSE2 set to true to allow installation of the CSI BLOB driver.
# In the latest versions of AKS, the blobfuse driver is installed by default
# and a value of 'true' for this variable prevents the csi-blob-node pods
# from starting properly.

# This script determines if the csi-blob-node daemonset contains old 
# environment variables INSTALL_BLOBFUSE2 and BLOBFUSE2_VERSION and removes
# them, if present.

export KUBECONFIG=${HARNESS_KUBE_CONFIG_PATH}
echo "setting KUBECONFIG to ${KUBECONFIG}"

# Check for the unneeded env vars
function check_for_env_vars {
# Get the name of one of the csi-blob-node pods to check for old env variables
pod_name=$(kubectl get pods -l app=csi-blob-node -o=jsonpath='{.items[0].metadata.name}' -n kube-system)
  install_blobfuse2_env_var=$(kubectl get pod $pod_name -o jsonpath='{.spec.initContainers[?(@.name=="install-blobfuse-proxy")].env[?(@.name=="INSTALL_BLOBFUSE2")].value}' -n kube-system)
  first_check=$?
  blobfuse2_version_env_var=$(kubectl get pod $pod_name -o jsonpath='{.spec.initContainers[?(@.name=="install-blobfuse-proxy")].env[?(@.name=="BLOBFUSE2_VERSION")].value}' -n kube-system)
  if [[ $? -ne 0 ]] || [[ $first_check -ne 0 ]]; then
      echo "Error: Failed to check for INSTALL_BLOBFUSE2 or BLOBFUSE2_VERSION environment variable." >&2
      exit 1
  fi
}

# If INSTALL_BLOBFUSE2 or BLOBFUSE2_VERSION are present, remove them from
# the csi-blob-node daemonset.
check_for_env_vars
if [[ -n $install_blobfuse2_env_var ]] || [[ -n $blobfuse2_version_env_var ]]; then
    echo "Found environment variables INSTALL_BLOBFUSE2 / BLOBFUSE2_VERSION in the csi-blob-node daemonset. Removing..."
    kubectl set env daemonset csi-blob-node -c install-blobfuse-proxy INSTALL_BLOBFUSE2-
    kubectl set env daemonset csi-blob-node -c install-blobfuse-proxy BLOBFUSE2_VERSION-
else
    echo "Neither INSTALL_BLOBFUSE2 or BLOBFUSE2_VERSION found. No remediation required."
    exit 0
fi

# Check if the env var remove was successful
sleep 30
check_for_env_vars
if [[ -n $install_blobfuse2_env_var ]] || [[ -n $blobfuse2_version_env_var ]]; then
    echo "Error:INSTALL_BLOBFUSE2 or BLOBFUSE2_VERSION environment variables are still present in the csi-blob-node daemonset." >&2
    exit 1
else
    echo "INSTALL_BLOBFUSE2 and BLOBFUSE2_VERSION environment variables have been successfully removed from the csi-blob-node daemonset."
fi