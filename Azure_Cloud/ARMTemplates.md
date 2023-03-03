# Azure ARM 

To implement infrastructure as code for your Azure solutions, use Azure Resource Manager templates (ARM templates). The template is a JavaScript Object Notation (JSON) file that defines the infrastructure and configuration for your project. The template uses declarative syntax, which lets you state what you intend to deploy without having to write the sequence of programming commands to create it. In the template, you specify the resources to deploy and the properties for those resources.

## ARM template file structure

```
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "",
  "apiProfile": "",
  "parameters": {  },
  "variables": {  },
  "functions": [  ],
  "resources": [  ],
  "outputs": {  }
}
```


ARM template file structure
When writing an ARM template, you need to understand all the parts that make up the template and what they do. ARM template files are made up of the following elements:

Element	|Description|
|-|-|
schema	|A required section that defines the location of the JSON schema file that describes the structure of JSON data. The version number you use depends on the scope of the deployment and your JSON editor.
contentVersion	|A required section that defines the version of your template (such as 1.0.0.0). You can use this value to document significant changes in your template to ensure you're deploying the right template.
apiProfile	|An optional section that defines a collection of API versions for resource types. You can use this value to avoid having to specify API versions for each resource in the template.
parameters|	An optional section where you define values that are provided during deployment. These values can be provided by a parameter file, by command-line parameters, or in the Azure portal.
variables|	An optional section where you define values that are used to simplify template language expressions.
functions|	An optional section where you can define user-defined functions that are available within the template. User-defined functions can simplify your template when complicated expressions are used repeatedly in your template.
resources|	A required section that defines the actual items you want to deploy or update in a resource group or a subscription.
output|	An optional section where you specify the values that will be returned at the end of the deployment.

### Parameters

In the parameters section of the template, you specify which values you can input when deploying the resources. You're limited to 256 parameters in a template. You can reduce the number of parameters by using objects that contain multiple properties.

The available properties for a parameter are:
```
"parameters": {
  "<parameter-name>" : {
    "type" : "<type-of-parameter-value>",
    "defaultValue": "<default-value-of-parameter>",
    "allowedValues": [ "<array-of-allowed-values>" ],
    "minValue": <minimum-value-for-int>,
    "maxValue": <maximum-value-for-int>,
    "minLength": <minimum-length-for-string-or-array>,
    "maxLength": <maximum-length-for-string-or-array-parameters>,
    "metadata": {
      "description": "<description-of-the parameter>"
    }
  }
}
```

Element name	|Required	|Description
|-|-|-|
parameter-name	|Yes	|Name of the parameter. Must be a valid JavaScript identifier.
type	|Yes|	Type of the parameter value. The allowed types and values are string, securestring, int, bool, object, secureObject, and array. See Data types in ARM templates.
defaultValue|	No|	Default value for the parameter, if no value is provided for the parameter.
allowedValues	|No|	Array of allowed values for the parameter to make sure that the right value is provided.
minValue	|No	|The minimum value for int type parameters, this value is inclusive.
maxValue	|No|	The maximum value for int type parameters, this value is inclusive.
minLength	|No|	The minimum length for string, secure string, and array type parameters, this value is inclusive.
maxLength	|No|	The maximum length for string, secure string, and array type parameters, this value is inclusive.
description	|No	1Description of the parameter that is displayed to users through the portal. For more information, see Comments in templates.

To use parameter you put "[parameters('NameofParameter')]"

### Variables
In the variables section, you construct values that can be used throughout your template. You don't need to define variables, but they often simplify your template by reducing complex expressions. The format of each variable matches one of the data types. You are limited to 256 variables in  a template.

The following example shows the available options for defining a variable:

