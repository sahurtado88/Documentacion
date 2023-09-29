# Chef

- is declarative language

Push (ansible and saltstack) pull (cheff and puppet)
In the push model an authority, a manager or lead, assigns the tasks to team members (order at restaurant). In the pull model each team member decides which tasks to take on. (buffet)

idempotency: the result of the operation its the same

## Introduction Chef

- Chef is ruby based
- two deployment models
    - Chef-Zero: development
    - Server-Client: production
- Chef server linux only
- Chef client linux and Windows
- Chef is declarative, higly available and increased productivity

## Setup Chef

- Chef server
    - Open source (chef server)
    - On prem enterprise Chef (chef server with support and premium features)
    - Multi-tenant Cloud Soluction (Hosted Chef server)

![](./Images/chefserverprerequisites.png)

## Chef workstation

Chef development kit

## Chef Arquitecture

![](https://docs.chef.io/images/start_chef.svg)


Chef Workstation allows you to author cookbooks and administer your infrastructure. Chef Workstation runs on the computer you use everyday, whether it is Linux, macOS, or Windows.

Chef Workstation ships with Cookstyle, ChefSpec, Chef InSpec, and Test Kitchen testing tools. With them, you can make sure your Chef Infra code does what you intended before you deploy it to environments used by others, such as staging or production.

Once you’re done developing and testing code on your local workstation, you can upload it to the Chef Infra Server. The Chef Infra Server acts as a hub for configuration data. It stores cookbooks, the policies that are applied to the systems in your infrastructure and metadata that describes each system. The knife command lets you communicate with the Chef Infra Server from your workstation. For example, you use it to upload your cookbooks.

Chef Infra is constructed so that most of the computational effort occurs on the nodes rather than on the Chef Infra Server. A node represents any system you manage and is typically a virtual machine, container instance, or physical server. Basically, it is any compute resource in your infrastructure that’s managed by Chef Infra. All nodes have Chef Infra Client installed on them, and Chef Infra Client is available for multiple platforms including Linux, macOS, Windows, AIX, and Solaris.

Periodically, Chef Infra Client contacts the Chef Infra Server to retrieve the latest cookbooks. If (and only if) the current state of the node does not conform to what the cookbook says it should be, Chef Infra Client executes the cookbook instructions. This iterative process ensures that the network as a whole converges to the state envisioned by business policy.

## Chef terminology

### Resources

https://docs.chef.io/resource/

A resource is a statement of configuration policy that:

- Describes the desired state for a configuration item
- Declares the steps needed to bring that item to the desired state
- Specifies a resource type—such as package, template, or service
- Lists additional details (also known as resource properties), as necessary
- Are grouped into recipes, which describe working configurations

**Resource Syntax**
A resource is a Ruby block with four components: a type, a name, one (or more) properties (with values), and one (or more) actions. The syntax for a resource is like this:

```
type 'name' do
  attribute 'value'
  action :type_of_action
end
```
Every resource has its own set of actions and properties. Most properties have default values. Some properties are available to all resources, for example those used to send notifications to other resources and guards that help ensure that some resources are idempotent.

For example, a resource that is used to install a tar.gz package for version 1.16.1 may look something like this:

```
package 'tar' do
  version '1.16.1'
  action :install
end
```
https://docs.chef.io/resources/

**CHEF DSL**

```
<Resource Type> '<NAME>' do
    <Attribute> '<Value>'
    <Attribute> '<Value>'
    <Attribute> '<Value>'
    <Action> :<Value>
end
```

### Recipe

A recipe is the most fundamental configuration element within the organization. A recipe:

- Is authored using Ruby, which is a programming language designed to read and behave in a predictable manner (file with .rb extension)
- Is mostly a collection of resources, defined using patterns (resource names, attribute-value pairs, and actions); helper code is added around this using Ruby, when needed
- Must define everything that is required to configure part of a system
- Must be stored in a cookbook
- May be included in another recipe
- May use the results of a search query and read the contents of a data bag (including an encrypted data bag)
- May have a dependency on one (or more) recipes
- Must be added to a run-list before it can be used by Chef Infra Client
- Is always executed in the same order as listed in a run-list

the code creation of a recipe has the follow steps:

- Create
- Check: to validate the write code you can use this command
```
coockstyle <Recipe File>
```
- test (local mode is use when you are on chef-zero )
```
chef-client --local-mode --why-run <Recipe File>
```
- Run
```
chef-client --local-mode <Recipe File>
```

### Cookbook

A cookbook is the fundamental unit of configuration and policy distribution in Chef Infra.

A cookbook defines a scenario and contains everything that is required to support that scenario:

- Recipes that specify which Chef Infra built-in resources to use, as well as the order in which they are to be applied
- Attribute values, which allow environment-based configurations such as dev or production.
- Custom Resources for extending Chef Infra beyond the built-in resources.
- Files and Templates for distributing information to systems.
- Custom Ohai Plugins for extending system configuration collection beyond the Ohai defaults.
- The metadata.rb file, which describes the cookbook itself and any dependencies it may have.

A cookbook is comprised of recipes and other optional components as files or directories.

Directory strructures of a cookbook

![](./Images/cookbook.png)

|Component	|File/Directory Name|	Description|
|-|-|-|
|Recipes	|recipes/ |	Store all the recipes files,May be included in another recipe, inside each recipe folder you find a file with the name default.rb  |
Attributes|	attributes/|	An attribute can be defined in a cookbook (or a recipe) and then used to override the default settings on a node. When a cookbook is loaded during a Chef Infra Client run, these attributes are compared to the attributes that are already present on the node. Attributes that are defined in attribute files are first loaded according to cookbook order. For each cookbook, attributes in the default.rb file are loaded first, and then additional attribute files (if present) are loaded in lexical sort order. When the cookbook attributes take precedence over the default attributes, Chef Infra Client applies those new settings and values during a Chef Infra Client run on the node.|
Files|	files/|	A file distribution is a specific type of resource that tells a cookbook how to distribute files, including by node, by platform, or by file version.|
Libraries|	libraries/|	A library allows the use of arbitrary Ruby code in a cookbook, either as a way to extend the Chef Infra Client language or to implement a new class.
Custom Resources|	resources/|	A custom resource is an abstract approach for defining a set of actions and (for each action) a set of properties and validation parameters.|
Templates|	templates/	|A template is a file written in markup language that uses Ruby statements to solve complex configuration scenarios.
Ohai Plugins|	ohai/|	Custom Ohai plugins can be written to load additional information about your nodes to be used in recipes. This requires Chef Infra Server 12.18.14 or later.
Metadata	|metadata.rb	|This file contains information about the cookbook such as the cookbook name, description, and version.

the default path to the cookboks directory
can be found in 

cat /home/centos/chef-repo/.chef/knife.rb

**Cookbook Creation**

you can create the skeleton structure of a cookbock with the next commnad

```
chef generate cookbook <NAME of the Cookbook>
```

### RunList

A run-list defines all of the information necessary for Chef to configure a node into the desired state. A run-list is:

- An ordered list of roles and/or recipes that are run in the exact order defined in the run-list; if a recipe appears more than once in the run-list, Chef Infra Client will not run it twice
- Always specific to the node on which it runs; nodes may have a run-list that is identical to the run-list used by other nodes
- Stored as part of the node object on the Chef server
- Maintained using knife and then uploaded from the workstation to the Chef Infra Server, or maintained using Chef Automate

A run-list must be in one of the following formats: fully qualified, cookbook, or default. Both roles and recipes must be in quotes, for example:

```
"role[NAME]"
```
or

```
"recipe[COOKBOOK::RECIPE]"
```
Use a comma to separate roles and recipes when adding more than one item the run-list:

```
"recipe[COOKBOOK::RECIPE],recipe [COOKBOOK::RECIPE2]"
```

Use an empty run-list to determine if a failed Chef Infra Client run has anything to do with the recipes that are defined within that run-list. This is a quick way to discover if the underlying cause of a Chef Infra Client run failure is a configuration issue. If a failure persists even if the run-list is empty, check the following:

- Configuration settings in the config.rb file
- Permissions for the user to both the Chef Infra Server and to the node on which a Chef Infra Client run is to take place

```
chef-client --runlist "recipe[cookbook-Name::Recipe-Name]"
```
chef choose de default recipe
```
chef-client --runlist "recipe[cookbook-Name]"
```

## Include Recipe

A recipe can include one (or more) recipes from cookbooks by using the include_recipe method. When a recipe is included, the resources found in that recipe will be inserted (in the same exact order) at the point where the include_recipe keyword is located.

The syntax for including a recipe is like this:

```
include_recipe 'recipe'
```
For example:

```
include_recipe 'apache2::mod_ssl'
```
Multiple recipes can be included within a recipe. For example:

```
include_recipe 'cookbook::setup'
include_recipe 'cookbook::install'
include_recipe 'cookbook::configure'
```
![](./Images/includerecipe.png)

## Cookbook Dependencies

Quite often, you might want to use features of other cookbooks in your own cookbooks. For example, if you want to make sure that all packages required for compiling software written in C are installed, you might want to include the build-essential cookbook, which does just that. Chef server needs to know about such dependencies in your cookbooks. You declare them in a cookbook's metadata.

![](./Images/dependenciescookbook.png
)

## Server-Client Model

![](./Images/server-client-model.png)

1. Create
2. Upload Code:
  ![](./Images/knife.png)
  ```
  knife cookbook upload
  ```

3. Create RunList
```
knife node run_list add NODE_NAME RUN_LIST_ITEM
```
```
knife node run_list add node1 'recipe[WEB]'
```

4. Apply code

```
knife ssh 'name:*' 'chef-client'
```

## Others commands
![](./Images/knifecommands.png)
![](./Images/commnads.png)

## Workstation conectivity


you need to downloades de chef-starter.zip

https://docs.chef.io/workstation/install_workstation/

https://docs.chef.io/workstation/getting_started/

Chef Infra Client (executable)
Chef Infra Client is an agent that runs locally on every node that is under management by Chef Infra Server. When Chef Infra Client runs, it performs all of the steps required for bringing a node into the expected state, including:

Registering and authenticating the node with Chef Infra Server
Synchronizing cookbooks from the Chef Infra Server to the node
Compiling the resource collection by loading each of the required cookbooks, including recipes, attributes, and all other dependencies
Taking the appropriate and required actions to configure the node based on recipes and attributes
Reporting summary information on the run to Chef Automate

https://docs.chef.io/install_bootstrap/

## Other topics

- OHAI

Ohai is a tool for collecting system configuration data, which it then provides to Chef Infra Client to use in cookbooks. Chef Infra Client runs Ohai at the start of every Chef Infra run to determine system state. The attributes that Ohai collects are called automatic attributes. Chef Infra Client uses these attributes to ensure that nodes are in the desired state after each configuration run.

The types of attributes Ohai collects include but are not limited to:

- Operating System
- Network
- Memory
- Disk
- CPU
- Kernel
- Host names
- Fully qualified domain names
- Virtualization
- Cloud provider metadata

- Kitchen testing

Use Test Kitchen to automatically test cookbooks across any combination of platforms and test suites:

- Test suites are defined in a kitchen.yml file. See the configuration documentation for options and syntax information.
- Supports cookbook testing across many cloud providers and virtualization technologies.
- Uses a comprehensive set of operating system base images from Chef’s Bento project.

The key concepts in Test Kitchen are:

- A platform is the operating system or target environment on which a cookbook is to be tested
- A suite is the Chef Infra Client configuration, a Policyfile or run-list, and (optionally) node attributes
- An instance is the combination of a specific platform and a specific suite, with each instance being assigned an auto-generated name
- A driver is the lifecycle that implements the actions associated with a specific instance—create the instance, do what is needed to converge on that instance (such as installing Chef Infra Client, uploading cookbooks, starting a Chef Infra Client run, and so on), setup anything else needed for testing, verify one (or more) suites post-converge, and then destroy that instance
- A provisioner is the component on which the Chef Infra Client code will be run, either using chef-zero or chef-solo via the chef_zero and chef_solo provisioners, respectively

- Roles 
A role is a way to define certain patterns and processes that exist across nodes in an organization as belonging to a single job function. Each role consists of zero (or more) attributes and a run-list. Each node can have zero (or more) roles assigned to it. When a role is run against a node, the configuration details of that node are compared against the attributes of the role, and then the contents of that role’s run-list are applied to the node’s configuration details. When a Chef Infra Client runs, it merges its own attributes and run-lists with those contained within each assigned role.

An attribute can be defined in a role and then used to override the default settings on a node. When a role is applied during a Chef Infra Client run, these attributes are compared to the attributes that are already present on the node. When the role attributes take precedence over the default attributes, Chef Infra Client applies those new settings and values during a Chef Infra Client run.

A role attribute can only be set to be a default attribute or an override attribute. A role attribute cannot be set to be a normal attribute. Use the default_attribute and override_attribute methods in the .rb attributes file or the default_attributes and override_attributes hashes in a JSON data file.

- Environments 
An environment is a way to map an organization’s real-life workflow to what can be configured and managed when using Chef Infra. This mapping is accomplished by setting attributes and pinning cookbooks at the environment level. With environments, you can change cookbook configurations depending on the system’s designation. For example, by designating different staging and production environments, you can then define the correct URL of a database server for each environment. Environments also allow organizations to move new cookbook releases from staging to production with confidence by stepping releases through testing environments before entering production.

- Supermarket

Chef Supermarket is the site for community cookbooks. It provides a searchable cookbook repository and a friendly web UI. Cookbooks that are part of the Chef Supermarket are accessible by any Chef user.

There are two ways to use Chef Supermarket:

- The public Chef Supermarket is hosted by Chef Software and is located at Chef Supermarket.
- A private Chef Supermarket may be installed on-premise behind the firewall on the internal network. Cookbook retrieval from a private Chef Supermarket is often faster than from the public Chef Supermarket because of closer proximity and fewer cookbooks to resolve. A private Chef Supermarket can also help formalize internal cookbook release management processes (e.g. “a cookbook is not released until it is published on the private Chef Supermarket”).