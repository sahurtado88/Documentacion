# TERRAFORM

##TERRAFORM COMMAND

Terrafom init descarga provider

terraform init -upgrade actualiza provider 

  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  test          Experimental support for module integration testing
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management
  
  
   init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure  This command is a convenience alias for: terraform apply -destroy
  
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

Sequence	Replacement
$${	Literal ${, without beginning an interpolation sequence.
%%{	Literal %{, without beginning a template directive sequence.

terraform apply -auto-approve  par no responder yes no es recomendado

praa los modulos es necesario hacer el terraform init