```
"variables": {
  "<variable-name>": "<variable-value>",
  "<variable-name>": {
    <variable-complex-type-value>
  },
  "<variable-object-name>": {
    "copy": [
      {
        "name": "<name-of-array-property>",
        "count": <number-of-iterations>,
        "input": <object-or-value-to-repeat>
      }
    ]
  },
  "copy": [
    {
      "name": "<variable-array-name>",
      "count": <number-of-iterations>,
      "input": <object-or-value-to-repeat>
    }
  ]
}
```

### Functions
Within your template, you can create your own functions. These functions are available for use in your template. Typically, you define complicated expressions that you don't want to repeat throughout your template. You create the user-defined functions from expressions and functions that are supported in templates.

When defining a user function, there are some restrictions:

- The function can't access variables.
- The function can only use parameters that are defined in the function. When you use the parameters function within a user-defined function, you're restricted to the parameters for that function.
- The function can't call other user-defined functions.
- The function can't use the reference function.
- Parameters for the function can't have default values.

```
"functions": [
  {
    "namespace": "<namespace-for-functions>",
    "members": {
      "<function-name>": {
        "parameters": [
          {
            "name": "<parameter-name>",
            "type": "<type-of-parameter-value>"
          }
        ],
        "output": {
          "type": "<type-of-output-value>",
          "value": "<function-return-value>"
        }
      }
    }
  }
],
```

Element name|	Required|	Description
|-|-|-|
namespace|	Yes|	Namespace for the custom functions. Use to avoid naming conflicts with template functions.
function-name	|Yes|	Name of the custom function. When calling the function, combine the function name with the namespace. For example, to call a function named uniqueName in the namespace contoso, use "[contoso.uniqueName()]".
parameter-name	|No|Name of the parameter to be used within the custom function.
parameter-value	|No|	Type of the parameter value. The allowed types and values are string, securestring, int, bool, object, secureObject, and array.
output-type	|Yes	|Type of the output value. Output values support the same types as function input parameters.
output-value|	Yes|	Template language expression that is evaluated and returned from the function.

### Resources
In the resources section, you define the resources that are deployed or updated. You are limited to 800 resources in a template.

You define resources with the following structure:

```
"resources": [
  {
      "condition": "<true-to-deploy-this-resource>",
      "type": "<resource-provider-namespace/resource-type-name>",
      "apiVersion": "<api-version-of-resource>",
      "name": "<name-of-the-resource>",
      "comments": "<your-reference-notes>",
      "location": "<location-of-resource>",
      "dependsOn": [
          "<array-of-related-resource-names>"
      ],
      "tags": {
          "<tag-name1>": "<tag-value1>",
          "<tag-name2>": "<tag-value2>"
      },
      "identity": {
        "type": "<system-assigned-or-user-assigned-identity>",
        "userAssignedIdentities": {
          "<resource-id-of-identity>": {}
        }
      },
      "sku": {
          "name": "<sku-name>",
          "tier": "<sku-tier>",
          "size": "<sku-size>",
          "family": "<sku-family>",
          "capacity": <sku-capacity>
      },
      "kind": "<type-of-resource>",
      "scope": "<target-scope-for-extension-resources>",
      "copy": {
          "name": "<name-of-copy-loop>",
          "count": <number-of-iterations>,
          "mode": "<serial-or-parallel>",
          "batchSize": <number-to-deploy-serially>
      },
      "plan": {
          "name": "<plan-name>",
          "promotionCode": "<plan-promotion-code>",
          "publisher": "<plan-publisher>",
          "product": "<plan-product>",
          "version": "<plan-version>"
      },
      "properties": {
          "<settings-for-the-resource>",
          "copy": [
              {
                  "name": ,
                  "count": ,
                  "input": {}
              }
          ]
      },
      "resources": [
          "<array-of-child-resources>"
      ]
  }
]
```

