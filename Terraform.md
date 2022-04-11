# TERRAFORM

## TERRAFORM COMMAND

| COMMAND | Description |
| ----------- | ----------- |
|Terrafom init |descarga provider|
|terraform init -upgrade |actualiza provider |
  |console     | Try Terraform expressions at an interactive command prompt|
  |fmt |          Reformat your configuration in the standard style|
  |force-unlock | Release a stuck lock on the current workspace|
  |get           |Install or upgrade remote Terraform modules
  |graph         |Generate a Graphviz graph of the steps in an operation|
  |import    |    Associate existing infrastructure with a Terraform resource|
  |login        | Obtain and save credentials for a remote host|
  |logout       | Remove locally-stored credentials for a remote host|
  |output       | Show output values from your root module|
  |providers    | Show the providers required for this configuration|
  |refresh      | Update the state to match remote systems|
  |show         | Show the current state or a saved plan|
  |state        | Advanced state management|
  |taint        | Mark a resource instance as not fully functional|
  |test         | Experimental support for module integration testing|
  |untaint      | Remove the 'tainted' state from a resource instance|
  |version      |Show the current Terraform version|
  |workspace    | Workspace management|
  |init         | Prepare your working directory for other commands|
  |validate      |Check whether the configuration is valid|
  |plan          |Show changes required by the current configuration|
  |apply         |Create or update infrastructure|
  |destroy       |Destroy previously-created infrastructure  This command is a convenience alias for: terraform apply -destroy |
  
  PLAN -out=path           Write a plan file to the given path. This can be used as
									input to the "apply" command.
									

terraform plan -var instance_type="t2.nano"  cuando se define una mvariable en  el main.tf

## Terraform modules

A local value assigns a name to an expression, so you can use it multiple times within a module without repeating it.

If you're familiar with traditional programming languages, it can be useful to compare Terraform modules to function definitions:

    Input variables are like function arguments.
    Output values are like function return values.
    Local values are like a function's temporary local variables.

## Manejo string 
	
manejo string terraform https://www.terraform.io/language/expressions/strings


terraform apply -auto-approve  par no responder yes no es recomendado

para los modulos es necesario hacer el terraform init

## Key concepts


### Resource
Resource is aws_vpc, aws_db_instance, etc. A resource belongs to a provider, accepts arguments, outputs attributes, and has lifecycles. A resource can be created, retrieved, updated, and deleted.
### Resource module
Resource module is a collection of connected resources which together perform the common action (for eg, 
 creates VPC, subnets, NAT gateway, etc). It depends on provider configuration, which can be defined in it, or in higher-level structures (eg, in infrastructure module).
### Infrastructure module
An infrastructure module is a collection of resource modules, which can be logically not connected, but in the current situation/project/setup serves the same purpose. It defines the configuration for providers, which is passed to the downstream resource modules and to resources. It is normally limited to work in one entity per logical separator (eg, AWS Region, Google Project).
For example,  module uses resource modules like  and  to manage the infrastructure required for running  on 
.
Another example is  module where multiple modules by 
 are being used together to manage the infrastructure as well as using Docker resources to build, push, and deploy Docker images. All in one set.

### Composition
Composition is a collection of infrastructure modules, which can span across several logically separated areas (eg., AWS Regions, several AWS accounts). Composition is used to describe the complete infrastructure required for the whole organization or project.
A composition consists of infrastructure modules, which consist of resources modules, which implement individual resources.
Simple infrastructure composition

### Data source
Data source performs a read-only operation and is dependant on provider configuration, it is used in a resource module and an infrastructure module.
Data source terraform_remote_state acts as a glue for higher-level modules and compositions.
The  data source allows an external program to act as a data source, exposing arbitrary data for use elsewhere in the Terraform configuration. Here is an example from the 
 where the filename is computed by calling an external Python script.
The 
 data source makes an HTTP GET request to the given URL and exports information about the response which is often useful to get information from endpoints where a native Terraform provider does not exist.
### Remote state
Infrastructure modules and compositions should persist their 
 in a remote location where it can be retrieved by others in a controllable way (e.g. specify ACL, versioning, logging).

### Provider, provisioner, etc

Providers, provisioners, and a few other terms are described very well on the official documentation and there is no point to repeat it here. To my opinion, they have little to do with writing good Terraform modules.

### Why so difficult?
While individual resources are like atoms in the infrastructure, resource modules are molecules. A module is the smallest versioned and shareable unit. It has an exact list of arguments, implement basic logic for such a unit to do the required function. Eg. 
 module creates aws_security_group and aws_security_group_rule resources based on input. This resource module by itself can be used together with other modules to create the infrastructure module.
Access to data across mo
lecules (resource modules and infrastructure modules) is performed using the modules' outputs and data sources.
Access between compositions is often performed using remote state data sources. There are 
.

## Code structure


Putting all code in main.tf is a good idea when you are getting started or writing an example code. In all other cases you will be better having several files split logically like this:

 - main.tf - call modules, locals, and data sources to create all resources
- variables.tf - contains declarations of variables used in main.tf
- outputs.tf - contains outputs from the resources created in main.tf
- versions.tf - contains version requirements for Terraform and providers