Element name	|Required	|Description
|-|-|-|
condition	|No|	Boolean value that indicates whether the resource will be provisioned during this deployment. When true, the resource is created during deployment. When false, the resource is skipped for this deployment. See condition.
type|Yes|	Type of the resource. This value is a combination of the namespace of the resource provider and the resource type (such as Microsoft.Storage/storageAccounts). To determine available values, see template reference. For a child resource, the format of the type depends on whether it's nested within the parent resource or defined outside of the parent resource. See Set name and type for child resources.
apiVersion|	Yes|	Version of the REST API to use for creating the resource. When creating a new template, set this value to the latest version of the resource you're deploying. As long as the template works as needed, keep using the same API version. By continuing to use the same API version, you minimize the risk of a new API version changing how your template works. Consider updating the API version only when you want to use a new feature that is introduced in a later version. To determine available values, see template reference.
name	|Yes	|Name of the resource. The name must follow URI component restrictions defined in RFC3986. Azure services that expose the resource name to outside parties validate the name to make sure it isn't an attempt to spoof another identity. For a child resource, the format of the name depends on whether it's nested within the parent resource or defined outside of the parent resource. See Set name and type for child resources.
comments|	No	|Your notes for documenting the resources in your template. For more information, see Comments in templates.
location|	Varies|	Supported geo-locations of the provided resource. You can select any of the available locations, but typically it makes sense to pick one that is close to your users. Usually, it also makes sense to place resources that interact with each other in the same region. Most resource types require a location, but some types (such as a role assignment) don't require a location. See Set resource location.
dependsOn|	No|	Resources that must be deployed before this resource is deployed. Resource Manager evaluates the dependencies between resources and deploys them in the correct order. When resources aren't dependent on each other, they're deployed in parallel. The value can be a comma-separated list of a resource names or resource unique identifiers. Only list resources that are deployed in this template. Resources that aren't defined in this template must already exist. Avoid adding unnecessary dependencies as they can slow your deployment and create circular dependencies. For guidance on setting dependencies, see Define the order for deploying resources in ARM templates.
tags	|No|	Tags that are associated with the resource. Apply tags to logically organize resources across your subscription.
identity	|No|	Some resources support managed identities for Azure resources. Those resources have an identity object at the root level of the resource declaration. You can set whether the identity is user-assigned or system-assigned. For user-assigned identities, provide a list of resource IDs for the identities. Set the key to the resource ID and the value to an empty object. For more information, see Configure managed identities for Azure resources on an Azure VM using templates.
sku	|No	|Some resources allow values that define the SKU to deploy. For example, you can specify the type of redundancy for a storage account.
kind|No	|Some resources allow a value that defines the type of resource you deploy. For example, you can specify the type of Azure Cosmos DB instance to create.
scope|	No|	The scope property is only available for extension resource types. Use it when specifying a scope that is different than the deployment scope. See Setting scope for extension resources in ARM templates.
copy|	No|	If more than one instance is needed, the number of resources to create. The default mode is parallel. Specify serial mode when you don't want all or the resources to deploy at the same time. For more information, see Create several instances of resources in Azure Resource Manager.
plan	|No|	Some resources allow values that define the plan to deploy. For example, you can specify the marketplace image for a virtual machine.
properties|	No|	Resource-specific configuration settings. The values for the properties are the same as the values you provide in the request body for the REST API operation (PUT method) to create the resource. You can also specify a copy array to create several instances of a property. To determine available values, see template reference.
resources	|No|	Child resources that depend on the resource being defined. Only provide resource types that are permitted by the schema of the parent resource. Dependency on the parent resource isn't implied. You must explicitly define that dependency. See Set name and type for child resources.

### Outputs
In the outputs section, you specify values that are returned from deployment. Typically, you return values from resources that were deployed. You are limited to 64 outputs in a template.

The following example shows the structure of an output definition:

```
"outputs": {
  "<output-name>": {
    "condition": "<boolean-value-whether-to-output-value>",
    "type": "<type-of-output-value>",
    "value": "<output-value-expression>",
    "copy": {
      "count": <number-of-iterations>,
      "input": <values-for-the-variable>
    }
  }
}
```

Element name|	Required	|Description
|-|-|-|
output-name|	Yes|	Name of the output value. Must be a valid JavaScript identifier.
condition	|No|	Boolean value that indicates whether this output value is returned. When true, the value is included in the output for the deployment. When false, the output value is skipped for this deployment. When not specified, the default value is true.
type|Yes|	Type of the output value. Output values support the same types as template input parameters. If you specify securestring for the output type, the value isn't displayed in the deployment history and can't be retrieved from another template. To use a secret value in more than one template, store the secret in a Key Vault and reference the secret in the parameter file. For more information, see Use Azure Key Vault to pass secure parameter value during deployment.
value|	No|	Template language expression that is evaluated and returned as output value. Specify either value or copy.
copy|No|	Used to return more than one value for an output. Specify value or copy. For more information, see Output iteration in ARM templates.

```
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    "storagePrefix": {
      "type": "string",
      "minLength": 3,
      "maxLength": 11
    },
    "storageSKU": {
      "type": "string",
      "defaultValue": "Standard_LRS",
      "allowedValues": [
        "Standard_LRS",
        "Standard_GRS",
        "Standard_RAGRS",
        "Standard_ZRS",
        "Premium_LRS",
        "Premium_ZRS",
        "Standard_GZRS",
        "Standard_RAGZRS"
      ]
    },
    "location": {
      "type": "string",
      "defaultValue": "[resourceGroup().location]"
    }
  },
  "variables": {
    "uniqueStorageName": "[concat(parameters('storagePrefix'), uniqueString(resourceGroup().id))]"
  },
  "resources": [
    {
      "type": "Microsoft.Storage/storageAccounts",
      "apiVersion": "2021-09-01",
      "name": "[variables('uniqueStorageName')]",
      "location": "[parameters('location')]",
      "sku": {
        "name": "[parameters('storageSKU')]"
      },
      "kind": "StorageV2",
      "properties": {
        "supportsHttpsTrafficOnly": true
      }
    }
  ],
  "outputs": {
    "storageEndpoint": {
      "type": "object",
      "value": "[reference(variables('uniqueStorageName')).primaryEndpoints]"
    }
  }
}
```

### Deploy the template



**POWERSHELL**
```
New-AzResourceGroup -Name arm-vscode -Location eastus

New-AzResourceGroupDeployment -ResourceGroupName arm-vscode -TemplateFile ./azuredeploy.json -TemplateParameterFile ./azuredeploy.parameters.json
````
**CLI**

```
az group create --name arm-vscode --location eastus

az deployment group create --resource-group arm-vscode --template-file azuredeploy.json --parameters azuredeploy.parameters.json
```

### Clean up resources

When the Azure resources are no longer needed, use the Azure CLI or Azure PowerShell module to delete the quickstart resource group.

**CLI**
```
az group delete --name arm-vscode
```

**POWERSHELL**
```
Remove-AzResourceGroup -Name arm-vscode
```

## Deployment modes ARM templates

When deploying your resources, you specify that the deployment is either an incremental update or a complete update. The difference between these two modes is how Resource Manager handles existing resources in the resource group that aren't in the template.

The default mode is incremental.

### Complete mode

In complete mode, Resource Manager deletes resources that exist in the resource group but aren't specified in the template.

The latest versions of Azure PowerShell and Azure CLI delete the resource.

Be careful using complete mode with copy loops. Any resources that aren't specified in the template after resolving the copy loop are deleted.

 If you use a version earlier than 2019-05-10, the resource isn't deleted.

 If the resource group is locked, complete mode doesn't delete the resources.

 https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deployment-complete-mode-deletion

 ### Incremental mode
In incremental mode, Resource Manager leaves unchanged resources that exist in the resource group but aren't specified in the template. Resources in the template are added to the resource group.


### 
What-if commands
Azure PowerShell
To preview changes before deploying a template, use New-AzResourceGroupDeployment or New-AzSubscriptionDeployment. Add the -Whatif switch parameter to the deployment command.