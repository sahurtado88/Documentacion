# AZURE

Azure is a cloud computing platform with an ever-expanding set of services to help you build solutions to meet your business goals. Azure services range from simple web services for hosting your business presence in the cloud to running fully virtualized computers for you to run your custom software solutions. Azure provides a wealth of cloud-based services like remote storage, database hosting, and centralized account management. Azure also offers new capabilities like AI and Internet of Things (IoT).
 
 ## Shared Responsability model

 The following diagram highlights how the Shared Responsibility Model informs who is responsible for what, depending on the cloud service type.

 ![](https://learn.microsoft.com/en-us/training/wwl-azure/describe-cloud-compute/media/shared-responsibility-b3829bfe.svg)

 You’ll always be responsible for:

- The information and data stored in the cloud
- Devices that are allowed to connect to your cloud (cell phones, computers, and so on)
- The accounts and identities of the people, services, and devices within your organization

The cloud provider is always responsible for:

- The physical datacenter
- The physical network
- The physical hosts

Your service model will determine responsibility for things like:

- Operating systems
- Network controls
- Applications
- Identity and infrastructure


## Cloud models

The cloud models define the deployment type of cloud resources. The three main cloud models are: private, public, and hybrid

Public cloud|	Private cloud	|Hybrid cloud
|-|-|-|
No capital expenditures to scale up|	Organizations have complete control over resources and security|Provides the most flexibility
Applications can be quickly provisioned and deprovisioned|	Data is not collocated with other organizations’ data	|Organizations determine where to run their applications
Organizations pay only for what they use|	Hardware must be purchased for startup and maintenance|	Organizations control security, compliance, or legal requirements
Organizations don’t have complete control over resources and security	|Organizations are responsible for hardware maintenance and updates	|


## AZURE SERVICES 

### Compute

Compute services are often one of the primary reasons why companies move to the Azure platform. Azure provides a range of options for hosting applications and services. Here are some examples of compute services in Azure.

| Service name  | Service function |
| ----------- | ----------- |
| Azure Virtual Machines | Windows or Linux virtual machines (VMs) hosted in Azure. |
| Azure Virtual Machine Scale Sets  (VM SS)| Scaling for Windows or Linux VMs hosted in Azure. |
| Azure Kubernetes Service (AKS)| Cluster management for VMs that run containerized services.  |
| Azure Service Fabric | Distributed systems platform that runs in Azure or on-premises. |
| Azure Batch  | Managed service for parallel and high-performance computing applications. |
| Azure Container Instances (ACI) | Containerized apps run on Azure without provisioning servers or VMs. |
| Azure Functions | An event-driven, serverless compute service. |


### Networking

Linking compute resources and providing access to applications is the key function of Azure networking. Networking functionality in Azure includes a range of options to connect the outside world to services and features in the global Azure datacenters.

| Service name  | Service function |
| ----------- | ----------- |
| Azure Virtual Network | Connects VMs to incoming virtual private network (VPN) connections. |
| Azure Load Balancer | Balances inbound and outbound connections to applications or service endpoints.|
| Azure Application Gateway | Optimizes app server farm delivery while increasing application security. |
| Azure VPN Gateway | Accesses Azure Virtual Networks through high-performance VPN gateways. |
| Azure DNS | Provides ultra-fast DNS responses and ultra-high domain availability. |
| Azure Content Delivery Network | Delivers high-bandwidth content to customers globally. |
| Azure DDoS Protection | Protects Azure-hosted applications from distributed denial of service (DDOS) attacks. |
| Azure Traffic Manager | Distributes network traffic across Azure regions worldwide. |
| Azure ExpressRoute | Connects to Azure over high-bandwidth dedicated secure connections. |
| Azure Network Watcher | Monitors and diagnoses network issues by using scenario-based analysis. |
| Azure Firewall | Implements high-security, high-availability firewall with unlimited scalability. |
| Azure Virtual WAN | Creates a unified wide area network (WAN) that connects local and remote sites. |


### Storage

Azure provides four main types of storage services.

| Service name  | Service function |
| ----------- | ----------- |
| Azure Blob storage | Storage service for very large objects, such as video files or bitmaps. |
Azure File storage |  File shares that can be accessed and managed like a file server.|
| Azure Queue storage | A data store for queuing and reliably delivering messages between applications. |
| Azure Table storage | Table storage is a service that stores non-relational structured data (also known as structured NoSQL data) in the cloud, providing a key/attribute store with a schemaless design. |


These services all share several common characteristics:

**Durable** and highly available with redundancy and replication.
**Secure** through automatic encryption and role-based access control.
**Scalable** with virtually unlimited storage.
**Managed**, handling maintenance and any critical problems for you.
**Accessible** from anywhere in the world over HTTP or HTTPS.

### Mobile

With Azure, developers can create mobile back-end services for iOS, Android, and Windows apps quickly and easily. Features that used to take time and increase project risks, such as adding corporate sign-in and then connecting to on-premises resources such as SAP, Oracle, SQL Server, and SharePoint, are now simple to include.

Other features of this service include:

- Offline data synchronization.
- Connectivity to on-premises data.
- Broadcasting push notifications.
- Autoscaling to match business needs.


### Databases
Azure provides multiple database services to store a wide variety of data types and volumes. And with global connectivity, this data is available to users instantly.

| Service name  | Service function |
| ----------- | ----------- |
| Azure Cosmos DB| Globally distributed database that supports NoSQL options. |
| Azure SQL Database | Fully managed relational database with auto-scale, integral intelligence, and robust security. |
| Azure Database for MySQL | Fully managed and scalable MySQL relational database with high availability and security. |
| Azure Database for PostgreSQL | Fully managed and scalable PostgreSQL relational database with high availability and security. |
| SQL Server on Azure Virtual Machines | Service that hosts enterprise SQL Server apps in the cloud. |
| Azure Synapse Analytics | Fully managed data warehouse with integral security at every level of scale at no extra cost. |
| Azure Database Migration Service | Service that migrates databases to the cloud with no application code changes. |
| Azure Cache for Redis | Fully managed service caches frequently used and static data to reduce data and application latency. |
| Azure Database for MariaDB | Fully managed and scalable MariaDB relational database with high availability and security. |

Fully managed and scalable MariaDB relational database with high availability and security.

### Web

Having a great web experience is critical in today's business world. Azure includes first-class support to build and host web apps and HTTP-based web services. The following Azure services are focused on web hosting.

| Service name  | Service function |
| ----------- | ----------- |
| Azure App Service | Quickly create powerful cloud web-based apps. (Web apps,API apps,WebJobs,Mobile apps) |
| Azure Notification Hubs | Send push notifications to any platform from any back end. |
| Azure API Management | Publish APIs to developers, partners, and employees securely and at scale. |
| Azure Cognitive Search | Deploy this fully managed search as a service. |
| Web Apps feature of Azure App Service | Create and deploy mission-critical web apps at scale. |
| Azure SignalR Service | Add real-time web functionalities easily. |

### IoT

People are able to access more information than ever before. Personal digital assistants led to smartphones, and now there are smart watches, smart thermostats, and even smart refrigerators. Personal computers used to be the norm. Now the internet allows any item that's online-capable to access valuable information. This ability for devices to garner and then relay information for data analysis is referred to as IoT.

Many services can assist and drive end-to-end solutions for IoT on Azure.

| Service name  | Service function |
| ----------- | ----------- |
| IoT Central | Fully managed global IoT software as a service (SaaS) solution that makes it easy to connect, monitor, and manage IoT assets at scale. |
| Azure IoT Hub | Messaging hub that provides secure communications between and monitoring of millions of IoT devices. |
| IoT Edge | Fully managed service that allows data analysis models to be pushed directly onto IoT devices, which allows them to react quickly to state changes without needing to consult cloud-based AI models. |

### Big data 

Data comes in all formats and sizes. When we talk about big data, we're referring to large volumes of data. Data from weather systems, communications systems, genomic research, imaging platforms, and many other scenarios generate hundreds of gigabytes of data. This amount of data makes it hard to analyze and make decisions. It's often so large that traditional forms of processing and analysis are no longer appropriate.

Open-source cluster technologies have been developed to deal with these large data sets. Azure supports a broad range of technologies and services to provide big data and analytic solutions.

Service name

Description

| Service name | Description |
| ----------- | ----------- |
| Azure Synapse Analytics | Run analytics at a massive scale by using a cloud-based enterprise data warehouse that takes advantage of massively parallel processing to run complex queries quickly across petabytes of data. |
| Azure HDInsight | Process massive amounts of data with managed clusters of Hadoop clusters in the cloud. |
| Azure Databricks | Integrate this collaborative Apache Spark-based analytics service with other big data services in Azure. |

### AI

AI, in the context of cloud computing, is based around a broad range of services, the core of which is machine learning. Machine learning is a data science technique that allows computers to use existing data to forecast future behaviors, outcomes, and trends. Using machine learning, computers learn without being explicitly programmed.

Forecasts or predictions from machine learning can make apps and devices smarter. For example, when you shop online, machine learning helps recommend other products you might like based on what you've purchased. Or when your credit card is swiped, machine learning compares the transaction to a database of transactions and helps detect fraud. And when your robot vacuum cleaner vacuums a room, machine learning helps it decide whether the job is done.

| Service name | Description |
| ----------- | ----------- |
| Azure Machine Learning Service | Cloud-based environment you can use to develop, train, test, deploy, manage, and track machine learning models. It can auto-generate a model and auto-tune it for you. It will let you start training on your local machine, and then scale out to the cloud. |
| Azure ML Studio | Collaborative visual workspace where you can build, test, and deploy machine learning solutions by using prebuilt machine learning algorithms and data-handling modules. |

A closely related set of products are the cognitive services. You can use these prebuilt APIs in your applications to solve complex problems.

| Service name | Description |
| ----------- | ----------- |
| Vision | Use image-processing algorithms to smartly identify, caption, index, and moderate your pictures and videos. |
| Speech | Convert spoken audio into text, use voice for verification, or add speaker recognition to your app. |
|Knowledge mapping  | Map complex information and data to solve tasks such as intelligent recommendations and semantic search. |
| Bing Search | Add Bing Search APIs to your apps and harness the ability to comb billions of webpages, images, videos, and news with a single API call.|
| Natural Language processing | Allow your apps to process natural language with prebuilt scripts, evaluate sentiment, and learn how to recognize what users want. |


### DevOps

DevOps brings together people, processes, and technology by automating software delivery to provide continuous value to your users. With Azure DevOps, you can create build and release pipelines that provide continuous integration, delivery, and deployment for your applications. You can integrate repositories and application tests, perform application monitoring, and work with build artifacts. You can also work with and backlog items for tracking, automate infrastructure deployment, and integrate a range of third-party tools and services such as Jenkins and Chef. All of these functions and many more are closely integrated with Azure to allow for consistent, repeatable deployments for your applications to provide streamlined build and release processes.

| Service name | Description |
| ----------- | ----------- |
| Azure DevOps | Use development collaboration tools such as high-performance pipelines, free private Git repositories, configurable Kanban boards, and extensive automated and cloud-based load testing. Formerly known as Visual Studio Team Services. |
| Azure DevTest Labs | Quickly create on-demand Windows and Linux environments to test or demo applications directly from deployment pipelines. |

## Get started with Azure accounts

When you're working with your own applications and business needs, you need to create an Azure account, and a subscription will be created for you. After you've created an Azure account, you're free to create additional subscriptions. For example, your company might use a single Azure account for your business and separate subscriptions for development, marketing, and sales departments. After you've created an Azure subscription, you can start creating Azure resources within each subscription.


![alt text](https://docs.microsoft.com/en-us/learn/azure-fundamentals/intro-to-azure-fundamentals/media/scope-levels-12669ee1.png)

## Cloud model comparison
- **Public cloud**
No capital expenditures to scale up.
Applications can be quickly provisioned and deprovisioned.
Organizations pay only for what they use.
- **Private cloud**
Hardware must be purchased for start-up and maintenance.
Organizations have complete control over resources and security.
Organizations are responsible for hardware maintenance and updates.
- **Hybrid cloud**
Provides the most flexibility.
Organizations determine where to run their applications.
Organizations control security, compliance, or legal requirements.

## What are some cloud computing advantages?
There are several advantages that a cloud environment has over a physical environment that Tailwind Traders can use following its migration to Azure.

**High availability**: Depending on the service-level agreement (SLA) that you choose, your cloud-based apps can provide a continuous user experience with no apparent downtime, even when things go wrong.

**Scalability**: Scalability refers to the ability to adjust resources to meet demand. If you suddenly experience peak traffic and your systems are overwhelmed, the ability to scale means you can add more resources to better handle the increased demand.
 Apps in the cloud can scale vertically and horizontally:

 - Scale vertically to increase compute capacity by adding RAM or CPUs to a virtual machine.
 - Scaling horizontally increases compute capacity by adding instances of resources, such as adding VMs to the configuration.
Elasticity: You can configure cloud-based apps to take advantage of autoscaling, so your apps always have the resources they need.

Agility: Deploy and configure cloud-based resources quickly as your app requirements change.

Geo-distribution: You can deploy apps and data to regional datacenters around the globe, thereby ensuring that your customers always have the best performance in their region.

Disaster recovery: By taking advantage of cloud-based backup services, data replication, and geo-distribution, you can deploy your apps with the confidence that comes from knowing that your data is safe in the event of disaster.

**Reliability**
Reliability is the ability of a system to recover from failures and continue to function. It's also one of the pillars of the Microsoft Azure Well-Architected Framework.

**Predictability**
Predictability in the cloud lets you move forward with confidence. Predictability can be focused on performance predictability or cost predictability. Both performance and cost predictability are heavily influenced by the Microsoft Azure Well-Architected Framework. Deploy a solution that’s built around this framework and you have a solution that’s cost and performance predictable.


### Capital expenses vs. operating expenses
There are two different types of expenses that you should consider:

- Capital Expenditure (CapEx) is the up-front spending of money on physical infrastructure, and then deducting that up-front expense over time. The up-front cost from CapEx has a value that reduces over time.
- Operational Expenditure (OpEx) is spending money on services or products now, and being billed for them now. You can deduct this expense in the same year you spend it. There is no up-front cost, as you pay for a service or product as you use it.

## Cloud service model comparison


|IaaS|PaaS|SaaS
|-|-|-|
|The most flexible cloud service.|Focus on application development.|Pay-as-you-go pricing model.|
|You configure and manage the hardware for your application.|Platform management is handled by the cloud provider.|Users pay for the software they use on a subscription model.|

The following chart illustrates the various levels of responsibility between a cloud provider and a cloud tenant.

![alt text](https://docs.microsoft.com/en-us/learn/azure-fundamentals/fundamental-azure-concepts/media/shared-responsibility-76efbc1e.png)

## What is serverless computing?
Like PaaS, serverless computing enables developers to build applications faster by eliminating the need for them to manage infrastructure. With serverless applications, the cloud service provider automatically provisions, scales, and manages the infrastructure required to run the code. Serverless architectures are highly scalable and event-driven, only using resources when a specific function or trigger occurs.

## Overview of Azure subscriptions, management groups, and resources

![alt text](https://docs.microsoft.com/en-us/learn/azure-fundamentals/intro-to-azure-fundamentals/media/scope-levels-12669ee1.png)

- **Resources**: Resources are instances of services that you create, like virtual machines, storage, or SQL databases.
- **Resource groups**: Resources are combined into resource groups, which act as a logical container into which Azure resources like web apps, databases, and storage accounts are deployed and managed.
- **Subscriptions**: A subscription groups together user accounts and the resources that have been created by those user accounts. For each subscription, there are limits or quotas on the amount of resources that you can create and use. Organizations can use subscriptions to manage costs and the resources that are created by users, teams, or projects.
- **Management groups**: These groups help you manage access, policy, and compliance for multiple subscriptions. All subscriptions in a management group automatically inherit the conditions applied to the management group.



## Azure regions, availability zones, and region pairs

### Azure Region 
A region is a geographical area on the planet that contains at least one but potentially multiple datacenters that are nearby and networked together with a low-latency network.

**Special Azure regions**
Azure has specialized regions that you might want to use when you build out your applications for compliance or legal purposes. A few examples include:

- US DoD Central, US Gov Virginia, US Gov Iowa and more: These regions are physical and logical network-isolated instances of Azure for U.S. government agencies and partners. These datacenters are operated by screened U.S. personnel and include additional compliance certifications.
- China East, China North, and more:These regions are available through a unique partnership between Microsoft and 21Vianet, whereby Microsoft doesn't directly maintain the datacenters.

### availability zone
Availability zones are physically separate datacenters within an Azure region. Each availability zone is made up of one or more datacenters equipped with independent power, cooling, and networking. An availability zone is set up to be an isolation boundary. If one zone goes down, the other continues working. Availability zones are connected through high-speed, private fiber-optic networks.


![alt text](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-architecture-fundamentals/media/availability-zones-5c3c490c.png)

### Azure region pair
Each Azure region is always paired with another region within the same geography (such as US, Europe, or Asia) at least 300 miles away. This approach allows for the replication of resources (such as VM storage) across a geography that helps reduce the likelihood of interruptions because of events such as natural disasters, civil unrest, power outages, or physical network outages that affect both regions at once. If a region in a pair was affected by a natural disaster, for instance, services would automatically failover to the other region in its region pair.

## Azure resource groups
Resource groups are a fundamental element of the Azure platform. A resource group is a logical container for resources deployed on Azure. These resources are anything you create in an Azure subscription like VMs, Azure Application Gateway instances, and Azure Cosmos DB instances. All resources must be in a resource group, and a resource can only be a member of a single resource group. Many resources can be moved between resource groups with some services having specific limitations or requirements to move. Resource groups can't be nested. Before any resource can be provisioned, you need a resource group for it to be placed in.

## Azure Resource Manager
Azure Resource Manager is the deployment and management service for Azure. It provides a management layer that enables you to create, update, and delete resources in your Azure account. You use management features like access control, locks, and tags to secure and organize your resources after deployment.

When a user sends a request from any of the Azure tools, APIs, or SDKs, Resource Manager receives the request. It authenticates and authorizes the request. Resource Manager sends the request to the Azure service, which takes the requested action. Because all requests are handled through the same API, you see consistent results and capabilities in all the different tools.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-architecture-fundamentals/media/consistent-management-layer-feef9259.png)

### The benefits of using Resource Manager

With Resource Manager, you can:

Manage your infrastructure through declarative templates rather than scripts. A Resource Manager template is a JSON file that defines what you want to deploy to Azure.
Deploy, manage, and monitor all the resources for your solution as a group, rather than handling these resources individually.
Redeploy your solution throughout the development life cycle and have confidence your resources are deployed in a consistent state.
Define the dependencies between resources so they're deployed in the correct order.
Apply access control to all services because RBAC is natively integrated into the management platform.
Apply tags to resources to logically organize all the resources in your subscription.
Clarify your organization's billing by viewing costs for a group of resources that share the same tag.



## Azure subscriptions

Using Azure requires an Azure subscription. A subscription provides you with authenticated and authorized access to Azure products and services.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-architecture-fundamentals/media/subscriptions-afe063a7.png)

An account can have one subscription or multiple subscriptions that have different billing models and to which you apply different access-management policies. You can use Azure subscriptions to define boundaries around Azure products, services, and resources. There are two types of subscription boundaries that you can use:

Billing boundary: This subscription type determines how an Azure account is billed for using Azure. You can create multiple subscriptions for different types of billing requirements. Azure generates separate billing reports and invoices for each subscription so that you can organize and manage costs.
Access control boundary: Azure applies access-management policies at the subscription level, and you can create separate subscriptions to reflect different organizational structures. An example is that within a business, you have different departments to which you apply distinct Azure subscription policies. This billing model allows you to manage and control access to the resources that users provision with specific subscriptions.

You might want to create additional subscriptions for resource or billing management purposes. For example, you might choose to create additional subscriptions to separate:

Environments: When managing your resources, you can choose to create subscriptions to set up separate environments for development and testing, security, or to isolate data for compliance reasons. This design is particularly useful because resource access control occurs at the subscription level.
Organizational structures: You can create subscriptions to reflect different organizational structures. For example, you could limit a team to lower-cost resources, while allowing the IT department a full range. This design allows you to manage and control access to the resources that users provision within each subscription.
Billing: You might want to also create additional subscriptions for billing purposes. Because costs are first aggregated at the subscription level, you might want to create subscriptions to manage and track costs based on your needs. For instance, you might want to create one subscription for your production workloads and another subscription for your development and testing workloads.
You might also need additional subscriptions because of:

Subscription limits: Subscriptions are bound to some hard limitations. For example, the maximum number of Azure ExpressRoute circuits per subscription is 10. Those limits should be considered as you create subscriptions on your account. If there's a need to go over those limits in particular scenarios, you might need additional subscriptions.

Customize billing to meet your needs
If you have multiple subscriptions, you can organize them into invoice sections. Each invoice section is a line item on the invoice that shows the charges incurred that month. For example, you might need a single invoice for your organization but want to organize charges by department, team, or project.

Depending on your needs, you can set up multiple invoices within the same billing account. To do this, create additional billing profiles. Each billing profile has its own monthly invoice and payment method.

The following diagram shows an overview of how billing is structured. If you've previously signed up for Azure or if your organization has an Enterprise Agreement, your billing might be set up differently.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-architecture-fundamentals/media/billing-structure-overview-2c81a8ad.png)

Azure management groups
If your organization has many subscriptions, you might need a way to efficiently manage access, policies, and compliance for those subscriptions. Azure management groups provide a level of scope above subscriptions. You organize subscriptions into containers called management groups and apply your governance conditions to the management groups. All subscriptions within a management group automatically inherit the conditions applied to the management group. Management groups give you enterprise-grade management at a large scale no matter what type of subscriptions you might have. All subscriptions within a single management group must trust the same Azure AD tenant.

For example, you can apply policies to a management group that limits the regions available for VM creation. This policy would be applied to all management groups, subscriptions, and resources under that management group by only allowing VMs to be created in that region.

Hierarchy of management groups and subscriptions
You can build a flexible structure of management groups and subscriptions to organize your resources into a hierarchy for unified policy and access management. The following diagram shows an example of creating a hierarchy for governance by using management groups.

Diagram showing an example of a management group hierarchy tree.

You can create a hierarchy that applies a policy. For example, you could limit VM locations to the US West Region in a group called Production. This policy will inherit onto all the Enterprise Agreement subscriptions that are descendants of that management group and will apply to all VMs under those subscriptions. This security policy can't be altered by the resource or subscription owner, which allows for improved governance.

Another scenario where you would use management groups is to provide user access to multiple subscriptions. By moving multiple subscriptions under that management group, you can create one role-based access control (RBAC) assignment on the management group, which will inherit that access to all the subscriptions. One assignment on the management group can enable users to have access to everything they need instead of scripting RBAC over different subscriptions.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-architecture-fundamentals/media/management-groups-and-subscriptions-bba71896.png)

Important facts about management groups
10,000 management groups can be supported in a single directory.
A management group tree can support up to six levels of depth. This limit doesn't include the root level or the subscription level.
Each management group and subscription can support only one parent.
Each management group can have many children.
All subscriptions and management groups are within a single hierarchy in each directory.

## Serverless Compute

Azure has two implementations of serverless compute:

Azure Functions: Functions can execute code in almost any modern language.
Azure Logic Apps: Logic apps are designed in a web-based designer and can execute logic triggered by Azure services without writing any code.

### Functions vs. Logic Apps
Functions and Logic Apps can both create complex orchestrations. An orchestration is a collection of functions or steps that are executed to accomplish a complex task.

With Functions, you write code to complete each step.
With Logic Apps, you use a GUI to define the actions and how they relate to one another.
You can mix and match services when you build an orchestration, calling functions from logic apps and calling logic apps from functions. Here are some common differences between the two.

||Functions|Logic Apps|
|-|-|-|
|State|Normally stateless, but Durable Functions provide state.| Stateful|
|Development|Code-first (imperative).|Designer-first (declarative).|
|Connectivity|About a dozen built-in binding types. Write code for custom bindings.|Large collection of connectors. Enterprise Integration Pack for B2B scenarios. Build custom connectors|
|Actions|Each activity is an Azure function. Write code for activity functions.|Large collection of ready-made actions.|
|Monitoring|Azure Application Insights.|Azure portal, Log Analytics.|
|Management|REST API, Visual Studio.|Azure portal, REST API, PowerShell, Visual Studio.|
|Execution context|Can run locally or in the cloud.|Runs only in the cloud.|

## Azure Virtual Desktop

Azure Virtual Desktop is a desktop and application virtualization service that runs on the cloud. It enables your users to use a cloud-hosted version of Windows from any location. Azure Virtual Desktop works across devices like Windows, Mac, iOS, Android, and Linux. It works with apps that you can use to access remote desktops and apps. You can also use most modern browsers to access Azure Virtual Desktop-hosted experiences.

## Azure virtual networking

Azure virtual networks enable Azure resources, such as VMs, web apps, and databases, to communicate with each other, with users on the internet, and with your on-premises client computers. You can think of an Azure network as an extension of your on-premises network with resources that links other Azure resources.

Azure virtual networks provide the following key networking capabilities:

- Isolation and segmentation
- Internet communications
- Communicate between Azure resources
- Communicate with on-premises resources
- Route network traffic
- Filter network traffic
- Connect virtual networks

### Communicate between Azure resources
You'll want to enable Azure resources to communicate securely with each other. You can do that in one of two ways:

- Virtual networks Virtual networks can connect not only VMs but other Azure resources, such as the App Service Environment for Power Apps, Azure Kubernetes Service, and Azure virtual machine scale sets.
- Service endpoints You can use service endpoints to connect to other Azure resource types, such as Azure SQL databases and storage accounts. This approach enables you to link multiple Azure resources to virtual networks to improve security and provide optimal routing between resources.
### Communicate with on-premises resources
Azure virtual networks enable you to link resources together in your on-premises environment and within your Azure subscription. In effect, you can create a network that spans both your local and cloud environments. There are three mechanisms for you to achieve this connectivity:

- **Point-to-site virtual private networks** The typical approach to a virtual private network (VPN) connection is from a computer outside your organization, back into your corporate network. In this case, the client computer initiates an encrypted VPN connection to connect that computer to the Azure virtual network.
- **Site-to-site virtual private networks** A site-to-site VPN links your on-premises VPN device or gateway to the Azure VPN gateway in a virtual network. In effect, the devices in Azure can appear as being on the local network. The connection is encrypted and works over the internet.
- **Azure ExpressRoute** For environments where you need greater bandwidth and even higher levels of security, Azure ExpressRoute is the best approach. ExpressRoute provides a dedicated private connectivity to Azure that doesn't travel over the internet. (You'll learn more about ExpressRoute in a separate unit later in this module.)

### Route network traffic
By default, Azure routes traffic between subnets on any connected virtual networks, on-premises networks, and the internet. You can also control routing and override those settings, as follows:

- **Route tables** A route table allows you to define rules about how traffic should be directed. You can create custom route tables that control how packets are routed between subnets.
- **Border Gateway Protocol** Border Gateway Protocol (BGP) works with Azure VPN gateways, Azure Route Server, or ExpressRoute to propagate on-premises BGP routes to Azure virtual networks.

### Filter network traffic
Azure virtual networks enable you to filter traffic between subnets by using the following approaches:

- **Network security groups** A network security group is an Azure resource that can contain multiple inbound and outbound security rules. You can define these rules to allow or block traffic, based on factors such as source and destination IP address, port, and protocol.
- **Network virtual appliances** A network virtual appliance is a specialized VM that can be compared to a hardened network appliance. A network virtual appliance carries out a particular network function, such as running a firewall or performing wide area network (WAN) optimization.

### Connect virtual networks
You can link virtual networks together by using virtual network peering. Peering enables resources in each virtual network to communicate with each other. These virtual networks can be in separate regions, which allows you to create a global interconnected network through Azure.

User-defined routes (UDR) are a significant update to Azure’s Virtual Networks that allows for greater control over network traffic flow. This method allows network administrators to control the routing tables between subnets within a VNet, as well as between VNets.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-networking-fundamentals/media/local-or-remote-gateway-in-peered-virual-network-21106a38.png)

## AzureVPN gateway

VPNs use an encrypted tunnel within another network. They're typically deployed to connect two or more trusted private networks to one another over an untrusted network (typically the public internet). Traffic is encrypted while traveling over the untrusted network to prevent eavesdropping or other attacks.

### Deploy VPN gateways
Before you can deploy a VPN gateway, you'll need some Azure and on-premises resources.

#### **Required Azure resources**
You'll need these Azure resources before you can deploy an operational VPN gateway:

Virtual network. Deploy a virtual network with enough address space for the additional subnet that you'll need for the VPN gateway. The address space for this virtual network must not overlap with the on-premises network that you'll be connecting to. You can deploy only one VPN gateway within a virtual network.

GatewaySubnet. Deploy a subnet called GatewaySubnet for the VPN gateway. Use at least a /27 address mask to make sure you have enough IP addresses in the subnet for future growth. You can't use this subnet for any other services.

Public IP address. Create a Basic-SKU dynamic public IP address if you're using a non-zone-aware gateway. This address provides a public-routable IP address as the target for your on-premises VPN device. This IP address is dynamic, but it won't change unless you delete and re-create the VPN gateway.

Local network gateway. Create a local network gateway to define the on-premises network's configuration, such as where the VPN gateway will connect and what it will connect to. This configuration includes the on-premises VPN device's public IPv4 address and the on-premises routable networks. This information is used by the VPN gateway to route packets that are destined for on-premises networks through the IPSec tunnel.

Virtual network gateway. Create the virtual network gateway to route traffic between the virtual network and the on-premises datacenter or other virtual networks. The virtual network gateway can be either a VPN or ExpressRoute gateway, but this unit only deals with VPN virtual network gateways. (You'll learn more about ExpressRoute in a separate unit later in this module.)

Connection. Create a connection resource to create a logical connection between the VPN gateway and the local network gateway.

The connection is made to the on-premises VPN device's IPv4 address as defined by the local network gateway.
The connection is made from the virtual network gateway and its associated public IP address.
You can create multiple connections.

The following diagram shows this combination of resources and their relationships to help you better understand what's required to deploy a VPN gateway.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-networking-fundamentals/media/resource-requirements-for-vpn-gateway-2518703e.png)

#### **Required on-premises resources**
To connect your datacenter to a VPN gateway, you'll need these on-premises resources:

A VPN device that supports policy-based or route-based VPN gateways
A public-facing (internet-routable) IPv4 address

### High-availability scenarios

- Active/standby

By default, VPN gateways are deployed as two instances in an active/standby configuration, even if you only see one VPN gateway resource in Azure. When planned maintenance or unplanned disruption affects the active instance, the standby instance automatically assumes responsibility for connections without any user intervention. Connections are interrupted during this failover, but they're typically restored within a few seconds for planned maintenance and within 90 seconds for unplanned disruptions.
![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-networking-fundamentals/media/active-standby-c4a3c14d.png)
- Active/ative

With the introduction of support for the BGP routing protocol, you can also deploy VPN gateways in an active/active configuration. In this configuration, you assign a unique public IP address to each instance. You then create separate tunnels from the on-premises device to each IP address. You can extend the high availability by deploying an additional VPN device on-premises.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-networking-fundamentals/media/dual-redundancy-d76100c9.png)


- ExpressRoute failover

Another high-availability option is to configure a VPN gateway as a secure failover path for ExpressRoute connections.

- Zone-redundant gateways

In regions that support availability zones, VPN gateways and ExpressRoute gateways can be deployed in a zone-redundant configuration.

## Azure ExpressRoute

ExpressRoute lets you extend your on-premises networks into the Microsoft cloud over a private connection with the help of a connectivity provider. With ExpressRoute, you can establish connections to Microsoft cloud services, such as Microsoft Azure and Microsoft 365.
ExpressRoute connections don't go over the public Internet. This allows ExpressRoute connections to offer more reliability, faster speeds, consistent latencies, and higher security than typical connections over the Internet.

### Features and benefits of ExpressRoute

There are several benefits to using ExpressRoute as the connection service between Azure and on-premises networks.

- Layer 3 connectivity between your on-premises network and the Microsoft Cloud through a connectivity provider. Connectivity can be from an any-to-any (IPVPN) network, a point-to-point Ethernet connection, or through a virtual cross-connection via an Ethernet exchange.
- Connectivity to Microsoft cloud services across all regions in the geopolitical region.
- Global connectivity to Microsoft services across all regions with the ExpressRoute premium add-on.
- Dynamic routing between your network and Microsoft via BGP.
- Built-in redundancy in every peering location for higher reliability.
- Connection uptime SLA.
- QoS support for Skype for Business.

## ExpressRoute connectivity models

ExpressRoute supports the following models that you can use to connect your on-premises network to the Microsoft cloud:

- **CloudExchange colocation** 

Colocated providers can normally offer both Layer 2 and Layer 3 connections between your infrastructure, which might be located in the colocation facility, and the Microsoft cloud. For example, if your datacenter is colocated at a cloud exchange such as an ISP, you can request a virtual cross-connection to the Microsoft cloud.
- **Point-to-point Ethernet connection**

Point-to-point connections provide Layer 2 and Layer 3 connectivity between your on-premises site and Azure. You can connect your offices or datacenters to Azure by using the point-to-point links. For example, if you have an on-premises datacenter, you can use a point-to-point Ethernet link to connect to Microsoft.

- **Any-to-any connection**

With any-to-any connectivity, you can integrate your wide area network (WAN) with Azure by providing connections to your offices and datacenters. Azure integrates with your WAN connection to provide a connection like you would have between your datacenter and any branch offices.

- **Directly from ExpressRoute sites**

You can connect directly into the Microsoft's global network at a peering location strategically distributed across the world. ExpressRoute Direct provides dual 100 Gbps or 10-Gbps connectivity, which supports Active/Active connectivity at scale.


![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/azure-networking-fundamentals/media/azure-connectivity-models-4deabab1.png)

## Azure Storage 

### Disk storage

Disk Storage provides disks for Azure virtual machines. Applications and other services can access and use these disks as needed, similar to how they would in on-premises scenarios. Disk Storage allows data to be persistently stored and accessed from an attached virtual hard disk.

Disks come in many different sizes and performance levels, from solid-state drives (SSDs) to traditional spinning hard disk drives (HDDs), with varying performance tiers. You can use standard SSD and HDD disks for less critical workloads, premium SSD disks for mission-critical production applications, and ultra disks for data-intensive workloads such as SAP HANA, top tier databases, and transaction-heavy workloads. Azure has consistently delivered enterprise-grade durability for infrastructure as a service (Iaas) disks, with an industry-leading ZERO% annualized failure rate.

### Aure Blob storage

Azure Blob Storage is an object storage solution for the cloud. It can store massive amounts of data, such as text or binary data. Azure Blob Storage is unstructured, meaning that there are no restrictions on the kinds of data it can hold

Blob Storage is ideal for:

- Serving images or documents directly to a browser.
- Storing files for distributed access.
- Streaming video and audio.
- Storing data for backup and restore, disaster recovery, and archiving.
- Storing data for analysis by an on-premises or Azure-hosted service.
- Storing up to 8 TB of data for virtual machines.

Azure Storage offers different access tiers for your blob storage, helping you store object data in the most cost-effective manner. The available access tiers include:

Hot access tier: Optimized for storing data that is accessed frequently (for example, images for your website).
Cool access tier: Optimized for data that is infrequently accessed and stored for at least 30 days (for example, invoices for your customers).
Archive access tier: Appropriate for data that is rarely accessed and stored for at least 180 days, with flexible latency requirements (for example, long-term backups).
The following considerations apply to the different access tiers:

Only the hot and cool access tiers can be set at the account level. The archive access tier isn't available at the account level.
Hot, cool, and archive tiers can be set at the blob level, during upload or after upload.
Data in the cool access tier can tolerate slightly lower availability, but still requires high durability, retrieval latency, and throughput characteristics similar to hot data. For cool data, a slightly lower availability service-level agreement (SLA) and higher access costs compared to hot data are acceptable trade-offs for lower storage costs.
Archive storage stores data offline and offers the lowest storage costs, but also the highest costs to rehydrate and access data.

### Azure Files

Azure Files offers fully managed file shares in the cloud that are accessible via the industry standard Server Message Block and Network File System (preview) protocols. Azure file shares can be mounted concurrently by cloud or on-premises deployments of Windows, Linux, and macOS. Applications running in Azure virtual machines or cloud services can mount a file storage share to access file data, just as a desktop application would mount a typical SMB share

## DATABASES AZURE

### Azure Cosmos DB

Azure Cosmos DB is a globally distributed, multi-model database service. You can elastically and independently scale throughput and storage across any number of Azure regions worldwide. You can take advantage of fast, single-digit-millisecond data access by using any one of several popular APIs. Azure Cosmos DB provides comprehensive service level agreements for throughput, latency, availability, and consistency guarantees.

Azure Cosmos DB is flexible. At the lowest level, Azure Cosmos DB stores data in atom-record-sequence (ARS) format. The data is then abstracted and projected as an API, which you specify when you're creating your database. Your choices include SQL, MongoDB, Cassandra, Tables, and Gremlin.

### Azure SQL Database

Azure SQL Database is a relational database based on the latest stable version of the Microsoft SQL Server database engine. SQL Database is a high-performance, reliable, fully managed, and secure database. You can use it to build data-driven applications and websites in the programming language of your choice, without needing to manage infrastructure.

Azure SQL Database is a platform as a service (PaaS) database engine. It handles most of the database-management functions — such as upgrading, patching, backups, and monitoring — without user involvement. SQL Database provides 99.99 percent availability. 

You can migrate your existing SQL Server databases with minimal downtime by using the **Azure Database Migration Service**. The Microsoft Data Migration Assistant can generate assessment reports that provide recommendations to help guide you through required changes prior to performing a migration. After you assess and resolve any remediation required, you're ready to begin the migration process. The Azure Database Migration Service performs all of the required steps. You'll just change the connection string in your apps.


### Azure database for MySQL

Azure Database for MySQL is a relational database service in the cloud, and it's based on the MySQL Community Edition database engine, versions 5.6, 5.7, and 8.0. With it, you have a 99.99 percent availability service-level agreement from Azure, powered by a global network of Microsoft-managed datacenters. This helps keep your app running 24/7. With every Azure Database for MySQL server, you take advantage of built-in security, fault tolerance, and data protection that you would otherwise have to buy or design, build, and manage. With Azure Database for MySQL, you can use point-in-time restore to recover a server to an earlier state, as far back as 35 days.

Azure Database for MySQL delivers:

- Built-in high availability with no additional cost.
- Predictable performance and inclusive, pay-as-you-go pricing.
- Scale as needed, within seconds.
- Ability to protect sensitive data at rest and in motion.
- Automatic backups.
- Enterprise-grade security and compliance.

### Azure Database for PostgreSQL

Azure Database for PostgreSQL is a relational database service in the cloud. The server software is based on the community version of the open-source PostgreSQL database engine. Your familiarity with tools and expertise with PostgreSQL is applicable when you're using Azure Database for PostgreSQL.

Moreover, Azure Database for PostgreSQL delivers the following benefits:

- Built-in high availability compared to on-premises resources. There's no additional configuration, replication, or cost required to make sure your applications are always available.
- Simple and flexible pricing. You have predictable performance based on a selected pricing tier choice that includes software patching, automatic backups, monitoring, and security.
- Scale up or down as needed, within seconds. You can scale compute or storage independently as needed to make sure you adapt your service to match usage.
- Adjustable automatic backups and point-in-time-restore for up to 35 days.
- Enterprise-grade security and compliance to protect sensitive data at rest and in motion. This security covers data encryption on disk and SSL encryption between client and server communication.

Azure Database for PostgreSQL is available in two deployment options: Single Server and Hyperscale (Citus).

#### **Single Server**

The Single Server deployment option delivers:

 - Built-in high availability with no additional cost (99.99 percent SLA).
- Predictable performance and inclusive, pay-as-you-go pricing.
- Vertical scale as needed, within seconds.
- Monitoring and alerting to assess your server.
- Enterprise-grade security and compliance.
- The ability to protect sensitive data at rest and in motion.
- Automatic backups and point-in-time restore for up to 35 days.

The Single Server deployment option offers three pricing tiers: Basic, General Purpose, and Memory Optimized. Each tier offers different resource capabilities to support your database workloads. 

#### **Hyperscale (Citus)**

The Hyperscale (Citus) option horizontally scales queries across multiple machines by using sharding. Its query engine parallelizes incoming SQL queries across these servers for faster responses on large datasets. It serves applications that require greater scale and performance, generally workloads that are approaching, or already exceed, 100 GB of data.

The Hyperscale (Citus) deployment option supports multi-tenant applications, real-time operational analytics, and high-throughput transactional workloads. Applications built for PostgreSQL can run distributed queries on Hyperscale (Citus) with standard connection libraries and minimal changes.

### Azure SQL Managed Instance

Azure SQL Managed Instance is a scalable cloud data service that provides the broadest SQL Server database engine compatibility with all the benefits of a fully managed platform as a service. Depending on your scenario, Azure SQL Managed Instance might offer more options for your database needs.

For a detailed list of the differences between Azure SQL Database and Azure SQL Managed Instance, see  [Features comparison: Azure SQL Database and Azure SQL Managed Instance.](https://docs.microsoft.com/en-us/azure/azure-sql/database/features-comparison?view=azuresql)! 

### Big data and analytics

Open-source cluster technologies have been developed, over time, to try to deal with these large datasets. Microsoft Azure supports a broad range of technologies and services to provide big data and analytic solutions, including Azure Synapse Analytics, Azure HDInsight, Azure Databricks, and Azure Data Lake Analytics.

#### **Azure Synapse Analytics**

Azure Synapse Analytics (formerly Azure SQL Data Warehouse) is a limitless analytics service that brings together enterprise-data warehousing and big-data analytics. You can query data on your terms by using either serverless or provisioned resources at scale. You have a unified experience to ingest, prepare, manage, and serve data for immediate business intelligence and machine learning needs.

#### **Azure HDInsight**

Azure HDInsight is a fully managed, open-source analytics service for enterprises. It's a cloud service that makes it easier, faster, and more cost-effective to process massive amounts of data. You can run popular open-source frameworks and create cluster types such as Apache Spark, Apache Hadoop, Apache Kafka, Apache HBase, Apache Storm, and Machine Learning Services. HDInsight also supports a broad range of scenarios such as extraction, transformation, and loading (ETL), data warehousing, machine learning, and IoT.

#### **Azure Databricks**

Azure Databricks helps you unlock insights from all your data and build artificial intelligence solutions. You can set up your Apache Spark environment in minutes, then autoscale and collaborate on shared projects in an interactive workspace. Azure Databricks supports Python, Scala, R, Java, and SQL, as well as data science frameworks and libraries including TensorFlow, PyTorch, and scikit-learn.

#### **Azure Data Lake Analytics**

Azure Data Lake Analytics is an on-demand analytics job service that simplifies big data. Instead of deploying, configuring, and tuning hardware, you can write queries to tr       ansform your data and extract valuable insights. The analytics service can handle jobs of any scale instantly by setting the dial for how much power you need. You only pay for your job when it's running, making it more cost-effective.

## IOT

### Azure IoT Hub

Azure IoT Hub is a managed service that's hosted in the cloud and that acts as a central message hub for bi-directional communication between your IoT application and the devices it manages. You can use Azure IoT Hub to build IoT solutions with reliable and secure communications between millions of IoT devices and a cloud-hosted solution back end. You can connect virtually any device to your IoT hub.

### Azure IoT Central
Azure IoT Central builds on top of IoT Hub by adding a dashboard that allows you to connect, monitor, and manage your IoT devices. The visual user interface (UI) makes it easy to quickly connect new devices and watch as they begin sending telemetry or error messages. You can watch the overall performance across all devices in aggregate, and you can set up alerts that send notifications when a specific device needs maintenance. Finally, you can push firmware updates to the device.

Azure Sphere creates an end-to-end, highly secure IoT solution for customers that encompasses everything from the hardware and operating system on the device to the secure method of sending messages from the device to the message hub. Azure Sphere has built-in communication and security features for internet-connected devices.

Azure Sphere comes in three parts:

- The first part is the Azure Sphere micro-controller unit (MCU), which is responsible for processing the operating system and signals from attached sensors. 

- The second part is a customized Linux operating system (OS) that handles communication with the security service and can run the vendor's software.

- The third part is Azure Sphere Security Service, also known as AS3. Its job is to make sure that the device has not been maliciously compromised. When the device attempts to connect to Azure, it first must authenticate itself, per device, which it does by using certificate-based authentication.

## IA

AI is a broad classification of computing that allows a software system to perceive its environment and take action that maximizes its chance of successfully achieving its goals. A goal of AI is to create a software system that's able to adapt, or learn something on its own without being explicitly programmed to do it.

There are two basic approaches to AI. The first is to employ a deep learning system that's modeled on the neural network of the human mind, enabling it to discover, learn, and grow through experience.

The second approach is machine learning, a data science technique that uses existing data to train a model, test it, and then apply the model to new data to forecast future behaviors, outcomes, and trends.

### **Azure Machine Learning**
Azure Machine Learning is a platform for making predictions. It consists of tools and services that allow you to connect to data to train and test models to find one that will most accurately predict a future result. After you've run experiments to test the model, you can deploy and use it in real time via a web API endpoint.

Choose Azure Machine Learning when your data scientists need complete control over the design and training of an algorithm using your own data. The following video discusses the basic steps required to set up a machine learning system.

### **Azure Cognitive Services**
Azure Cognitive Services provides prebuilt machine learning models that enable applications to see, hear, speak, understand, and even begin to reason. Use Azure Cognitive Services to solve general problems, such as analyzing text for emotional sentiment or analyzing images to recognize objects or faces. You don't need special machine learning or data science knowledge to use these services. Developers access Azure Cognitive Services via APIs and can easily include these features in just a few lines of code.

While Azure Machine Learning requires you to bring your own data and train models over that data, Azure Cognitive Services, for the most part, provides pretrained models so that you can bring in your live data to get predictions on.

Azure Cognitive Services can be divided into the following categories:

- Language services: Allow your apps to process natural language with prebuilt scripts, evaluate sentiment, and learn how to recognize what users want.
- Speech services: Convert speech into text and text into natural-sounding speech. Translate from one language to another and enable speaker verification and recognition.
- Vision services: Add recognition and identification capabilities when you're analyzing pictures, videos, and other visual content.
- Decision services: Add personalized recommendations for each user that automatically improve each time they're used, moderate content to monitor and remove offensive or risky content, and detect abnormalities in your time series data.

### **Azure Bot Service**
Azure Bot Service and Bot Framework are platforms for creating virtual agents that understand and reply to questions just like a human. Azure Bot Service is a bit different from Azure Machine Learning and Azure Cognitive Services in that it has a specific use case. Namely, it creates a virtual agent that can intelligently communicate with humans. Behind the scenes, the bot you build uses other Azure services, such as Azure Cognitive Services, to understand what their human counterparts are asking for.

## Azure Serverless.

As mentioned in the video, serverless computing is a cloud-hosted execution environment that runs your code but abstracts the underlying hosting environment. The term serverless computing is a misnomer. After all, there is a server (or a group of servers) that executes your code or desired functionality.

The key idea is that you're not responsible for setting up or maintaining the server. You don't have to worry about scaling it when there's increased demand, and you don't have to worry about outages. The cloud vendor takes care of all maintenance and scaling concerns for you.

You can call Azure Functions from Azure Logic Apps, and vice versa. The primary difference between the two services is their intent. Azure Functions is a serverless compute service, and Azure Logic Apps is intended to be a serverless orchestration service.

### Azure Functions
With the Azure Functions service, you can host a single method or function by using a popular programming language in the cloud that runs in response to an event. An example of an event might be an HTTP request, a new message on a queue, or a message on a timer.

Because of its atomic nature, Azure Functions can serve many purposes in an application's design. Functions can be written in many common programming languages, such as C#, Python, JavaScript, Typescript, Java, and PowerShell.

An Azure function is a stateless environment. A function behaves as if it's restarted every time it responds to an event. This feature is ideal for processing incoming data. And if state is required, the function can be connected to an Azure storage account.

Azure Functions can perform orchestration tasks by using an extension called Durable Functions, which allow developers to chain functions together while maintaining state.

The Azure Functions solution is ideal when you're concerned only with the code that's running your service and not the underlying platform or infrastructure.

### Azure Logic Apps
Logic Apps is a low-code/no-code development platform hosted as a cloud service. The service helps you automate and orchestrate tasks, business processes, and workflows when you need to integrate apps, data, systems, and services across enterprises or organizations. Logic Apps simplifies how you design and build scalable solutions, whether in the cloud, on-premises, or both. This solution covers app integration, data integration, system integration, enterprise application integration (EAI), and business-to-business (B2B) integration.

To build enterprise integration solutions with Azure Logic Apps, you can choose from a growing gallery of over 200 connectors. The gallery includes services such as Salesforce, SAP, Oracle DB, and file shares.

If you can't find the action or connector you need, you can build your own by using custom code.

## DevOps

### Azure DevOps Services
Azure DevOps Services is a suite of services that address every stage of the software development lifecycle.

Azure Repos is a centralized source-code repository where software development, DevOps engineering, and documentation professionals can publish their code for review and collaboration.
Azure Boards is an agile project management suite that includes Kanban boards, reporting, and tracking ideas and work from high-level epics to work items and issues.
Azure Pipelines is a CI/CD pipeline automation tool.
Azure Artifacts is a repository for hosting artifacts, such as compiled source code, which can be fed into testing or deployment pipeline steps.
Azure Test Plans is an automated test tool that can be used in a CI/CD pipeline to ensure quality before a software release.

### GitHub and GitHub Actions
GitHub is arguably the world's most popular code repository for open-source software. Git is a decentralized source-code management tool, and GitHub is a hosted version of Git that serves as the primary remote. GitHub builds on top of Git to provide related services for coordinating work, reporting and discussing issues, providing documentation, and more. It offers the following functionality:

It's a shared source-code repository, including tools that enable developers to perform code reviews by adding comments and questions in a web view of the source code before it can be merged into the main code base.
It facilitates project management, including Kanban boards.
It supports issue reporting, discussion, and tracking.
It features CI/CD pipeline automation tooling.
It includes a wiki for collaborative documentation.
It can be run from the cloud or on-premises

### Azure DevTest Labs
Azure DevTest Labs provides an automated means of managing the process of building, setting up, and tearing down virtual machines (VMs) that contain builds of your software projects. This way, developers and testers can perform tests across a variety of environments and builds. And this capability isn't limited to VMs. Anything you can deploy in Azure via an ARM template can be provisioned through DevTest Labs. Provisioning pre-created lab environments with their required configurations and tools already installed is a huge time saver for quality assurance professionals and developers.

## Manage and configure azure

There are two approaches to infrastructure as code: imperative code and declarative code. Imperative code details each individual step that should be performed to achieve a desired outcome. By contrast, declarative code details only a desired outcome, and it allows an interpreter to decide how to best achieve that outcome.

### The Azure portal
By using the Azure portal, a web-based user interface, you can access virtually every feature of Azure. The Azure portal provides a friendly, graphical UI to view all the services you're using, create new services, configure your services, and view reports.

### The Azure mobile app
The Azure mobile app provides iOS and Android access to your Azure resources when you're away from your computer. With it, you can:

Monitor the health and status of your Azure resources.
Check for alerts, quickly diagnose and fix issues, and restart a web app or virtual machine (VM).
Run the Azure CLI or Azure PowerShell commands to manage your Azure resources.

### Azure PowerShell
Azure PowerShell is a shell with which developers and DevOps and IT professionals can execute commands called cmdlets (pronounced command-lets). These commands call the Azure Rest API to perform every possible management task in Azure. 

Azure PowerShell is available for Windows, Linux, and Mac, and you can access it in a web browser via Azure Cloud Shell.

### The Azure CLI
The Azure CLI command-line interface is an executable program with which a developer, DevOps professional, or IT professional can execute commands in Bash. The commands call the Azure Rest API to perform every possible management task in Azure. You can run the commands independently or combined into a script and executed together for the routine setup, teardown, and maintenance of a single resource or an entire environment.

### ARM templates
Although it's possible to write imperative code in Azure PowerShell or the Azure CLI to set up and tear down one Azure resource or orchestrate an infrastructure comprising hundreds of resources, there's a better way to implement this functionality.

By using Azure Resource Manager templates (ARM templates), you can describe the resources you want to use in a declarative JSON format.


## Monitoring

At a high level, there are three primary Azure monitoring offerings, each of which is aimed at a specific audience and use case and provides a diverse set of tools, services, programmatic APIs, and more.

### Azure Advisor
Azure Advisor evaluates your Azure resources and makes recommendations to help improve reliability, security, and performance, achieve operational excellence, and reduce costs. Advisor is designed to help you save time on cloud optimization.

- Reliability: Used to ensure and improve the continuity of your business-critical applications.
- Security: Used to detect threats and vulnerabilities that might lead to security breaches.
- Performance: Used to improve the speed of your applications.
- Cost: Used to optimize and reduce your overall Azure spending.
- Operational Excellence: Used to help you achieve process and workflow efficiency, resource manageability, and deployment best practices.

### Azure Monitor
Azure Monitor is a platform for collecting, analyzing, visualizing, and potentially taking action based on the metric and logging data from your entire Azure and on-premises environment.

The following diagram illustrates just how comprehensive Azure Monitor is.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/monitoring-fundamentals/media/2-identify-product-options-01.png)

- On the left is a list of the sources of logging and metric data that can be collected at every layer in your application architecture, from application to operating system and network.

- In the center, you can see how the logging and metric data is stored in central repositories.

- On the right, the data is used in a number of ways. You can view real-time and historical performance across each layer of your architecture, or aggregated and detailed information. The data is displayed at different levels for different audiences. You can view high-level reports on the Azure Monitor Dashboard or create custom views by using Power BI and Kusto queries.

### Azure Service Health
Azure Service Health provides a personalized view of the health of the Azure services, regions, and resources you rely on. The status.azure.com website, which displays only major issues that broadly affect Azure customers, doesn't provide the full picture. But Azure Service Health displays both major and smaller, localized issues that affect you. Service issues are rare, but it's important to be prepared for the unexpected. You can set up alerts that help you triage outages and planned maintenance

## Secure Network

You can visualize defense in depth as a set of layers, with the data to be secured at the center.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/secure-network-connectivity-azure/media/2-defense-depth.png)

Here's a brief overview of the role of each layer:

- The physical security layer is the first line of defense to protect computing hardware in the datacenter.
- The identity and access layer controls access to infrastructure and change control.
- The perimeter layer uses distributed denial of service (DDoS) protection to filter large-scale attacks before they can cause a denial of service for users.
- The network layer limits communication between resources through segmentation and access controls.
- The compute layer secures access to virtual machines.
- The application layer helps ensure that applications are secure and free of security vulnerabilities.
- The data layer controls access to business and customer data that you need to protect.

### Azure Firewall
Azure Firewall is a managed, cloud-based network security service that helps protect resources in your Azure virtual networks. A virtual network is similar to a traditional network that you'd operate in your own datacenter. It's a fundamental building block for your private network that enables virtual machines and other compute resources to securely communicate with each other, the internet, and on-premises networks.

Azure Firewall is a stateful firewall. A stateful firewall analyzes the complete context of a network connection, not just an individual packet of network traffic. Azure Firewall features high availability and unrestricted cloud scalability.

With Azure Firewall, you can configure:

Application rules that define fully qualified domain names (FQDNs) that can be accessed from a subnet.
Network rules that define source address, protocol, destination port, and destination address.
Network Address Translation (NAT) rules that define destination IP addresses and ports to translate inbound requests.

### Azure DDoS Protection

What are DDoS attacks?
A distributed denial of service attack attempts to overwhelm and exhaust an application's resources, making the application slow or unresponsive to legitimate users. DDoS attacks can target any resource that's publicly reachable through the internet, including websites.

Azure DDoS Protection (Standard) helps protect your Azure resources from DDoS attacks.

When you combine DDoS Protection with recommended application design practices, you help provide a defense against DDoS attacks. DDoS Protection uses the scale and elasticity of Microsoft's global network to bring DDoS mitigation capacity to every Azure region. The DDoS Protection service helps protect your Azure applications by analyzing and discarding DDoS traffic at the Azure network edge, before it can affect your service's availability.

DDoS Protection identifies the attacker's attempt to overwhelm the network and blocks further traffic from them, ensuring that traffic never reaches Azure resources. Legitimate traffic from customers still flows into Azure without any interruption of service.

DDoS Protection provides these service tiers:

- **Basic**

The Basic service tier is automatically enabled for free as part of your Azure subscription.

Always-on traffic monitoring and real-time mitigation of common network-level attacks provide the same defenses that Microsoft's online services use. The Basic service tier ensures that Azure infrastructure itself is not affected during a large-scale DDoS attack.

The Azure global network is used to distribute and mitigate attack traffic across Azure regions.

- **Standard**

The Standard service tier provides additional mitigation capabilities that are tuned specifically to Azure Virtual Network resources. DDoS Protection Standard is relatively easy to enable and requires no changes to your applications.

The Standard tier provides always-on traffic monitoring and real-time mitigation of common network-level attacks. It provides the same defenses that Microsoft's online services use.

Protection policies are tuned through dedicated traffic monitoring and machine learning algorithms. Policies are applied to public IP addresses, which are associated with resources deployed in virtual networks such as Azure Load Balancer and Application Gateway.

The Azure global network is used to distribute and mitigate attack traffic across Azure regions.

The Standard service tier can help prevent:

Volumetric attacks

The goal of this attack is to flood the network layer with a substantial amount of seemingly legitimate traffic.

Protocol attacks

These attacks render a target inaccessible by exploiting a weakness in the layer 3 and layer 4 protocol stack.

Resource-layer (application-layer) attacks (only with web application firewall)

These attacks target web application packets to disrupt the transmission of data between hosts. You need a web application firewall (WAF) to protect against L7 attacks. DDoS Protection Standard protects the WAF from volumetric and protocol attacks.

### network security groups

A network security group enables you to filter network traffic to and from Azure resources within an Azure virtual network. You can think of NSGs like an internal firewall. An NSG can contain multiple inbound and outbound security rules that enable you to filter traffic to and from resources by source and destination IP address, port, and protocol.

A network security group can contain as many rules as you need, within Azure subscription limits. Each rule specifies these properties:

|Property|	Description|
|-|-|
|Name| A unique name for the NSG.|
|Priority|A number between 100 and 4096.Rules are processed in priority order, with lower numbers processed before higher numbers.|
|Source or Destination|A single IP address or IP address range, service tag, or application security group.|
|Protocol|TCP, UDP, or Any.|
|Direction|Whether the rule applies to inbound or outbound traffic.|
|Port Range|A single port or range of ports.|
|Action|	Allow or Deny.|

### secure recommendations 

Here are some recommendations on how to combine Azure services to create a complete network security solution.

Secure the perimeter layer
The perimeter layer is about protecting your organization's resources from network-based attacks. Identifying these attacks, alerting the appropriate security teams, and eliminating their impact are important to keeping your network secure. To do this:

Use Azure DDoS Protection to filter large-scale attacks before they can cause a denial of service for users.
Use perimeter firewalls with Azure Firewall to identify and alert on malicious attacks against your network.
Secure the network layer
At this layer, the focus is on limiting network connectivity across all of your resources to allow only what's required. Segment your resources and use network-level controls to restrict communication to only what's needed.

By restricting connectivity, you reduce the risk of lateral movement throughout your network from an attack. Use network security groups to create rules that define allowed inbound and outbound communication at this layer. Here are some recommended practices:

Limit communication between resources by segmenting your network and configuring access controls.
Deny by default.
Restrict inbound internet access and limit outbound where appropriate.
Implement secure connectivity to on-premises networks.
Combine services
You can combine Azure networking and security services to manage your network security and provide increased layered protection. Here are two ways you can combine services:

Network security groups and Azure Firewall

Azure Firewall complements the functionality of network security groups. Together, they provide better defense-in-depth network security.

Network security groups provide distributed network-layer traffic filtering to limit traffic to resources within virtual networks in each subscription.

Azure Firewall is a fully stateful, centralized network firewall as a service. It provides network-level and application-level protection across different subscriptions and virtual networks.

Azure Application Gateway web application firewall and Azure Firewall

Web application firewall (WAF) is a feature of Azure Application Gateway that provides your web applications with centralized, inbound protection against common exploits and vulnerabilities.

Azure Firewall provides:

Inbound protection for non-HTTP/S protocols (for example, RDP, SSH, and FTP).
Outbound network-level protection for all ports and protocols.
Application-level protection for outbound HTTP/S.
Combining them provides more layers of protection.
	
## Azure Security Center
Azure Security Center is a monitoring service that provides visibility of your security posture across all of your services, both on Azure and on-premises. The term security posture refers to cybersecurity policies and controls, as well as how well you can predict, prevent, and respond to security threats.

Security Center can:

Monitor security settings across on-premises and cloud workloads.
Automatically apply required security settings to new resources as they come online.
Provide security recommendations that are based on your current configurations, resources, and networks.
Continuously monitor your resources and perform automatic security assessments to identify potential vulnerabilities before those vulnerabilities can be exploited.
Use machine learning to detect and block malware from being installed on your virtual machines (VMs) and other resources. You can also use adaptive application controls to define rules that list allowed applications to ensure that only applications you allow can run.
Detect and analyze potential inbound attacks and investigate threats and any post-breach activity that might have occurred.
Provide just-in-time access control for network ports. Doing so reduces your attack surface by ensuring that the network only allows traffic that you require at the time that you need it to.


**Secure score** is a measurement of an organization's security posture.
	
Secure score helps you:

- Report on the current state of your organization's security posture.
- Improve your security posture by providing discoverability, visibility, guidance, and control.
- Compare with benchmarks and establish key performance indicators (KPIs).

####**Protect against threats**
Security Center includes advanced cloud defense capabilities for VMs, network security, and file integrity. 

- Just-in-time VM access Tailwind Traders will configure just-in-time access to VMs. This access blocks traffic by default to specific network ports of VMs, but allows traffic for a specified time when an admin requests and approves it.
- Adaptive application controls  can control which applications are allowed to run on its VMs. In the background, Security Center uses machine learning to look at the processes running on a VM. It creates exception rules for each resource group that holds the VMs and provides recommendations. This process provides alerts that inform the company about unauthorized applications that are running on its VMs.
- Adaptive network hardening Security Center can monitor the internet traffic patterns of the VMs, and compare those patterns with the company's current network security group (NSG) settings. From there, Security Center can make recommendations about whether the NSGs should be locked down further and provide remediation steps.
- File integrity monitoring  Traders can also configure the monitoring of changes to important files on both Windows and Linux, registry settings, applications, and other aspects that might indicate a security attack.

### Azure Sentinel

Security management on a large scale can benefit from a dedicated security information and event management (SIEM) system. A SIEM system aggregates security data from many different sources (as long as those sources support an open-standard logging format). It also provides capabilities for threat detection and response.

Azure Sentinel is Microsoft's cloud-based SIEM system. It uses intelligent security analytics and threat analysis.

Azure Sentinel enables you to:

- Collect cloud data at scale Collect data across all users, devices, applications, and infrastructure, both on-premises and from multiple clouds.
- Detect previously undetected threats Minimize false positives by using Microsoft's comprehensive analytics and threat intelligence.
- Investigate threats with artificial intelligence Examine suspicious activities at scale, tapping into years of cybersecurity experience from Microsoft.
- Respond to incidents rapidly Use built-in orchestration and automation of common tasks.

Azure Sentinel supports a number of data sources, which it can analyze for security events. These connections are handled by built-in connectors or industry-standard log formats and APIs.

- Connect Microsoft solutions Connectors provide real-time integration for services like Microsoft Threat Protection solutions, Microsoft 365 sources (including Office 365), Azure Active Directory, and Windows Defender Firewall.
- Connect other services and solutions Connectors are available for common non-Microsoft services and solutions, including AWS CloudTrail, Citrix Analytics (Security), Sophos XG Firewall, VMware Carbon Black Cloud, and Okta SSO.
- Connect industry-standard data sources Azure Sentinel supports data from other sources that use the Common Event Format (CEF) messaging standard, Syslog, or REST API.

## Azure Key Vault

Azure Key Vault is a centralized cloud service for storing an application's secrets in a single, central location. It provides secure access to sensitive information by providing access control and logging capabilities.

Azure Key Vault can help you:

- Manage secrets You can use Key Vault to securely store and tightly control access to tokens, passwords, certificates, API keys, and other secrets.
- Manage encryption keys You can use Key Vault as a key management solution. Key Vault makes it easier to create and control the encryption keys that are used to encrypt your data.
- Manage SSL/TLS certificates Key Vault enables you to provision, manage, and deploy your public and private Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificates for both your Azure resources and your internal resources.
- Store secrets backed by hardware security modules (HSMs) These secrets and keys can be protected either by software or by FIPS 140-2 Level 2 validated HSMs.

## Azure Dedicated Host

Some organizations must follow regulatory compliance that requires them to be the only customer using the physical machine that hosts their virtual machines. Azure Dedicated Host provides dedicated physical servers to host your Azure VMs for Windows and Linux.

benefict of Azure Dedicated Host:

- Gives you visibility into, and control over, the server infrastructure that's running your Azure VMs.
- Helps address compliance requirements by deploying your workloads on an isolated server.
- Lets you choose the number of processors, server capabilities, VM series, and VM sizes within the same host.


You're charged per dedicated host, independent of how many VMs you deploy to it. The host price is based on the VM family, type (hardware size), and region.

Software licensing, storage, and network usage are billed separately from the host and VMs. 


## SECURE AZURE

### Authentication (AuthN)
Authentication is the process of establishing the identity of a person or service that wants to access a resource. It involves the act of challenging a party for legitimate credentials and provides the basis for creating a security principal for identity and access control. It establishes whether the user is who they say they are.

### Authorization (AuthZ)
Authentication establishes the user's identity, but authorization is the process of establishing what level of access an authenticated person or service has. It specifies what data they're allowed to access and what they can do with it.


### Azure Active Directory

Azure Active Directory (Azure AD) provides identity services that enable your users to sign in and access both Microsoft cloud applications and cloud applications that you develop. You also learn how Azure AD supports single sign-on (SSO).

Azure AD provides services such as:

- Authentication

This includes verifying identity to access applications and resources. It also includes providing functionality such as self-service password reset, multifactor authentication, a custom list of banned passwords, and smart lockout services.

- Single sign-on

SSO enables you to remember only one username and one password to access multiple applications. A single identity is tied to a user, which simplifies the security model. As users change roles or leave an organization, access modifications are tied to that identity, which greatly reduces the effort needed to change or disable accounts.

- Application management

You can manage your cloud and on-premises apps by using Azure AD. Features like Application Proxy, SaaS apps, the My Apps portal (also called the access panel), and single sign-on provide a better user experience.

- Device management

Along with accounts for individual people, Azure AD supports the registration of devices. Registration enables devices to be managed through tools like Microsoft Intune. It also allows for device-based Conditional Access policies to restrict access attempts to only those coming from known devices, regardless of the requesting user account.

### Connect Active Directory with Azure AD
Connecting Active Directory with Azure AD enables you to provide a consistent identity experience to your users.

There are a few ways to connect your existing Active Directory installation with Azure AD. Perhaps the most popular method is to use Azure AD Connect.

Azure AD Connect synchronizes user identities between on-premises Active Directory and Azure AD. Azure AD Connect synchronizes changes between both identity systems, so you can use features like SSO, multifactor authentication, and self-service password reset under both systems. Self-service password reset prevents users from using known compromised passwords.

Here's a diagram that shows how Azure AD Connect fits between on-premises Active Directory and Azure AD:

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/secure-access-azure-identity-services/media/3-azure-ad-connect.png)

## Multifactor authentication

Multifactor authentication is a process where a user is prompted during the sign-in process for an additional form of identification. Examples include a code on their mobile phone or a fingerprint scan.

- **Something the user knows**

This might be an email address and password.

- **Something the user has**

This might be a code that's sent to the user's mobile phone.

- **Something the user is**

This is typically some sort of biometric property, such as a fingerprint or face scan that's used on many mobile devices.


### Azure AD Multi-Factor Authentication

Azure AD Multi-Factor Authentication is a Microsoft service that provides multifactor authentication capabilities. Azure AD Multi-Factor Authentication enables users to choose an additional form of authentication during sign-in, such as a phone call or mobile app notification.

### Conditional Access

Conditional Access is a tool that Azure Active Directory uses to allow (or deny) access to resources based on identity signals. These signals include who the user is, where the user is, and what device the user is requesting access from.

Conditional Access helps IT administrators:

- Empower users to be productive wherever and whenever.
- Protect the organization's assets.

To use Conditional Access, you need an Azure AD Premium P1 or P2 license. If you have a Microsoft 365 Business Premium license, you also have access to Conditional Access features.

## Governance Azure

### Azure role-based access control (Azure RBAC)

Access management for cloud resources is a critical function for any organization that is using the cloud. Azure role-based access control (Azure RBAC) helps you manage who has access to Azure resources, what they can do with those resources, and what areas they have access to.

Azure RBAC is an authorization system built on Azure Resource Manager that provides fine-grained access management of Azure resources.

Role-based access control is applied to a scope, which is a resource or set of resources that this access applies to.

Here's a diagram that shows the relationship between roles and scopes.

A diagram showing scopes along the Y axis and roles across the X axis. Role and scope combinations each map to a specific kind of user or account, such as an observer or an administrator.

Scopes include:

- A management group (a collection of multiple subscriptions).
- A single subscription.
- A resource group.
- A single resource.

**Observers**, Users managing resources, Admins, and Automated processes illustrate the kinds of users or accounts that would typically be assigned each of the various roles.

When you grant access at a parent scope, those permissions are inherited by all child scopes. For example:

When you assign the **Owner** role to a user at the management group scope, that user can manage everything in all subscriptions within the management group.

When you assign the **Reader** role to a group at the subscription scope, the members of that group can view every resource group and resource within the subscription.

When you assign the **Contributor** role to an application at the resource group scope, the application can manage resources of all types within that resource group, but not other resource groups within the subscription.

Use Azure RBAC when you need to:

- Allow one user to manage VMs in a subscription and another user to manage virtual networks.
- Allow a database administrator group to manage SQL databases in a subscription.
- Allow a user to manage all resources in a resource group, such as virtual machines, websites, and subnets.
- Allow an application to access all resources in a resource group.


### Resource Lock

A resource lock prevents resources from being accidentally deleted or changed.

Even with Azure role-based access control (Azure RBAC) policies in place, there's still a risk that people with the right level of access could delete critical cloud resources. Think of a resource lock as a warning system that reminds you that a resource should not be deleted or changed.

#### levels of locking 
You can apply locks to a subscription, a resource group, or an individual resource. You can set the lock level to CanNotDelete or ReadOnly.

- CanNotDelete means authorized people can still read and modify a resource, but they can't delete the resource without first removing the lock.
- ReadOnly means authorized people can read a resource, but they can't delete or change the resource. Applying this lock is like restricting all authorized users to the permissions granted by the Reader role in Azure RBAC.


#### delete or change a locked resource
Although locking helps prevent accidental changes, you can still make changes by following a two-step process.

To modify a locked resource, you must first remove the lock. After you remove the lock, you can apply any action you have permissions to perform. This additional step allows the action to be taken, but it helps protect your administrators from doing something they might not have intended to do.

Resource locks apply regardless of RBAC permissions. Even if you're an owner of the resource, you must still remove the lock before you can perform the blocked activity.

### Tags

 Resource tags are another way to organize resources. Tags provide extra information, or metadata, about your resources. This metadata is useful for:

- Resource management Tags enable you to locate and act on resources that are associated with specific workloads, environments, business units, and owners.
- Cost management and optimization Tags enable you to group resources so that you can report on costs, allocate internal cost centers, track budgets, and forecast estimated cost.
- Operations management Tags enable you to group resources according to how critical their availability is to your business. This grouping helps you formulate service-level agreements (SLAs). An SLA is an uptime or performance guarantee between you and your users.
- Security Tags enable you to classify data by its security level, such as public or confidential.
- Governance and regulatory compliance Tags enable you to identify resources that align with governance or regulatory compliance requirements, such as ISO 27001. Tags can also be part of your standards enforcement efforts. For example, you might require that all resources be tagged with an owner or department name.
- Workload optimization and automation Tags can help you visualize all of the resources that participate in complex deployments. For example, you might tag a resource with its associated workload or application name and use software such as Azure DevOps to perform automated tasks on those resources.

A resource tag consists of a name and a value. You can assign one or more tags to each Azure resource.

**Example Tags**

|Name|Value|
|-|-|
|AppName|The name of the application that the resource is part of.|
|CostCenter|The internal cost center code.|
|Owner|The name of the business owner who's responsible for the resource.|
|Environment|An environment name, such as "Prod," "Dev," or "Test."|
|Impact|How important the resource is to business operations, such as "Mission-critical," "High-impact," or "Low-impact."|

Here's an example that shows these tags as they're applied to a virtual machine during provisioning.

![](https://docs.microsoft.com/en-us/learn/azure-fundamentals/build-cloud-governance-strategy-azure/media/8-vm-tags-7c63fa8a.png)


### Azure Policy

Azure Policy is a service in Azure that enables you to create, assign, and manage policies that control or audit your resources. These policies enforce different rules across all of your resource configurations so that those configurations stay compliant with corporate standards.

Azure Policy enables you to define both individual policies and groups of related policies, known as *initiatives*. Azure Policy evaluates your resources and highlights resources that aren't compliant with the policies you've created. Azure Policy can also prevent noncompliant resources from being created.

### Azure Policy initiatives

An Azure Policy initiative is a way of grouping related policies together. The initiative definition contains all of the policy definitions to help track your compliance state for a larger goal.

For example, Azure Policy includes an initiative named Enable Monitoring in Azure Security Center. Its goal is to monitor all of the available security recommendations for all Azure resource types in Azure Security Center.

Under this initiative, the following policy definitions are included:

- Monitor unencrypted SQL Database in Security Center This policy monitors for unencrypted SQL databases and servers.
- Monitor OS vulnerabilities in Security Center This policy monitors servers that don't satisfy the configured OS vulnerability baseline.
- Monitor missing Endpoint Protection in Security Center This policy monitors for servers that don't have an installed endpoint protection agent.
In fact, the Enable Monitoring in Azure Security Center initiative contains over 100 separate policy definitions.

Azure Policy also includes initiatives that support regulatory compliance standards, such as HIPAA and ISO 27001.

### Azure Blueprints 

Simplify largescale Azure deployments by packaging key environment artifacts, such as Azure Resource Manager templates, role-based access controls, and policies, in a single blueprint definition. Easily apply the blueprint to new subscriptions and environments, and fine-tune control and management through versioning.

Azure Blueprints orchestrates the deployment of various resource templates and other artifacts, such as:

- Role assignments
- Policy assignments
- Azure Resource Manager templates
- Resource groups

### Cloud Adoption Framework

Cloud Adoption Framework consists of tools, documentation, and proven practices. The Cloud Adoption Framework includes these stages:

1. Define your strategy.
2. Make a plan.
3. Ready your organization.
4. Adopt the cloud.
5. Govern and manage your cloud environments.

#### *Define strategy*

1. Define and document your motivations: Meeting with stakeholders and leadership can help you answer why you're moving to the cloud.

2. Document business outcomes: Meet with leadership from your finance, marketing, sales, and human resource groups to help you document your goals.

3. Evaluate financial considerations: Measure objectives and identify the return expected from a specific investment.

4. Understand technical considerations: Evaluate those technical considerations through the selection and completion of your first technical project.

#### *Make a plan*

1. Digital estate: Create an inventory of the existing digital assets and workloads that you plan to migrate to the cloud.

2. Initial organizational alignment: Ensure that the right people are involved in your migration efforts, both from a technical standpoint as well as from a cloud governance standpoint.

3. Skills readiness plan: Build a plan that helps individuals build the skills they need to operate in the cloud.

4. Cloud adoption plan: Build a comprehensive plan that brings together the development, operations, and business teams toward a shared cloud adoption goal.

#### *Ready your organization*

1. Azure setup guide: Review the Azure setup guide to become familiar with the tools and approaches you need to use to create a landing zone.

2. Azure landing zone: Begin to build out the Azure subscriptions that support each of the major areas of your business. A landing zone includes cloud infrastructure as well as governance, accounting, and security capabilities.

3. Expand the landing zone: Refine your landing zone to ensure that it meets your operations, governance, and security needs.

4. Best practices: Start with recommended and proven practices to help ensure that your cloud migration efforts are scalable and maintainable.

#### *Adopt the cloud*

The Cloud Adoption Framework breaks this stage into two parts: migrate and innovate.

**Migrate:** Here are the steps in the migrate part of this stage.

1. Migrate your first workload: Use the Azure migration guide to deploy your first project to the cloud.

2. Migration scenarios: Use additional in-depth guides to explore more complex migration scenarios.

3. Best practices: Check in with the Azure cloud migration best practices checklist to verify that you're following recommended practices.

4. Process improvements: Identify ways to make the migration process scale while requiring less effort.



**Innovate**: Here are the steps in the innovate part of this stage.

1. Business value consensus: Verify that investments in new innovations add value to the business and meet customer needs.

2. Azure innovation guide: Use this guide to accelerate development and build a minimum viable product (MVP) for your idea.

3. Best practices: Verify that your progress maps to recommended practices before you move forward.

4. Feedback loops: Check in frequently with your customers to verify that you're building what they need.

#### *Govern and manage your cloud environments*

**Govern:** Here are the steps in the govern part of this stage.

1. Methodology: Consider your end state solution. Then define a methodology that incrementally takes you from your first steps all the way to full cloud governance.


2. Benchmark: Use the governance benchmark tool to assess your current state and future state to establish a vision for applying the framework.

3. Initial governance foundation: Create an MVP that captures the first steps of your governance plan.

4. Improve the initial governance foundation: Iteratively add governance controls that address tangible risks as you progress toward your end state solution.

**Manage:** Here are the steps in the manage part of this stage.

1. Establish a management baseline: Define your minimum commitment to operations management. A management baseline is the minimum set of tools and processes that should be applied to every asset in an environment.

2. Define business commitments: Document supported workloads to establish operational commitments with the business and agree on cloud management investments for each workload.

3. Expand the management baseline: Apply recommended best practices to iterate on your initial management baseline.

4. Advanced operations and design principles: For workloads that require a higher level of business commitment, perform a deeper architecture review to deliver on your resiliency and reliability commitments.

##  Azure compliance documentation
The Azure compliance documentation provides you with detailed documentation about legal and regulatory standards and compliance on Azure.

Here you find compliance offerings across these categories:

- Global
- US government
- Financial services
- Health
- Media and manufacturing
- Regional

There are also additional compliance resources, such as audit reports, privacy information, compliance implementations and mappings, and white papers and analyst reports. Country and region privacy and compliance guidelines are also included. Some resources might require you to be signed in to your cloud service to access them.

## Azure Government

Azure Government is a separate instance of the Microsoft Azure service. It addresses the security and compliance needs of US federal agencies, state and local governments, and their solution providers. Azure Government offers physical isolation from non-US government deployments and provides screened US personnel.

## Azure China 21Vianet

Azure China 21Vianet is operated by 21Vianet. It's a physically separated instance of cloud services located in China. Azure China 21Vianet is independently operated and transacted by Shanghai Blue Cloud Technology Co., Ltd. ("21Vianet"), a wholly owned subsidiary of Beijing 21Vianet Broadband Data Center Co., Ltd.

## Total Cost of Ownership Calculator

The TCO Calculator helps you estimate the cost savings of operating your solution on Azure over time compared to operating in your on-premises datacenter.

Working with the TCO Calculator involves three steps:

1. Define your workloads
2. Adjust assumptions
3. View the report


## Pricing calculator
Calculate your estimated hourly or monthly costs for using Azure.

# AZ 104 Admin

## Azure Resource Manager template schema

Azure Resource Manager templates are written in JSON, which allows you to express data stored as an object (such as a virtual machine) in text. A JSON document is essentially a collection of key-value pairs. Each key is a string, whose value can be:

- A string
- A number
- A Boolean expression
- A list of values
- An object (which is a collection of other key-value pairs)

A Resource Manager template can contain sections that are expressed using JSON notation, but are not related to the JSON language itself:

```
{
    "$schema": "http://schema.management.​azure.com/schemas/2019-04-01/deploymentTemplate.json#",​
    "contentVersion": "",​
    "parameters": {},​
    "variables": {},​
    "functions": [],​
    "resources": [],​
    "outputs": {}​
}
```

|Element name|Required|Description|
|-|-|-|
|$schema|Yes|Location of the JSON schema file that describes the version of the template language. Use the URL shown in the preceding example.|
|contentVersion|Yes|Version of the template (such as 1.0.0.0). You can provide any value for this element. Use this value to document significant changes in your template. When deploying resources using the template, this value can be used to make sure that the right template is being used.|
|parameters|No|Values that are provided when deployment is executed to customize resource deployment.|
|variables|No|Values that are used as JSON fragments in the template to simplify template language expressions.|
|functions|No|User-defined functions that are available within the template.|
|resources|Yes|Resource types that are deployed or updated in a resource group.|
|outputs|No|Values that are returned after deployment.|

In the parameters section of the template, you specify which values you can input when deploying the resources. The available properties for a parameter are:

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
Here's an example that illustrates two parameters: one for a virtual machine's username, and one for its password:

```
"parameters": {
  "adminUsername": {
    "type": "string",
    "metadata": {
      "description": "Username for the Virtual Machine."
    }
  },
  "adminPassword": {
    "type": "securestring",
    "metadata": {
      "description": "Password for the Virtual Machine."
    }
  }
}
```

## Bicep templates

Azure Bicep is a domain-specific language (DSL) that uses declarative syntax to deploy Azure resources. It provides concise syntax, reliable type safety, and support for code reuse.

You can use Bicep instead of JSON to develop your Azure Resource Manager templates (ARM templates). The JSON syntax to create an ARM template can be verbose and require complicated expressions. Bicep syntax reduces that complexity and improves the development experience.

Bicep provides many improvements over JSON for template authoring, including:

- **Simpler syntax:** Bicep provides a simpler syntax for writing templates. You can reference parameters and variables directly, without using complicated functions. String interpolation is used in place of concatenation to combine values for names and other items. You can reference the properties of a resource directly by using its symbolic name instead of complex reference statements. These syntax improvements help both with authoring and reading Bicep templates.

- **Modules:** You can break down complex template deployments into smaller module files and reference them in a main template. These modules provide easier management and greater reusability.

- **Automatic dependency management:** In most situations, Bicep automatically detects dependencies between your resources. This process removes some of the work involved in template authoring.

- **Type validation and IntelliSense:** The Bicep extension for Visual Studio Code features rich validation and IntelliSense for all Azure resource type API definitions. This feature helps provide an easier authoring experience.

[Azure Quickstart](https://azure.microsoft.com/en-us/resources/templates/) Templates are Azure Resource Manager templates provided by the Azure community.

Some templates provide everything you need to deploy your solution, while others might serve as a starting point for your template. Either way, you can study these templates to learn how to best author and structure your own templates.

The README.md file provides an overview of what the template does.

The azuredeploy.json file defines the resources that will be deployed.

The azuredeploy.parameters.json file provides the values the template needs.

## POWERSHELL

A PowerShell command is called a cmdlet (pronounced "command-let"). A cmdlet is a command that manipulates a single feature. The term cmdlet is intended to imply "small command". By convention, cmdlet authors are encouraged to keep cmdlets simple and single-purpose.

Cmdlets follow a verb-noun naming convention; for example, Get-Process, Format-Table, and Start-Service. There is also a convention for verb choice: "get" to retrieve data, "set" to insert or update data, "format" to format data, "out" to direct output to a destination, and so on.

Cmdlets are shipped in modules. A PowerShell Module is a DLL that includes the code to process each available cmdlet. You'll load cmdlets into PowerShell by loading the module in which they're contained

Az is the formal name for the Azure PowerShell module, which contains cmdlets to work with Azure features. It contains hundreds of cmdlets that let you control nearly every aspect of every Azure resource. You can work with resource groups, storage, virtual machines, Azure Active Directory, containers, machine learning, and so on.

### powershelcomandos AZ

- Connect-AzAccount

The Connect-AzAccount cmdlet prompts for your Azure credentials, then connects to your Azure subscription.

- Get a list of all resource groups
Get-AzResourceGroup

Get-AzResourceGroup | Format-Table

- Create a resource group
```
New-AzResourceGroup -Name <name> -Location <location>
```
- Verify the resources

Get-AzResource

Get-AzResource | Format-Table

Get-AzResource -ResourceGroupName ExerciseResources

- Create an Azure Virtual Machine

**ResourceGroupName:** The resource group into which the new VM will be placed.

**Name:** The name of the VM in Azure.

**Location:** Geographic location where the VM will be provisioned.

**Credential:** An object containing the username and password for the VM admin account. We'll use the Get-Credential cmdlet. This cmdlet will prompt for a username and password and package it into a credential object.

**Image:** The operating system image to use for the VM, which is typically a Linux distribution or Windows Server.

```
New-AzVm
       -ResourceGroupName <resource group name>
       -Name <machine name>
       -Credential <credentials object>
       -Location <location>
       -Image <image name>
```

The AzVM suffix is specific to VM-based commands in PowerShell. There are several others you can use:

|Command	|Description|
|-|-|
Remove-AzVM	|Deletes an Azure VM.
Start-AzVM|	Start a stopped VM.
Stop-AzVM|	Stop a running VM.
Restart-AzVM|	Restart a VM.
Update-AzVM	|Updates the configuration for a VM.

### Create and save scripts in Azure PowerShell

Complex or repetitive tasks often take a great deal of administrative time. Organizations prefer to automate these tasks to reduce costs and avoid errors.

A PowerShell script is a text file containing commands and control constructs. The commands are invocations of cmdlets. The control constructs are programming features like loops, variables, parameters, comments, etc., supplied by PowerShell.

PowerShell script files have a .ps1 file extension. You can create and save these files with any text editor.

### PowerShell techniques

#### **Variables**
As you saw in the last unit, PowerShell supports variables. Use $ to declare a variable and = to assign a value. For example:

```
$loc = "East US"
$iterations = 3

$adminCredential = Get-Credential
```

To obtain the value stored in a variable, use the $ prefix and its name, as in the following:

```
$loc = "East US"
New-AzResourceGroup -Name "MyResourceGroup" -Location $loc
```
#### **Loops**

PowerShell has several loops: For, Do...While, For...Each, and so on. The For loop is the best match for our needs, because we will execute a cmdlet a fixed number of times.

The core syntax is shown below; the example runs for two iterations and prints the value of i each time. The comparison operators are written -lt for "less than", -le for "less than or equal", -eq for "equal", -ne for "not equal", etc.

```
For ($i = 1; $i -lt 3; $i++)
{
    $i
}
```
#### **Parameters**

When you execute a script, you can pass arguments on the command line. You can provide names for each parameter to help the script extract the values. For example:

```
.\setupEnvironment.ps1 -size 5 -location "East US"
```

Inside the script, you'll capture the values into variables. In this example, the parameters are matched by name:

```
param([string]$location, [int]$size)
```

You can omit the names from the command line. For example:

```
.\setupEnvironment.ps1 5 "East US"
```

Inside the script, you'll rely on position for matching when the parameters are unnamed:
```
param([int]$size, [string]$location)
```




# AZ 104 Resume

## Configure Azure Active Directory

### Azure Active Directory concepts

To implement Azure Active Directory in your corporate configuration, you need to understand the key components of the service. The following table describes the main components and concepts of Azure AD and explains how they work together to support service features.

Azure AD concept|	Description|
|-|-|
Identity	|An identity is an object that can be authenticated. The identity can be a user with a username and password. Identities can also be applications or other servers that require authentication by using secret keys or certificates. Azure AD is the underlying product that provides the identity service.
Account	|An account is an identity that has data associated with it. To have an account, you must first have a valid identity. You can't have an account without an identity.
Azure AD account	|An Azure AD account is an identity that's created through Azure AD or another Microsoft cloud service, such as Microsoft 365. Identities are stored in Azure AD and are accessible to your organization's cloud service subscriptions. The Azure AD account is also called a work or school account.
Azure tenant (directory)|	An Azure tenant is a single dedicated and trusted instance of Azure AD. Each tenant (also called a directory) represents a single organization. When your organization signs up for a Microsoft cloud service subscription, a new tenant is automatically created. Because each tenant is a dedicated and trusted instance of Azure AD, you can create multiple tenants or instances.
Azure subscription|	An Azure subscription is used to pay for Azure cloud services. A subscription is linked to a credit card. Each subscription is joined to a single tenant. You can have multiple subscriptions.

### Compare Active Directory Domain Services to Azure Active Directory

Azure AD is similar to AD DS, but there are significant differences. It's important to understand that using Azure AD for your configuration is different from deploying an Active Directory domain controller on an Azure virtual machine and then adding it to your on-premises domain.

As you plan your identity strategy, consider the following characteristics that distinguish Azure AD from AD DS.

- **Identity solution:** AD DS is primarily a directory service, while Azure AD is a full identity solution. Azure AD is designed for internet-based applications that use HTTP and HTTPS communications. The features and capabilities of Azure AD support target strong identity management.

- **REST API queries:** Azure AD is based on HTTP and HTTPS protocols. Azure AD tenants can't be queried by using LDAP. Azure AD uses the REST API over HTTP and HTTPS.

- **Communication protocols:** Because Azure AD is based on HTTP and HTTPS, it doesn't use Kerberos authentication. Azure AD implements HTTP and HTTPS protocols, such as SAML, WS-Federation, and OpenID Connect for authentication (and OAuth for authorization).

- **Federation services:** Azure AD includes federation services, and many third-party services like Facebook.

- **Flat structure:** Azure AD users and groups are created in a flat structure. There are no organizational units (OUs) or group policy objects (GPOs).

- **Managed service:** Azure AD is a managed service. You manage only users, groups, and policies. If you deploy AD DS with virtual machines by using Azure, you manage many other tasks, including deployment, configuration, virtual machines, patching, and other backend processes.

### Azure Active Directory editions

Azure Active Directory comes in four editions: Free, Microsoft 365 Apps, Premium P1, and Premium P2. The Free edition is included with an Azure subscription.

Consider the following features that distinguish the different editions of Azure AD.An X indicates the feature is supported.

|Feature|	Free|	Microsoft 365 Apps|	Premium P1	|Premium P2|
|-|-|-|-|-|
Directory Objects|	500,000	|Unlimited	|Unlimited	|Unlimited
Single Sign-on	|Unlimited	|Unlimited	|Unlimited	|Unlimited
Core Identity and Access Management	|X|	X|	X	|X|
Business-to-business Collaboration	|X|	X|	X	|X
Identity and Access Managementfor Microsoft 365 apps||		X|	X|	X|
Premium Features	||		|X	|X
Hybrid Identities		||		|X	|X
Advanced Group Access Management		||		|X	|X
Conditional Access		||		|X	|X
Identity Protection		||		|	|X
Identity Governance				||		|	|X

**Azure Active Directory Free**
The Free edition provides user and group management, on-premises directory synchronization, and basic reports. Single sign-on access is supported across Azure, Microsoft 365, and many popular SaaS apps.

**Azure Active Directory Microsoft 365 Apps**
This edition is included with Microsoft 365. In addition to the Free features, this edition provides Identity and Access Management for Microsoft 365 apps. The extra support includes branding, MFA, group access management, and self-service password reset for cloud users.

**Azure Active Directory Premium P1**
In addition to the Free features, the Premium P1 edition lets your hybrid users access both on-premises and cloud resources. This edition supports advanced administration like dynamic groups, self-service group management, and cloud write-back capabilities. P1 also includes Microsoft Identity Manager, an on-premises identity and access management suite. The extra features in P1 allow self-service password reset for your on-premises users.

**Azure Active Directory Premium P2**
In addition to the Free and P1 features, the Premium P2 edition offers Azure AD Identity Protection to help provide risk-based Conditional Access to your apps and critical company data. Privileged Identity Management is included to help discover, restrict, and monitor administrators and their access to resources, and to provide just-in-time access when needed.

### Azure Active Directory join

The Azure AD join feature works with SSO to provide access to organizational apps and resources, and to simplify Windows deployments of work-owned devices.

Let's look at some of the benefits of using joined devices:

|Benefit	|Description|
|-|-|
Single-Sign-On (SSO)	|Joined devices offer SSO access to your Azure-managed SaaS apps and services. Your users won't have extra authentication prompts when they access work resources. The SSO functionality is available even when users aren't connected to the domain network.
Enterprise state roaming	|Starting in Windows 10, your users can securely synchronize their user settings and app settings data to joined devices. Enterprise state roaming reduces the time to configure a new device.
Access to Microsoft Store for Business|	When your users access Microsoft Store for Business by using an Azure AD account, they can choose from an inventory of applications pre-selected by your organization.
Windows Hello	|Provide your users with secure and convenient access to work resources from joined devices.
Restriction of access	|Restrict user access to apps from only joined devices that meet your compliance policies.
Seamless access to on-premises resources|	Joined devices have seamless access to on-premises resources, when the device has line of sight to the on-premises domain controller.

Your organization is interested in using joined devices in their management strategy. As you plan for how to implement the feature, review these configuration points:

- **Consider connection options.** Connect your device to Azure AD in one of two ways:

  - **Register** your device to Azure AD so you can manage the device identity. Azure AD device registration provides the device with an identity that's used to authenticate the device when a user signs into Azure AD. You can use the identity to enable or disable the device.

  - **Join** your device, which is an extension of registering a device. Joining provides the benefits of registering, and also changes the local state of the device. Changing the local state enables your users to sign into a device by using an organizational work or school account instead of a personal account.

- **Consider combining registration with other solutions.** Combine registration with a mobile device management (MDM) solution like Microsoft Intune, to provide other device attributes in Azure AD. You can create conditional access rules that enforce access from devices to meet organization standards for security and compliance.

- **Consider other implementation scenarios.** Although AD Join is intended for organizations that don't have an on-premises Windows Server Active Directory infrastructure, it can be used for other scenarios like branch offices.


### Azure Active Directory self-service password reset

 The Azure Active Directory self-service password reset (SSPR) feature lets you give users the ability to bypass helpdesk and reset their own passwords.

 Examine the following characteristics and requirements of the SSPR feature:

- SSPR requires an Azure AD account with Global Administrator privileges to manage SSPR options. This account can always reset their own passwords, no matter what options are configured.

- SSPR uses a security group to limit the users who have SSPR privileges.

- All user accounts in your organization must have a valid license to use SSPR.

In the Azure portal, there are three options for the SSPR feature: None, Selected, and All

## User and group accounts

### Create user accounts

Every user who wants access to Azure resources needs an Azure user account. A user account has all the information required to authenticate the user during the sign-in process. Azure Active Directory (Azure AD) supports three types of user account

|User account|	Description|
|-|-|
Cloud identity|	A user account with a cloud identity is defined only in Azure AD. This type of user account includes administrator accounts and users who are managed as part of your organization. A cloud identity can be for user accounts defined in your Azure AD organization, and also for user accounts defined in an external Azure AD instance. When a cloud identity is removed from the primary directory, the user account is deleted.
Directory-synchronized identity|	User accounts that have a directory-synchronized identity are defined in an on-premises Active Directory. A synchronization activity occurs via Azure AD Connect to bring these user accounts in to Azure. The source for these accounts is Windows Server Active Directory.
Guest user|	Guest user accounts are defined outside Azure. Examples include user accounts from other cloud providers, and Microsoft accounts like an Xbox LIVE account. The source for guest user accounts is Invited user. Guest user accounts are useful when external vendors or contractors need access to your Azure resources.

### Create bulk user accounts

Azure Active Directory (Azure AD) supports several bulk operations, including bulk create and delete for user accounts. The most common approach for these operations is to use the Azure portal. Azure PowerShell can be used for bulk upload of user accounts.

- Only Global administrators or User administrators have privileges to create and delete user accounts in the Azure portal.

- To complete bulk create or delete operations, the admin fills out a comma-separated values (CSV) template of the data for the user accounts.

- Bulk operation templates can be downloaded from the Azure AD portal.

- Bulk lists of user accounts can be downloaded.

**Consider naming conventions.** Establish or implement a naming convention for your user accounts. Apply conventions to user account names, display names, and user aliases for consistency across the organization. Conventions for names and aliases can simplify the bulk create process by reducing areas of uniqueness in the CSV file. A convention for user names could begin with the user's last name followed by a period, and end with the user's first name

**Consider using initial passwords.** Implement a convention for the initial password of a newly created user. Design a system to notify new users about their passwords in a secure way. You might generate a random password and email it to the new user or their manager.

### Create group accounts

Azure Active Directory (Azure AD) allows your organization to define two different types of group accounts. **Security groups** are used to manage member and computer access to shared resources for a group of users. You can create a security group for a specific security policy and apply the same permissions to all members of a group. **Microsoft 365 groups** provide collaboration opportunities. Group members have access to a shared mailbox, calendar, files, SharePoint site, and more.

- Use security groups to set permissions for all group members at the same time, rather than adding permissions to each member individually.

- Add Microsoft 365 groups to enable group access for guest users outside your Azure AD organization.

- Security groups can be implemented only by an Azure AD administrator.

- Normal users and Azure AD admins can both use Microsoft 365 groups.

Access rights|	Description|
|-|-|
Assigned|	Add specific users as members of a group, where each user can have unique permissions.
Dynamic user	|Use dynamic membership rules to automatically add and remove group members. When member attributes change, Azure reviews the dynamic group rules for the directory. If the member attributes meet the rule requirements, the member is added to the group. If the member attributes no longer meet the rule requirements, the member is removed.
Dynamic device|	(Security groups only) Apply dynamic group rules to automatically add and remove devices in security groups. When device attributes change, Azure reviews the dynamic group rules for the directory. If the device attributes meet the rule requirements, the device is added to the security group. If the device attributes no longer meet the rule requirements, the device is removed.

### Create administrative units

As you design your strategy for managing identities and governance in Azure, planning for comprehensive management of your Azure Active Directory (Azure AD) infrastructure is critical. It can be useful to restrict administrative scope by using administrative units for your organization. The division of roles and responsibilities is especially helpful for organizations that have many independent divisions.

Think about how you can implement administrative units in your organization. Here are some considerations:

- Consider management tools. Review your options for managing AUs. You can use the Azure portal, PowerShell cmdlets and scripts, or Microsoft Graph.

- Consider role requirements in the Azure portal. Plan your strategy for administrative units according to role privileges. In the Azure portal, only the Global Administrator or Privileged Role Administrator users can manage AUs.

- Consider scope of administrative units. Recognize that the scope of an administrative unit applies only to management permissions. Members and admins of an administrative unit can exercise their default user permissions to browse other users, groups, or resources outside of their administrative unit.

## Subscriptions

### Azure regions

 A region is a geographical area on the planet containing at least one, but potentially multiple datacenters. The datacenters are in close proximity and networked together with a low-latency network.

 Here are some points to consider about regions:

- Azure is generally available in more than 60 regions in 140 countries.

- Azure has more global regions than any other cloud provider.

- Regions provide you with the flexibility and scale needed to bring applications closer to your users.

- Regions preserve data residency and offer comprehensive compliance and resiliency options for customers.

### Regional pairs

Most Azure regions are paired with another region within the same geography to make a regional pair (or paired regions). Regional pairs help to support always-on availability of Azure resources used by your infrastructure. The following table describes some prominent characteristics of paired regions:

Characteristic	|Description|
|-|-|
Physical isolation|	Azure prefers at least 300 miles of separation between datacenters in a regional pair. This principle isn't practical or possible in all geographies. Physical datacenter separation reduces the likelihood of natural disasters, civil unrest, power outages, or physical network outages affecting both regions at once.
Platform-provided replication|	Some services like Geo-Redundant Storage provide automatic replication to the paired region.
Region recovery order|	During a broad outage, recovery of one region is prioritized out of every pair. Applications that are deployed across paired regions are guaranteed to have one of the regions recovered with priority.
Sequential updates|	Planned Azure system updates are rolled out to paired regions sequentially (not at the same time). Rolling updates minimizes downtime, reduces bugs, and logical failures in the rare event of a bad update.
Data residency|	Regions reside within the same geography as their enabled set (except for the Brazil South and Singapore regions).

### Azure subscriptions

An Azure subscription is a logical unit of Azure services that's linked to an Azure account. An Azure account is an identity in Azure Active Directory (Azure AD) or a directory that's trusted by Azure AD, such as a work or school account. Subscriptions help you organize access to Azure cloud service resources, and help you control how resource usage is reported, billed, and paid.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-subscriptions/media/azure-subscriptions-e855533e.png)


- Every Azure cloud service belongs to a subscription.

- Each subscription can have a different billing and payment configuration.

- Multiple subscriptions can be linked to the same Azure account.

- More than one Azure account can be linked to the same subscription.

- Billing for Azure services is done on a per-subscription basis.

- If your Azure account is the only account associated with a subscription, you're responsible for the billing requirements.

- Programmatic operations for a cloud service might require a subscription ID.

### Things to consider when using subscriptions

Consider how many subscriptions your organization needs to support the business scenarios. As you plan, think about how you can organize your resources into resource groups.

- **Consider the types of Azure accounts required.** Determine the types of Azure accounts your uses will link with Azure subscriptions. You can use an Azure AD account or a directory that's trusted by Azure AD like a work or school account. If you don't belong to one of these organizations, you can sign up for an Azure account by using your Microsoft Account, which is also trusted by Azure AD.

- **Consider multiple subscriptions.** Set up different subscriptions and payment options according to your company's departments, projects, regional offices, and so on. A user can have more than one subscription linked to their Azure account, where each subscription pertains to resources, access privileges, limits, and billing for a specific project.

- **Consider a dedicated shared services subscription.** Plan for how users can share resources allocated in a single subscription. Use a shared services subscription to ensure all common network resources are billed together and isolated from other workloads. Examples of shared services subscriptions include Azure ExpressRoute and Virtual WAN.

- **Consider access to resources.** Every Azure subscription can be associated with an Azure AD. Users and services authenticate with Azure AD before they access resources.

To use Azure, you must have an Azure subscription. There are several ways to procure an Azure subscription. You can obtain an Azure subscription as part of an Enterprise agreement, or through a Microsoft reseller or Microsoft partner. Users can also open a personal free account for a trial subscription.

###  types of Azure subscriptions

Azure offers free and paid subscription options to meet different needs and requirements. The most common subscriptions are Free, Pay-As-You-Go, Enterprise Agreement, and Student. For your organization, you can choose a combination of procurement options and subscription choices to meet your business scenarios.

- **Consider trying Azure for free.** An Azure free subscription includes a monetary credit to spend on any service for the first 30 days. You get free access to the most popular Azure products for 12 months, and access to more than 25 products that are always free. An Azure free subscription is an excellent way for new users to get started.

  - To set up a free subscription, you need a phone number, a credit card, and a Microsoft account.
  - he credit card information is used for identity verification only. You aren't charged for any services until you upgrade to a paid subscription.
- **Consider paying monthly for used services.** A Pay-As-You-Go (PAYG) subscription charges you monthly for the services you used in that billing period. This subscription type is appropriate for a wide range of users, from individuals to small businesses, and many large organizations as well.

- **Consider using an Azure Enterprise Agreement.** An Enterprise Agreement provides flexibility to buy cloud services and software licenses under one agreement. The agreement comes with discounts for new licenses and Software Assurance. This type of subscription targets enterprise-scale organizations.

- **Consider supporting Azure for students.** An Azure for Students subscription includes a monetary credit that can be used within the first 12 months.

  - Students can select free services without providing a credit card during the sign-up process.
  - You must verify your student status through your organizational email address.


### Microsoft Cost Management

With Azure products and services, you pay only for what you use. As you create and use Azure resources, you're charged for the resources.

Microsoft Cost Management provides support for administrative billing tasks and helps you manage billing access to costs. You can use the product to monitor and control Azure spending, and optimize your Azure resource usage.

- Microsoft Cost Management shows organizational cost and usage patterns with advanced analytics. Costs are based on negotiated prices and factor in reservation and Azure Hybrid Benefit discounts. Predictive analytics are also available.

- Reports in Microsoft Cost Management show the usage-based costs consumed by Azure services and third-party Marketplace offerings. Collectively, the reports show your internal and external costs for usage and Azure Marketplace charges. The reports help you understand your spending and resource use, and can help find spending anomalies. Charges, such as reservation purchases, support, and taxes might not be visible in reports.

- The product uses Azure management groups, budgets, and recommendations to show clearly how your expenses are organized and how you might reduce costs.

- You can use the Azure portal or various APIs for export automation to integrate cost data with external systems and processes. Automated billing data export and scheduled reports are also available.

#### Things to consider when using Microsoft Cost Management

- Consider cost analysis. Take advantage of Microsoft Cost Management cost analysis features to explore and analyze your organizational costs. You can view aggregated costs by organization to understand where costs are accrued, and to identify spending trends. Monitor accumulated costs over time to estimate monthly, quarterly, or even yearly cost trends against a budget.

- Consider budget options. Use Microsoft Cost Management features to establish and maintain budgets. The product helps you plan for and meet financial accountability in your organization. Budgets help prevent cost thresholds or limits from being surpassed. You can utilize analysis data to inform others about their spending to proactively manage costs. The budget features help you see how company spending progresses over time.

- Consider recommendations. Review the Microsoft Cost Management recommendations to learn how you can optimize and improve efficiency by identifying idle and underutilized resources. Recommendations can reveal less expensive resource options. When you act on the recommendations, you change the way you use your resources to save money. Using recommendations is an easy process:

  1. View cost optimization recommendations to see potential usage inefficiencies.
  2. Act on a recommendation to modify your Azure resource use and implement a more cost-effective option.
  3. Verify the new action to make sure the change has the desired effect.
- Consider exporting cost management data. Microsoft Cost Management helps you work with your billing information. If you use external systems to access or review cost management data, you can easily export the data from Azure.

  - Set a daily scheduled export in comma-separated-value (CSV) format and store the data files in Azure storage.
  - Access your exported data from your external system.

  ### Resource tagging

  managing, and doing analysis on your resources.

Each resource tag consists of a name and a value. You could have the tag name Server and the value Production or Development, and then apply the tag/value pair to your Engineering computer resource

### Characteristics of Azure resource tags

- Each resource tag has a name and a value.

- The tag name remains constant for all resources that have the tag applied.

- The tag value can be selected from a defined set of values, or unique for a specific resource instance.

- A resource or resource group can have a maximum of 50 tag name/value pairs.

- Tags applied to a resource group aren't inherited by the resources in the resource group.

### Apply cost savings
Completed

Azure has several options that can help you gain significant cost savings for your organization. As you prepare your implementation plan for Azure subscriptions, services, and resources, consider the following cost saving advantages.


Cost saving |	Description|
|-|-|
Reservations|	Save money by paying ahead. You can pay for one year or three years of virtual machine, SQL Database compute capacity, Azure Cosmos DB throughput, or other Azure resources. Pre-paying allows you to get a discount on the resources you use. Reservations can significantly reduce your virtual machine, SQL database compute, Azure Cosmos DB, or other resource costs up to 72% on pay-as-you-go prices. Reservations provide a billing discount and don't affect the runtime state of your resources.
Azure Hybrid Benefits	|Access pricing benefits if you have a license that includes Software Assurance. Azure Hybrid Benefits helps maximize the value of existing on-premises Windows Server or SQL Server license investments when migrating to Azure. There's an Azure Hybrid Benefit Savings Calculator to help you determine your savings.
Azure Credits|	Use the monthly credit benefit to develop, test, and experiment with new solutions on Azure. As a Visual Studio subscriber, you could use Microsoft Azure at no extra charge. With your monthly Azure credit, Azure is your personal sandbox for development and testing.
Azure regions|	Compare pricing across regions. Pricing can vary from one region to another, even in the US. Double check the pricing in various regions to see if you can save by selecting a different region for your subscription.
Budgets|	Apply the budgeting features in Microsoft Cost Management to help plan and drive organizational accountability. With budgets, you can account for the Azure services you consume or subscribe to during a specific period. Monitor spending over time and inform others about their spending to proactively manage costs. Use budgets to compare and track spending as you analyze costs.
Pricing Calculator|	The Pricing Calculator provides estimates in all areas of Azure, including compute, networking, storage, web, and databases.

## Azure Policy

Azure Policy is a service in Azure that enables you to create, assign, and manage policies to control or audit your resources. These policies enforce different rules over your resource configurations so the configurations stay compliant with corporate standards. You apply the policies to your resources by using management groups.

### Management groups

 Azure management groups provide a level of scope and control above your subscriptions. You can use management groups as containers to manage access, policy, and compliance across your subscriptions.

 Consider the following characteristics of Azure management groups:

- By default, all new subscriptions are placed under the top-level management group, or root group.

- All subscriptions within a management group automatically inherit the conditions applied to that management group.

- A management group tree can support up to six levels of depth.

- Azure role-based access control authorization for management group operations isn't enabled by default.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-policy/media/management-groups-aa92c04a.png)

Review the following ways you can use management groups in Azure Policy to manage your subscriptions:

- Consider custom hierarchies and groups. Align your Azure subscriptions by using custom hierarchies and grouping that meet your company's organizational structure and business scenarios. You can use management groups to target policies and spending budgets across subscriptions.

- Consider policy inheritance. Control the hierarchical inheritance of access and privileges in policy definitions. All subscriptions within a management group inherit the conditions applied to the management group. You can apply policies to a management group to limit the regions available for creating virtual machines (VMs). The policy can be applied to all management groups, subscriptions, and resources under the initial management group, to ensure VMs are created only in the specified regions.

- Consider compliance rules. Organize your subscriptions into management groups to help meet compliance rules for individual departments and teams.

- Consider cost reporting. Use management groups to do cost reporting by department or for specific business scenarios. You can use management groups to report on budget details across subscriptions.

the management group. The ID value can't be changed after it's created because it's used throughout the Azure system to identify the management group. The display name for the management group is optional and can be changed at any time.

### Azure policies


Azure Policy is a service in Azure that you can use to create, assign, and manage policies. You can use policies to enforce rules on your resources to meet corporate compliance standards and service level agreements. Azure Policy runs evaluations and scans on your resources to make sure they're compliant.
 The main advantages of Azure Policy are in the areas of enforcement and compliance, scaling, and remediation. Azure Policy is also important for teams that run an environment that requires different forms of governance.

Advantage	|Description
|-|-|
Enforce rules and compliance|	Enable built-in policies, or build custom policies for all resource types. Support real-time policy evaluation and enforcement, and periodic or on-demand compliance evaluation.
Apply policies at scale	|Apply policies to a management group with control across your entire organization. Apply multiple policies and aggregate policy states with policy initiative. Define an exclusion scope.
Perform remediation|	Conduct real-time remediation, and remediation on your existing resources.
Exercise governance	|Implement governance tasks for your environment: - Support multiple engineering teams (deploying to and operating in the environment)   - Manage multiple subscriptions   - Standardize and enforce how cloud resources are configured - Manage regulatory compliance, cost control, security, and design consistency

### Create Azure policies

Azure Administrators use Azure Policy to create policies that define conventions for resources. A policy definition describes the compliance conditions for a resource, and the actions to complete when the conditions are met. One or more policy definitions are grouped into an initiative definition, to control the scope of your policies and evaluate the compliance of your resources.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-policy/media/implement-azure-policy-b4a4a47c.png)

**Step 1: Create policy definitions**
A policy definition expresses a condition to evaluate and the actions to perform when the condition is met. You can create your own policy definitions, or choose from built-in definitions in Azure Policy. You can create a policy definition to prevent VMs in your organization from being deployed, if they're exposed to a public IP address.

**Step 2: Create an initiative definition**
An initiative definition is a set of policy definitions that help you track your resource compliance state to meet a larger goal. You can create your own initiative definitions, or use built-in definitions in Azure Policy. You can use an initiative definition to ensure resources are compliant with security regulations.

**Step 3: Scope the initiative definition**
Azure Policy lets you control how your initiative definitions are applied to resources in your organization. You can limit the scope of an initiative definition to specific management groups, subscriptions, or resource groups.

**Step 4: Determine compliance**
After you assign an initiative definition, you can evaluate the state of compliance for all your resources. Individual resources, resource groups, and subscriptions within a scope can be exempted from having the policy rules affect it. Exclusions are handled individually for each assignment.

### Create policy definitions

Azure Policy offers built-in policy definitions to help you quickly configure control conditions for your resources. In addition to the built-in policies, you can also create your own definitions, or import definitions from other sources.

### Create an initiative definition

After you determine your policy definitions, the next step is to create an initiative definition for your policies. An initiative definition has one or more policy definitions. One example for using initiative definitions is to ensure your resources are compliant with security regulations.

You can create your own initiative definitions, or use built-in definitions in Azure Policy. You can sort the list of built-in initiatives by category to search for definitions for your organization.

After you create your initiative definition, the next step is to assign the initiative to establish the scope for the policies. The scope determines what resources or grouping of resources are affected by the conditions of the policies.

You have your policies defined, your initiative definition created, and your policies assigned to affected resources. The last step is to evaluate the state of compliance for your scoped resources.

## Role based Access Control

Role-based access control (RBAC) is a mechanism that can help you manage who can access your Azure resources. RBAC lets you determine what operations specific users can do on specific resources, and control what areas of a resource each user can access.

Here are some things you can do with Azure RBAC:

- Allow an application to access all resources in a resource group.

- Allow one user to manage VMs in a subscription, and allow another user to manage virtual networks.

- Allow a database administrator (DBA) group to manage SQL databases in a subscription.

- Allow a user to manage all resources in a resource group, such as VMs, websites, and subnets.

### Azure RBAC concepts
The following table describes the core concepts of Azure RBAC.

Concept|	Description	|Examples|
|-|-|-|
Security principal|	An object that represents something that requests access to resources.|	User, group, service principal, managed identity
Role definition	|A set of permissions that lists the allowed operations. Azure RBAC comes with built-in role definitions, but you can also create your own custom role definitions.	|Some built-in role definitions: Reader, Contributor, Owner, User Access Administrator
Scope	|The boundary for the requested level of access, or "how much" access is granted.|	Root, management group, subscription, resource group, resource
Assignment|	An assignment attaches a role definition to a security principal at a particular scope. Users can grant the access described in a role definition by creating (attaching) an assignment for the role.|	- Assign the User Access Administrator role to an admin group scoped to a management group - Assign the Contributor role to a user scoped to a subscription


### role definition

A role definition consists of sets of permissions that are defined in a JSON file. Each permission set has a name, such as Actions or NotActions that describes the purpose of the permissions. Some examples of permission sets include:

- Actions permissions identify what actions are allowed.

- NotActions permissions specify what actions aren't allowed.

- DataActions permissions indicate how data can be changed or used.

- AssignableScopes permissions list the scopes where a role definition can be assigned.


![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-role-based-access-control/media/role-definition-bf297cac.png)

The Actions permissions show the Contributor role has all action privileges. The asterisk "*" wildcard means "all." The NotActions permissions narrow the privileges provided by the Actions set, and deny three actions:

- Authorization/*/Delete: Not authorized to delete or remove for "all."
- Authorization/*/Write: Not authorized to write or change for "all."
- Authorization/elevateAccess/Action: Not authorized to increase the level or scope of access privileges.

The Contributor role also has two DataActions permissions to specify how data can be affected:

- "NotDataActions": []: No specific actions are listed. Therefore, all actions can affect the data.
- "AssignableScopes": ["/"]: The role can be assigned for all scopes that affect data. The backslash {\} wildcard means "all."

### Role definition characteristics

- Azure RBAC provides built-in roles and permissions sets. You can also create custom roles and permissions.

- The Owner built-in role has the highest level of access privilege in Azure.

- The system subtracts NotActions permissions from Actions permissions to determine the effective permissions for a role.

- The AssignableScopes permissions for a role can be management groups, subscriptions, resource groups, or resources.

### Role permissions

Use the Actions and NotActions permissions together to grant and deny the exact privileges for each role. The Actions permissions can provide the breadth of access and the NotActons permissions can narrow the access

The following table shows how the Actions or NotActions permissions are used in the definitions for three built-in roles: Owner, Contributor, and Reader. The permissions are narrowed from the Owner role to the Contributor and Reader roles to limit access.

Role name	|Description|	Actions permissions|	NotActions permissions
|-|-|-|-|
Owner	|Allow all actions|	\\*|	n/a
Contributor	|Allow all actions, except write or delete role assignment|	\\*	|- Microsoft.Authorization/\*/Delete - Microsoft.Authorization/\*/Write - Microsoft.Authorization/elevateAccess/Action
Reader|	Allow all read actions|	\\*/read|	n/a

### Role scopes

After you define the role permissions, you use the AssignableScopes permissions to specify how the role can be assigned.

### Compare Azure roles to Azure Active Directory roles

Three types of roles are available for access management in Azure:

- Classic subscription administrator roles

- Azure role-based access control (RBAC) roles

- Azure Active Directory (Azure AD) administrator roles

||Azure RBAC roles|	Azure AD admin roles|
|-|-|-|
Access management|	Manages access to Azure resources	|Manages access to Azure AD resources|
Scope assignment|	Scope can be specified at multiple levels, including management groups, subscriptions, resource groups, and resources	|Scope is specified at the tenant level|
Role definitions|	Roles can be defined via the Azure portal, the Azure CLI, Azure PowerShell, Azure Resource Manager templates, and the REST API	|Roles can be defined via the Azure admin portal, Microsoft 365 admin portal, and Microsoft Graph Azure AD PowerShell

### fundamental Azure RBAC roles

The following table describes four built-in Azure RBAC role definitions that are considered fundamental.

Fundamental role|Description
|-|-|
Owner	|The Owner role has full access to all resources, including the right to delegate access to others. The Service Administrator and Co-Administrators roles are assigned the Owner role at the subscription scope.
Contributor	|The Contributor role can create and manage all types of Azure resources. This role can't grant access to others.
Reader	|The Reader role can view existing Azure resources.
User Access Administrator	|The User Access Administrator role can manage user access to Azure resources.

## Configure azure resources with tools


### Azure portal

The Azure portal lets you build, manage, and monitor everything from simple web apps to complex cloud applications in a single, unified console.

- Search resources, services, and docs.
- Manage resources.
- Create customized dashboards and favorites.
- Access the Cloud Shell.
- Receive notifications.
- Links to the Azure documentation.

### Azure Cloud Shell

Azure Cloud Shell is an interactive, browser-accessible shell for managing Azure resources. It provides the flexibility of choosing the shell experience that best suits the way you work. Linux users can opt for a Bash experience, while Windows users can opt for PowerShell.

- Is temporary and requires a new or existing Azure Files share to be mounted.
- Offers an integrated graphical text editor based on the open-source Monaco Editor.
- Authenticates automatically for instant access to your resources.
- Runs on a temporary host provided on a per-session, per-user basis.
- Times out after 20 minutes without interactive activity.
Requires a resource group, storage account, and Azure File share.
- Uses the same Azure file share for both Bash and PowerShell.
- Is assigned to one machine per user account.
- Persists $HOME using a 5-GB image held in your file share.
- Permissions are set as a regular Linux user in Bash.

### Azure PowerShell

Azure PowerShell is a module that you add to Windows PowerShell or PowerShell Core to enable you to connect to your Azure subscription and manage resources. Azure PowerShell requires PowerShell to function. PowerShell provides services such as the shell window and command parsing. Azure PowerShell adds the Azure-specific commands.

Azure PowerShell is also available two ways: inside a browser via the Azure Cloud Shell, or with a local installation on Linux, macOS, or the Windows operating system. 

**Az module**

Az is the formal name for the Azure PowerShell module containing cmdlets to work with Azure features. It contains hundreds of cmdlets that let you control nearly every aspect of every Azure resource. You can work with the following features, and more:

- Resource groups
- Storage
- VMs
- Azure AD
- Containers
- Machine learning

### Azure CLI

Azure CLI is a command-line program to connect to Azure and execute administrative commands on Azure resources. It runs on Linux, macOS, and Windows, and allows administrators and developers to execute their commands through a terminal, command-line prompt, or script instead of a web browser.

Azure CLI lets you control nearly every aspect of every Azure resource. You can work with resource groups, storage, VMs, Azure Active Directory (Azure AD), containers, machine learning, and so on.

Commands in the CLI are structured in groups and subgroups. Each group represents a service provided by Azure, and the subgroups divide commands for these services into logical groupings. For example, the storage group contains subgroups including account, blob, share, and queue.

So, how do you find the particular commands you need? One way is to use **az find**.  

    az find blob

If you already know the name of the command you want, the **--help** argument for that command will get you more detailed information on the command, and for a command group, a list of the available subcommands 

    az storage blob --help

## Azure Resource Manager

Azure Resource Manager enables you to work with the resources in your solution as a group. You can deploy, update, or delete all the resources for your solution in a single, coordinated operation. You use a template for deployment and that template can work for different environments such as testing, staging, and production. Azure Resource Manager provides security, auditing, and tagging features to help you manage your resources after deployment.

Azure Resource Manager provides a consistent management layer to perform tasks through Azure PowerShell, Azure CLI, Azure portal, REST API, and client SDKs. Choose the tools and APIs that work best for you.

![](https://learn.microsoft.com/en-us/training/wwl-azure/use-azure-resource-manager/media/resource-manager-016a1bac.png)

### Benefits Azure Resource Manager

Azure Resource Manager provides several benefits:

- You can deploy, manage, and monitor all the resources for your solution as a group, rather than handling these resources individually.
- You can repeatedly deploy your solution throughout the development lifecycle and have confidence your resources are deployed in a consistent state.
- You can manage your infrastructure through declarative templates rather than scripts.
- You can define the dependencies between resources so they're deployed in the correct order.
- You can apply access control to all services in your resource group because Role-Based Access Control (RBAC) is natively integrated into the management platform.
- You can apply tags to resources to logically organize all the resources in your subscription.
- You can clarify your organization's billing by viewing costs for a group of resources sharing the same tag.

### Azure resource terminology

- resource - A manageable item that is available through Azure. Some common resources are a virtual machine, storage account, web app, database, and virtual network, but there are many more.
- resource group - A container that holds related resources for an Azure solution. The resource group can include all the resources for the solution, or only those resources that you want to manage as a group. You decide how you want to allocate resources to resource groups based on what makes the most sense for your organization.
- resource provider - A service that supplies the resources you can deploy and manage through Resource Manager. Each resource provider offers operations for working with the resources that are deployed. Some common resource providers are Microsoft.Compute, which supplies the virtual machine resource, Microsoft.Storage, which supplies the storage account resource, and Microsoft.Web, which supplies resources related to web apps.
- template - A JavaScript Object Notation (JSON) file that defines one or more resources to deploy to a resource group. It also defines the dependencies between the deployed resources. The template can be used to deploy the resources consistently and repeatedly.
- declarative syntax - Syntax that lets you state "Here is what I intend to create" without having to write the sequence of programming commands to create it. The Resource Manager template is an example of declarative syntax. In the file, you define the properties for the infrastructure to deploy to Azure.

Resource Groups are at their simplest a logical collection of resources. There are a few rules for resource groups.

- Resources can only exist in one resource group.
- Resource Groups cannot be renamed.
- Resource Groups can have resources of many different types (services).
- Resource Groups can have resources from many different regions.
- A resource group can contain resources that reside in different regions.
- All the resources in your group should share the same lifecycle. You deploy, update, and delete them together.
- You can move a resource from one resource group to another group. Limitations do apply to moving resources.

### Azure Resource Manager locks

esource Manager locks allow organizations to put a structure in place that prevents the accidental deletion of resources in Azure.

- You can associate the lock with a subscription, resource group, or resource.
- Locks are inherited by child resources.

**Lock types**
There are two types of resource locks.

- Read-Only locks, which prevent any changes to the resource.
- Delete locks, which prevent deletion.


### Determine resource limits

Azure lets you view resource usage against limits. This is helpful to track current usage, and plan for future use.

- The limits shown are the limits for your subscription.
- When you need to increase a default limit, there is a Request Increase link.
- All resources have a maximum limit listed in Azure limits.
- If you are at the maximum limit, the limit can't be increased.

Azure limits list: 
https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/azure-subscription-service-limits?toc=%2Fazure%2Fnetworking%2Ftoc.json

## Azure Resource Manager template advantages

An Azure Resource Manager template precisely defines all the Resource Manager resources in a deployment. You can deploy a Resource Manager template into a resource group as a single operation.

Using Resource Manager templates will make your deployments faster and more repeatable. For example, you no longer have to create a VM in the portal, wait for it to finish, and then create the next VM. Resource Manager template takes care of the entire deployment for you.

### Template benefits
- **Templates improve consistency.** Resource Manager templates provide a common language for you and others to describe your deployments. Regardless of the tool or SDK that you use to deploy the template, the structure, format, and expressions inside the template remain the same.
- **Templates help express complex deployments.** Templates enable you to deploy multiple resources in the correct order. For example, you wouldn't want to deploy a virtual machine prior to creating an operating system (OS) disk or network interface. Resource Manager maps out each resource and its dependent resources, and creates dependent resources first. Dependency mapping helps ensure that the deployment is carried out in the correct order.
- **Templates reduce manual, error-prone tasks.** Manually creating and connecting resources can be time consuming, and it's easy to make mistakes. Resource Manager ensures that the deployment happens the same way every time.
- **Templates are code.** Templates express your requirements through code. Think of a template as a type of Infrastructure as Code that can be shared, tested, and versioned similar to any other piece of software. Also, because templates are code, you can create a "paper trail" that you can follow. The template code documents the deployment. Most users maintain their templates under some kind of revision control, such as GIT. When you change the template, its revision history also documents how the template (and your deployment) has evolved over time.
- **Templates promote reuse.** Your template can contain parameters that are filled in when the template runs. A parameter can define a username or password, a domain name, and so on. Template parameters enable you to create multiple versions of your infrastructure, such as staging and production, while still using the exact same template.
- **Templates are linkable.** You can link Resource Manager templates together to make the templates themselves modular. You can write small templates that each define a piece of a solution, and then combine them to create a complete system.
- **Templates simplify orchestration.** You only need to deploy the template to deploy all of your resources. Normally this would take multiple operations.


### Azure Resource Manager template schema


Azure Resource Manager templates are written in JSON, which allows you to express data stored as an object (such as a virtual machine) in text. A JSON document is essentially a collection of key-value pairs. Each key is a string, whose value can be:

- A string
- A number
- A Boolean expression
- A list of values
- An object (which is a collection of other key-value pairs)

      {
        "$schema": "http://schema.management.​azure.com/schemas/2019-04-01/deploymentTemplate.json#",​
        "contentVersion": "",​
        "parameters": {},​
        "variables": {},​
        "functions": [],​
        "resources": [],​
        "outputs": {}​
      }

Element name|Required|Description|
|-|-|-|
$schema| Yes |Location of the JSON schema file that describes the version of the template language. Use the URL shown in the preceding example.
contentVersion|Yes|Version of the template (such as 1.0.0.0). You can provide any value for this element. Use this value to document significant changes in your template. This value can be used to make sure that the right template is being used.
parameters|No|Values that are provided when deployment is executed to customize resource deployment.
variables|No|Values that are used as JSON fragments in the template to simplify template language expressions.
functions|No|User-defined functions that are available within the template.
resources|Yes|Resource types that are deployed or updated in a resource group.
outputs|No|Values that are returned after deployment.

In the parameters section of the template, you specify which values you can input when deploying the resources. The available properties for a parameter are:

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
  
Azure Quickstart Templates are Azure Resource Manager templates provided by the Azure community.  https://learn.microsoft.com/en-us/samples/browse/?expanded=azure&products=azure-resource-manager

### Bicep templates

Azure Bicep is a domain-specific language (DSL) that uses declarative syntax to deploy Azure resources. It provides concise syntax, reliable type safety, and support for code reuse.

You can use Bicep instead of JSON to develop your Azure Resource Manager templates (ARM templates). The JSON syntax to create an ARM template can be verbose and require complicated expressions. Bicep syntax reduces that complexity and improves the development experience. Bicep is a transparent abstraction over ARM template JSON and doesn't lose any of the JSON template capabilities.

When you deploy a resource or series of resources to Azure, you submit the Bicep template to Resource Manager, which still requires JSON templates. The tooling that's built into Bicep converts your Bicep template into a JSON template. This process is known as transpilation

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-resources-arm-templates/media/bicep.png)

Bicep provides many improvements over JSON for template authoring, including:

- **Simpler syntax:** Bicep provides a simpler syntax for writing templates. You can reference parameters and variables directly, without using complicated functions. String interpolation is used in place of concatenation to combine values for names and other items. You can reference the properties of a resource directly by using its symbolic name instead of complex reference statements. These syntax improvements help both with authoring and reading Bicep templates.

- **Modules:** You can break down complex template deployments into smaller module files and reference them in a main template. These modules provide easier management and greater reusability.

- **Automatic dependency management:** In most situations, Bicep automatically detects dependencies between your resources. This process removes some of the work involved in template authoring.

- **Type validation and IntelliSense:** The Bicep extension for Visual Studio Code features rich validation and IntelliSense for all Azure resource type API definitions. This feature helps provide an easier authoring experience.

## Virtual Networks

An Azure Virtual Network (VNet) is a representation of your own network in the cloud. It is a logical isolation of the Azure cloud dedicated to your subscription. You can use VNets to provision and manage virtual private networks (VPNs) in Azure and, optionally, link the VNets with other VNets in Azure, or with your on-premises IT infrastructure to create hybrid or cross-premises solutions. Each VNet you create has its own CIDR block and can be linked to other VNets and on-premises networks if the CIDR blocks do not overlap. You also have control of DNS server settings for VNets, and segmentation of the VNet into subnets.

Virtual networks can be used in many ways.

- **Create a dedicated private cloud-only VNet.** Sometimes you don't require a cross-premises configuration for your solution. When you create a VNet, your services and VMs within your VNet can communicate directly and securely with each other in the cloud. You can still configure endpoint connections for the VMs and services that require internet communication, as part of your solution.
- **Securely extend your data center With VNets.** You can build traditional site-to-site (S2S) VPNs to securely scale your datacenter capacity. S2S VPNs use IPSEC to provide a secure connection between your corporate VPN gateway and Azure.
- **Enable hybrid cloud scenarios.** VNets give you the flexibility to support a range of hybrid cloud scenarios. You can securely connect cloud-based applications to any type of on-premises system such as mainframes and Unix systems.

### Subnets

A virtual network can be segmented into one or more subnets. Subnets provide logical divisions within your network. Subnets can help improve security, increase performance, and make it easier to manage the network.

Each subnet contains a range of IP addresses that fall within the virtual network address space. The range must be unique within the address space for the virtual network. The range can't overlap with other subnet address ranges within the virtual network. The address space must be specified by using Classless Inter-Domain Routing (CIDR) notation.

**Azure reserves the first four and last IP address for a total of 5 IP addresses within each subnet.**

- **Service requirements.** Each service directly deployed into virtual network has specific requirements for routing and the types of traffic that must be allowed into and out of subnets. A service may require, or create, their own subnet, so there must be enough unallocated space for them to do so. For example, if you connect a virtual network to an on-premises network using an Azure VPN Gateway, the virtual network must have a dedicated subnet for the gateway.
- **Virtual appliances.** Azure routes network traffic between all subnets in a virtual network, by default. You can override Azure's default routing to prevent Azure routing between subnets, or to route traffic between subnets through a network virtual appliance. So, if you require that traffic between resources in the same virtual network flow through a network virtual appliance (NVA), deploy the resources to different subnets.
- **Service endpoints.** You can limit access to Azure resources such as an Azure storage account or Azure SQL database, to specific subnets with a virtual network service endpoint. Further, you can deny access to the resources from the internet. You may create multiple subnets, and enable a service endpoint for some subnets, but not others.
- **Network security groups.** You can associate zero or one network security group to each subnet in a virtual network. You can associate the same, or a different, network security group to each subnet. Each network security group contains rules, which allow or deny traffic to and from sources and destinations.
- **Private Links.** Azure Private Link provides private connectivity from a virtual network to Azure platform as a service (PaaS), customer-owned, or Microsoft partner services. It simplifies the network architecture and secures the connection between endpoints in Azure by eliminating data exposure to the public internet.

### IP addressing

You can assign IP addresses to Azure resources to communicate with other Azure resources, your on-premises network, and the Internet. There are two types of Azure IP addresses: public and private IP addresses.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-networks/media/ip-addressing-54476e47.png)

- Private IP addresses: For communication within an Azure virtual network (VNet), and your on-premises network, when you use a VPN gateway or ExpressRoute circuit to extend your network to Azure.
- Public IP addresses: For communication with the Internet, including Azure public-facing services.

### Static vs dynamic addressing

IP addresses can also be statically assigned or dynamically assigned. Static IP addresses don't change and are best for certain situations such as:

- DNS name resolution, where a change in the IP address would require updating host records.
- IP address-based security models that require apps or services to have a static IP address.
- TLS/SSL certificates linked to an IP address.
- Firewall rules that allow or deny traffic using IP address ranges.
- Role-based VMs such as Domain Controllers and DNS servers.

### Associate public IP addresses

A public IP address resource can be associated with virtual machine network interfaces, internet-facing load balancers, VPN gateways, and application gateways.

Public IP addresses|IP address association|Dynamic|Static|
|-|-|-|-|
Virtual Machine|NIC|Yes|Yes|
Load Balancer|Front-end configuration|Yes|Yes|
VPN Gateway|Gateway IP configuration|Yes|Yes*
Application Gateway|Front-end configuration|Yes|Yes*|

Static IP addresses only available on certain SKUs.

### Address SKUs
When you create a public IP address, you are given a SKU choice of either Basic or Standard. Your SKU choice affects the IP assignment method, security, available resources, and redundancy. This table summarizes the differences.

Feature|Basic SKU|Standard SKU|
|-|-|-|
IP assignment|Static or dynamic|Static
Security|Open by default|Are secure by default and closed to inbound traffic
Resources|Network interfaces, VPN Gateways, Application Gateways, and Internet-facing load balancers|Network interfaces or public standard load balancers
Redundancy|Not zone redundant|Zone redundant by default|

### Associate private IP addresses

A private IP address resource can be associated with virtual machine network interfaces, internal load balancers, and application gateways. Azure can provide an IP address (dynamic assignment) or you can assign the IP address (static assignment).

Private IP Addresses|IP address association|Dynamic|Static|
|-|-|-|-|
Virtual Machine|NIC|Yes|Yes|
Internal Load Balancer|Front-end configuration|Yes|Yes|
Application Gateway|Front-end configuration|Yes|Yes|


A private IP address is allocated from the address range of the virtual network subnet a resource is deployed in.

- **Dynamic.** Azure assigns the next available unassigned or unreserved IP address in the subnet's address range. For example, Azure assigns 10.0.0.10 to a new resource, if addresses 10.0.0.4-10.0.0.9 are already assigned to other resources. Dynamic is the default allocation method.
- **Static.** You select and assign any unassigned or unreserved IP address in the subnet's address range. For example, if a subnet's address range is 10.0.0.0/16 and addresses 10.0.0.4-10.0.0.9 are already assigned to other resources, you can assign any address between 10.0.0.10 - 10.0.255.254.

## Security Groups

You can limit network traffic to resources in a virtual network using a network security group (NSG). A network security group contains a list of security rules that allow or deny inbound or outbound network traffic. An NSG can be associated to a subnet or a network interface. A network security group can be associated multiple times.

### Subnets
You can assign Network Security Groups to subnets and create protected screened subnets (also called a DMZ). These NSGs can restrict traffic flow to all the machines that reside within that subnet. Each subnet can have zero, or one, associated network security groups.

### Network interfaces
You can assign NSGs to a NIC so that all the traffic that flows through that NIC is controlled by NSG rules. Each network interface that exists in a subnet can have zero, or one, associated network security groups.

### Network security group rules

Security rules in network security groups enable you to filter the type of network traffic that can flow in and out of virtual network subnets and network interfaces. Azure creates several default security rules within each network security group.

You can add more rules by specifying:

- Name
- Priority Rules are processed in priority order; **the lower the number, the higher the priority.** We recommend leaving gaps between rules - 100, 200, 300, etc. - so that it's easier to add new rules without having to edit existing rules.
- Port
- Protocol (Any, TCP, UDP)  The service specifies the destination protocol and port range for this rule. You can choose a predefined service, like RDP or SSH, or provide a custom port range. There are a large number of services to select from.
- Source (Any, IP Addresses, Service tag) The source filter can be Any, an IP address range, an Application security group, or a default tag. It specifies the incoming traffic from a specific source IP address range that will be allowed or denied by this rule.
- Destination (Any, IP Addresses, Virtual Network) The destination filter can be Any, an IP address range, an application security group, or a default tag. It specifies the outgoing traffic for a specific destination IP address range that will be allowed or denied by this rule.
- Action (Allow or Deny)

Azure creates the default rules in each network security group that you create. You cannot remove the default rules, but you can override them by creating rules with higher priorities.

NSGs are evaluated independently, and an “allow” rule must exist at both levels otherwise traffic won't be allowed.

For incoming traffic, the NSG set at the subnet level is evaluated first, then the NSG set at the NIC level is evaluated. For outgoing traffic, it's the reverse.

If you have several NSGs and aren't sure which security rules are being applied, you can use the Effective security rules link. For example, you could verify the security rules being applied to a network interface.

### Application Security Groups

Application Security Groups (ASGs) ) logically group virtual machines by workload and define network security rules based on those groups. ASGs work in the same way as NSGs but provide an application-centric way of looking at your infrastructure. You join virtual machines to the ASG, and then use the ASG as a source or destination in NSG rule


### Advantages of using an application security group

This configuration has several advantages:

- The configuration doesn’t require specific IP addresses. It would be difficult to specify IP addresses because of the number of servers and because the IP addresses could change. You also don't need to arrange the servers into a specific subnet.

- This configuration doesn't require multiple rule sets. You don't need to create a separate rule for each VM. You can dynamically apply new rules to ASG. New security rules are automatically applied to all the VMs in the Application Security Group.

- The configuration is easy to maintain and understand since is based on workload usage.

## Azure Firewall

Azure Firewall is a managed, cloud-based network security service that protects your Azure Virtual Network resources. It's a fully stateful firewall as a service with built-in high availability and unrestricted cloud scalability. You can centrally create, enforce, and log application and network connectivity policies across subscriptions and virtual networks.

Azure Firewall uses a static public IP address for your virtual network resources allowing outside firewalls to identify traffic originating from your virtual network. The service is fully integrated with Azure Monitor for logging and analytics.

### Azure Firewall features
- **Built-in high availability.** High availability is built in, so additional load balancers aren't required. There's nothing you need to configure.
- **Availability Zones.** Azure Firewall can be configured during deployment to span multiple Availability Zones for increased availability.
- **Unrestricted cloud scalability.** Azure Firewall can scale up as much as you need to accommodate changing network traffic flows, so you don't need to budget for your peak traffic.
- **Application FQDN filtering rules.** You can limit outbound HTTP/S traffic or Azure SQL traffic to a specified list of fully qualified domain names (FQDN) including wild cards.
- **Network traffic filtering rules.** You can centrally create allow or deny network filtering rules by source and destination IP address, port, and protocol. Azure Firewall is fully stateful, so it can distinguish legitimate packets for different types of connections. Rules are enforced and logged across multiple subscriptions and virtual networks.
- **Threat intelligence.** Threat intelligence-based filtering can be enabled for your firewall to alert and deny traffic from/to known malicious IP addresses and domains. The IP addresses and domains are sourced from the Microsoft Threat Intelligence feed.
- **Multiple public IP addresses.** You can associate multiple public IP addresses with your firewall.

It's recommended to use a hub-spoke network topology when deploying a firewall.

- The hub is a virtual network in Azure that acts as a central point of connectivity to your on-premises network.
- The spokes are virtual networks that peer with the hub, and can be used to isolate workloads.
- Traffic flows between the on-premises datacenter and the hub through an ExpressRoute or VPN gateway connection.

![Diagram with three subnets. Numbers are aligned with the subnets.](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-firewall/media/firewall-tasks-7b6dbe0f.png)

The benefits of this topology include:

- Cost savings by centralizing services that can be shared by multiple workloads, such as network virtual appliances (NVAs) and DNS servers, in a single location.
- Overcome subscriptions limits by peering virtual networks from different subscriptions to the central hub.
- Separation of concerns between central IT (SecOps, InfraOps) and workloads (DevOps).

Typical uses for a hub-spoke network architecture include:

- Workloads in different environments that require shared services. For example, development and testing environments that require DNS. Shared services are placed in the hub virtual network. Each environment is deployed to a spoke to maintain isolation.
- Workloads that don't require connectivity to each other, but require access to shared services.
- Enterprises that require central control over security aspects. For example, a firewall in the hub and workloads in each spoke.

### Firewall Rules

There are three kinds of rules that you can configure in the Azure Firewall. Remember, by default, Azure Firewall blocks all traffic, unless you enable it.

#### **NAT rules**
You can configure Azure Firewall Destination Network Address Translation (DNAT) to translate and filter inbound traffic to your subnets. Each rule in the NAT rule collection is used to translate your firewall public IP and port to a private IP and port. Scenarios where NAT rules might be helpful are publishing SSH, RDP, or non-HTTP/S applications to the Internet. A NAT rule that routes traffic must be accompanied by a matching network rule to allow the traffic. Configuration settings include:

- **Name**: A label for the rule.
- **Protocol**: TCP or UDP.
- **Source Address**: * (Internet), a specific Internet address, or a CIDR block.
- **Destination Address**: The external address of the firewall that the rule will inspect.
- **Destination Ports**: The TCP or UDP ports that the rule will listen to on the external IP address of the firewall.
- **Translated Address**: The IP address of the service (virtual machine, internal load balancer, and so on) that privately hosts or presents the service.
- **Translated Port**: The port that the inbound traffic will be routed to by the Azure Firewall.

#### **Network rules**
Any non-HTTP/S traffic that will be allowed to flow through the firewall must have a network rule. For example, if resources in one subnet must communicate with resources in another subnet, then you would configure a network rule from the source to the destination. Configuration settings include:

- **Name**: A friendly label for the rule.
- **Protocol**: TCP, UDP, ICMP (ping and traceroute) or Any.
- **Source Address**: The address or CIDR block of the source.
- **Destination Addresses**: The addresses or CIDR blocks of the destination(s).
- **Destination Ports**: The destination port of the traffic.

#### **Application rules**
Application rules define fully qualified domain names (FQDNs) that can be accessed from a subnet. For example, specify the Windows Update network traffic through the firewall. Configuration settings include:

- **Name**: A friendly label for the rule.
- **Source Addresses**: The IP address of the source.
- **Protocol:Port:** HTTP/HTTPS and the port that the web server is listening on.
- **Target FQDNs**: The domain name of the service, such as www.contoso.com. Wildcards can be used. An FQDN tag represents a group of FQDNs associated with well known Microsoft services. Example FQDN tags include Windows Update, App Service Environment, and Azure Backup.

### Rule processing
When a packet is being inspected to determine if it is allowed or not, the rules are processed in this order:

Network Rules
Application Rules (network and application)
Once a rule is found that allows the traffic through, no more rules are checked.

## Azure DNS

### Initial domain name
When you create an Azure subscription, an Azure AD domain is automatically created. This instance of the domain has an initial domain name in the form domainname.onmicrosoft.com. The initial domain name is intended to be used until a custom domain name is verified.

### Custom domain name
The initial domain name can't be changed or deleted. You can however add a routable custom domain name you control. A custom domain name simplifies the user sign-on experience. Users can use credentials they are familiar with. For example, a contosogold.onmicrosoft.com, could be assigned to contosogold.com.

### information about domain names
You must be a global administrator to perform domain management tasks. The global administrator is the user who created the subscription.
Domain names in Azure AD are globally unique. When one Azure AD directory has verified a domain name, other directories can't use that name.
Before a custom domain name can be used by Azure AD, the custom domain name must be added to your directory and verified.

### Azure DNS zones

Azure DNS provides a reliable, secure DNS service to manage and resolve domain names in a virtual network without needing to add a custom DNS solution.

A DNS zone hosts the DNS records for a domain. So, to start hosting your domain in Azure DNS, you need to create a DNS zone for that domain name. Each DNS record for your domain is then created inside this DNS zone.

From the Azure portal, you can easily add a DNS zone. Information for the DNS zone includes name, number of records, resource group, location, subscription, and name servers.

### Delegate DNS domains

To delegate your domain to Azure DNS, you first need to know the name server names for your zone. Each time a DNS zone is created Azure DNS allocates name servers from a pool. Once the Name Servers are assigned, Azure DNS automatically creates authoritative NS records in your zone.

Once the DNS zone is created, and you have the name servers, you need to update the parent domain. Each registrar has their own DNS management tools to change the name server records for a domain. In the registrar’s DNS management page, edit the NS records and replace the NS records with the ones Azure DNS created.

### Child domains
If you want to set up a separate child zone, you can delegate a subdomain in Azure DNS. For example, after configuring contoso.com in Azure DNS, you could configure a separate child zone for partners.contoso.com.

Setting up a subdomain follows the same process as typical delegation. The only difference is that NS records must be created in the parent zone contoso.com in Azure DNS, rather than in the domain registrar.

### Add DNS record sets

It's important to understand the difference between DNS record sets and individual DNS records. A record set is a collection of records in a zone that have the same name and are the same type.

A record set cannot contain two identical records. Empty record sets (with zero records) can be created, but do not appear on the Azure DNS name servers. Record sets of type CNAME can contain one record at most.

The Add record set page will change depending on the type of record you select. For an A record, you will need the TTL (Time to Live) and IP address. The time to live, or TTL, specifies how long each record is cached by clients.

### Private DNS zones

When using private DNS zones, you can use your own custom domain names rather than the Azure-provided names. Using custom domain names helps you to tailor your virtual network architecture to best suit your organization's needs. It provides name resolution for virtual machines (VMs) within a virtual network and between virtual networks. Additionally, you can configure zones names with a split-horizon view, which allows a private and a public DNS zone to share the name.

Azure private DNS benefits
- Removes the need for custom DNS solutions. Previously, many customers created custom DNS solutions to manage DNS zones in their virtual network. You can now perform DNS zone management by using the native Azure infrastructure. This removes the burden of creating and managing custom DNS solutions.
- Use all common DNS records types. Azure DNS supports A, AAAA, CNAME, MX, PTR, SOA, SRV, and TXT records.
- Automatic hostname record management. Along with hosting your custom DNS records, Azure automatically maintains hostname records for the VMs in the specified virtual networks. In this scenario, you can optimize the domain names you use without needing to create custom DNS solutions or modify applications.
- Hostname resolution between virtual networks. Unlike Azure-provided host names, private DNS zones can be shared between virtual networks. This capability simplifies cross-network and service-discovery scenarios, such as virtual network peering.
- Familiar tools and user experience. To reduce the learning curve, this new offering uses well-established Azure DNS tools (PowerShell, Azure Resource Manager templates, and the REST API).
- Split-horizon DNS support. With Azure DNS, you can create zones with the same name that resolve to different answers from within a virtual network and from the public internet. A typical scenario for split-horizon DNS is to provide a dedicated version of a service for use inside your virtual network.
- Available in all Azure regions. The Azure DNS private zones feature is available in all Azure regions in the Azure public cloud.


## Virtual Network Peering

Perhaps the simplest and quickest way to connect your VNets is to use VNet peering. Virtual network peering enables you to seamlessly connect two Azure virtual networks. Once peered, the virtual networks appear as one, for connectivity purposes. There are two types of VNet peering.

- **Regional VNet peering** connects Azure virtual networks in the same region.
- **Global VNet peering** connects Azure virtual networks in different regions. When creating a global peering, the peered virtual networks can exist in any Azure public cloud region or China cloud regions, but not in Government cloud regions. You can only peer virtual networks in the same region in Azure Government cloud regions.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-vnet-peering/media/network-peering-5beae28a.png)

### Benefits of virtual network peering
The benefits of using local or global virtual network peering, include:

- Private. Network traffic between peered virtual networks is private. Traffic between the virtual networks is kept on the Microsoft backbone network. No public Internet, gateways, or encryption is required in the communication between the virtual networks.
- Performance. A low-latency, high-bandwidth connection between resources in different virtual networks.
- Communication. The ability for resources in one virtual network to communicate with resources in a different virtual network, once the virtual networks are peered.
- Seamless. The ability to transfer data across Azure subscriptions, deployment models, and across Azure regions.
- No disruption. No downtime to resources in either virtual network when creating the peering, or after the peering is created.

### Determine gateway transit and connectivity

When virtual networks are peered, you configure a VPN gateway in the peered virtual network as a transit point. In this case, a peered virtual network uses the remote gateway to gain access to other resources. A virtual network can have only one gateway. Gateway transit is supported for both VNet Peering and Global VNet Peering.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-vnet-peering/media/gateway-transit-173a51a0.png)

When you Allow Gateway Transit the virtual network can communicate to resources outside the peering. For example, the subnet gateway could:

- Use a site-to-site VPN to connect to an on-premises network.
- Use a VNet-to-VNet connection to another virtual network.
- Use a point-to-site VPN to connect to a client.

In these scenarios, gateway transit allows peered virtual networks to share the gateway and get access to resources. This means you do not need to deploy a VPN gateway in the peer virtual network.

When you add a peering on one virtual network, the second virtual network configuration is automatically added.

**VNet Peering is nontransitive.** When you establish VNet peering between VNet1 and VNet2 and between VNet2 and VNet3, VNet peering capabilities do not apply between VNet1 and VNet3. However, you can configure user-defined routes and service chaining to provide the transitivity. This allows you to:

Implement a multi-level hub and spoke architecture.
Overcome the limit on the number of VNet peerings per virtual network.

### Hub and spoke architecture
When you deploy hub-and-spoke networks, the hub virtual network can host infrastructure components like the network virtual appliance or VPN gateway. All the spoke virtual networks can then peer with the hub virtual network. Traffic can flow through network virtual appliances or VPN gateways in the hub virtual network.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-vnet-peering/media/service-chains-5c9286d1.png)

## VPN Gateway

A VPN gateway is a specific type of virtual network gateway that is used to send encrypted traffic between an Azure virtual network and an on-premises location over the public Internet. You also use a VPN gateway to send encrypted traffic between Azure virtual networks over the Microsoft network.

Each virtual network can have only one VPN gateway. However, you can create multiple connections to the same VPN gateway. When you create multiple connections to the same VPN gateway, all VPN tunnels share the available gateway bandwidth.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-vpn-gateway/media/virtual-gateways-5cd58717.png)

- **Site-to-site** connections connect on-premises datacenters to Azure virtual networks
- **VNet-to-VNet** connections connect Azure virtual networks (custom)
- **Point-to-site (User VPN)** connections connect individual devices to Azure virtual networks

A virtual network gateway is composed of two or more VMs that are deployed to a specific subnet you create called the gateway subnet. Virtual network gateway VMs contain routing tables and run specific gateway services. These VMs are created when you create the virtual network gateway. You can't directly configure the VMs that are part of the virtual network gateway.

VPN gateways can be deployed in Azure Availability Zones. Availability zones bring resiliency, scalability, and higher availability to virtual network gateways. Availability Zones physically and logically separates gateways within a region, while protecting your on-premises network connectivity to Azure from zone-level failures.

### Create site-to-site connections

Here are the high-level steps to create a site-to-site virtual network connection. The on-premises part is only needed when you're configuring Site-to-Site. We'll review in detail each step.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-vpn-gateway/media/gateway-steps-aebd935e.png)

- **Create VNets and subnets.** By now you should be familiar with creating virtual networks and subnets. Contact your on-premises network administrator to reserve an IP address range for this virtual network.

- **Specify the DNS server (optional).** DNS isn't required to create a site-to-site connection. However, if you need name resolution for resources that are deployed to your virtual network, you should specify a DNS server in the virtual network configuration.

- **Create the gateway subnet** Before creating a virtual network gateway for your virtual network, you first need to create the gateway subnet. The gateway subnet contains the IP addresses that are used by the virtual network gateway. If possible, it's best to create a gateway subnet by using a CIDR block of /28 or /27 to provide enough IP addresses to accommodate future configuration requirements.

  When you create your gateway subnet, gateway VMs are deployed to the gateway subnet and configured with the required VPN gateway settings. Never deploy other resources (for example, additional VMs) to the gateway subnet. The gateway subnet must be named GatewaySubnet.

- **Create the VPN gateway** The VPN gateway settings that you chose are critical to creating a successful connection.
  -  **Gateway type.**  VPN or ExpressRoute. When you create the virtual network gateway, you must specify a VPN type. The VPN type that you choose depends on the connection topology that you want to create. For example, a Point-to-Site (P2S) connection requires a Route-based VPN type. A VPN type can also depend on the hardware that you are using. Site-to-Site (S2S) configurations require a VPN device. Some VPN devices only support a certain VPN type.
      - **Route-based VPNs.** Route-based VPNs use routes in the IP forwarding or routing table to direct packets into their corresponding tunnel interfaces. The tunnel interfaces then encrypt or decrypt the packets in and out of the tunnels. The policy (or traffic selector) for Route-based VPNs are configured as any-to-any (or wild cards). 

      - **Policy-based VPNs.** Policy-based VPNs encrypt and direct packets through IPsec tunnels based on the IPsec policies configured with the combinations of address prefixes between your on-premises network and the Azure VNet. The policy (or traffic selector) is defined as an access list in the VPN device configuration. When using a Policy-based VPN, keep in mind the following limitations:
        - Policy-Based VPNs can only be used on the Basic gateway SKU and is not compatible with other gateway SKUs.
        - You can have only one tunnel when using a Policy-based VPN.
        - You can only use Policy-based VPNs for S2S connections, and only for certain configurations. Most VPN Gateway configurations require a Route-based VPN. 
  - **VPN type.** Route based or Policy based. Most VPN types are Route-based. The type of VPN you choose depends on the make and model of your VPN device, and the kind of VPN connection you intend to create. Typical route-based gateway scenarios include point-to-site, inter-virtual network, or multiple site-to-site connections. Route-based is also selected when you coexist with an ExpressRoute gateway or if you need to use IKEv2. Policy-based gateways support only IKEv1.
  - **SKU.** Use the drop-down to select a gateway SKU. Your choice will affect the number of tunnels you can have and the aggregate throughput benchmark. The benchmark is based on measurements of multiple tunnels aggregated through a single gateway. It is not a guaranteed throughput due to Internet traffic conditions and your application behaviors.

    When you create a virtual network gateway, you need to specify the gateway SKU that you want to use. Select the SKU that satisfies your requirements based on the types of workloads, throughputs, features, and SLAs.

    Gen| SKUS2S |VNet-to-VNet Tunnels| P2S IKEv2 Connections| Aggregate Throughput Benchmark
    |-|-|-|-|-|
    1|VpnGw1/Az|Max. 30|Max. 250|650 Mbps|
    1|VpnGw2/Az|Max. 30|Max. 500|1.0 Gbps|
    2|VpnGw2/Az|Max. 30|Max. 500|1.25 Gbps|
    1|VPNGw3/Az|Max. 30|Max. 1000|1.25 Gbps|
    2|PNGw3/Az|Max. 30|Max. 1000|2.5 Gbps|
    2|VPNGw4/Az|Max. 100|Max. 5000|15.0 Gbps|
    2|VPNGw5/Az|Max. 100|Max. 10000|10.0 Gbps|

  - **Generation.** Generation1 or Generation2. You cannot change generations or SKUs across generations. Basic and VpnGw1 SKUs are only supported in Generation1. VpnGw4 and VpnGw5 SKUs are only supported in Generation2.


  - **Virtual networks.** The virtual network that will be able to send and receive traffic through the virtual network gateway. A virtual network cannot be associated with more than one gateway.

- **Create the local network gateway** The local network gateway typically refers to the on-premises location. You give the site a name by which Azure can refer to it, then specify the IP address or FQDN of the on-premises VPN device for the connection. You also specify the IP address prefixes that will be routed through the VPN gateway to the VPN device. The address prefixes you specify are the prefixes located in the on-premises network.
   - **IP Address.** The public IP address of the local gateway.

   - **Address Space.** One or more IP address ranges (in CIDR notation) that define your local network's address space. If you plan to use this local network gateway in a BGP-enabled connection, then the minimum prefix you need to declare is the host address of your BGP Peer IP address on your VPN device.

- **Set up the on-premises VPN gateway** There is a validated list of standard VPN devices that work well with the VPN gateway. This list was created in partnership with device manufacturers like Cisco, Juniper, Ubiquiti, and Barracuda Networks.

  When your device is not listed in the validated VPN devices table, the device may still work. Contact your device manufacturer for support and configuration instructions.

  To configure your VPN device, you will need:

  - A shared key. The same shared key that you specify when creating the VPN connection.
  - The public IP address of your VPN gateway. The IP address can be new or existing.

  Depending on the VPN device that you have, you may be able to download a VPN device configuration script.

- **Create the VPN connection** Once your VPN gateways are created, you can create the connection between them. If your VNets are in the same subscription, you can use the portal.
  - Name. Enter a name for your connection.
  - Connection type. Select Site-to-Site (IPSec) from the drop-down.
  - Shared key (PSK). In this field, enter a shared key for your connection. You can generate or create this key yourself. In a site-to-site connection, the key you use is the same for your on-premises device and your virtual network gateway connection.

- **Verify the VPN connection** After you have configured all the Site-to-Site components, it is time to verify that everything is working. You can verify the connections either in the portal, or by using PowerShell.

### Determine high availability scenarios

 - Active/standby 
  
    Every Azure VPN gateway consists of two instances in an active-standby configuration. For any planned maintenance or unplanned disruption that happens to the active instance, the standby instance would take over (failover) automatically, and resume the S2S VPN or VNet-to-VNet connections. The switch over will cause a brief interruption. For planned maintenance, the connectivity should be restored within 10 to 15 seconds. For unplanned issues, the connection recovery will be longer, about 1 minute to 1 and a half minutes in the worst case. For P2S VPN client connections to the gateway, the P2S connections will be disconnected and the users will need to reconnect from the client machines.
    ![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-vpn-gateway/media/active-standby-b1ae014b.png)

- Active/active

    You can now create an Azure VPN gateway in an active-active configuration, where both instances of the gateway VMs will establish S2S VPN tunnels to your on-premises VPN device.

  In this configuration, each Azure gateway instance will have a unique public IP address, and each will establish an IPsec/IKE S2S VPN tunnel to your on-premises VPN device specified in your local network gateway and connection. Both VPN tunnels are actually part of the same connection. You will still need to configure your on-premises VPN device to accept or establish two S2S VPN tunnels to those two Azure VPN gateway public IP addresses.

  When in active-active configuration, the traffic from your Azure virtual network to your on-premises network will be routed through both tunnels simultaneously. The same TCP or UDP flow will always traverse the same tunnel or path, unless a maintenance event happens on one of the instances.

  ![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-vpn-gateway/media/active-active-ea464be2.png)

## ExpressRoute and Virtual WAN

###  ExpressRoute uses

Azure ExpressRoute lets you extend your on-premises networks into the Microsoft cloud. The connection is facilitated by a connectivity provider. With ExpressRoute, you can establish connections to Microsoft cloud services, such as Microsoft Azure, Microsoft 365, and CRM Online.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-expressroute-virtual-wan/media/expressroute-b72c1320.png)


Use Azure ExpressRoute to create private connections between Azure datacenters and infrastructure on your premises or in a colocation environment. ExpressRoute connections don't go over the public Internet, and they offer more reliability, faster speeds, and lower latencies than typical Internet connections. In some cases, using ExpressRoute connections to transfer data between on-premises systems and Azure can give you significant cost benefits.

ExpressRoute gives you a fast and reliable connection to Azure with bandwidths up to 100 Gbps. The high connection speeds make it excellent for scenarios like periodic data migration, replication for business continuity, and disaster recovery. ExpressRoute is a cost-effective option for transferring large amounts of data, such as datasets for high-performance computing applications, or moving large virtual machines between your dev-test environments.

Use ExpressRoute to connect and add compute and storage capacity to your existing datacenters. With high throughput and low latencies, Azure will feel like a natural extension to or between your datacenters, so you enjoy the scale and economics of the public cloud without having to compromise on network performance.

Build applications that span on-premises infrastructure and Azure without compromising privacy or performance. For example, run a corporate intranet application in Azure that authenticates your customers with an on-premises Active Directory service. You serve all of your corporate customers without traffic ever routing through the public Internet.

### ExpressRoute capabilities

ExpressRoute is supported across all Azure regions and locations. This map provides a list of Azure regions and ExpressRoute locations. ExpressRoute locations are where Microsoft peers with several service providers. When you connected to at least one ExpressRoute location within the geopolitical region, you will access Azure services across all regions within a geopolitical region.

- **Latyer 3 connectivity** Microsoft uses BGP to exchange routes between your on-premises network, your instances in Azure, and Microsoft public addresses. Multiple BGP sessions are created for different traffic profiles.
- **Redundancy** Each ExpressRoute circuit consists of two connections to two Microsoft Enterprise edge routers (MSEEs) from the connectivity provider/your network edge. Microsoft requires dual BGP connection from the connectivity provider/your network edge – one to each MSEE.
- **Connectivity to Microsoft cloud services**  ExpressRoute connections enable access to Microsoft Azure services, Microsoft 365 services, and Microsoft Dynamics 365. Microsoft 365 was created to be accessed securely and reliably via the Internet, so ExpressRoute requires Microsoft authorization.
- **Global connectivity with ExpressRoute premium add-on** You enable the ExpressRoute premium add-on feature to extend connectivity across geopolitical boundaries. For example, if you connect to Microsoft in Amsterdam through ExpressRoute, you will have access to all Microsoft cloud services hosted in all regions across the world, except national clouds.

- **Across on-premises connectivity with ExpressRoute Global Reach** You enable ExpressRoute Global Reach to exchange data across your on-premises sites by connecting your ExpressRoute circuits. For example, if you have a private data center in California connected to ExpressRoute in Silicon Valley, and another private data center in Texas connected to ExpressRoute in Dallas, with ExpressRoute Global Reach, you can connect your private data centers together through two ExpressRoute circuits. Your cross-data-center traffic will traverse through Microsoft's network.

- **Bandwidth options** You purchase ExpressRoute circuits for a wide range of bandwidths. Be sure to check with your connectivity provider to determine the bandwidths they support.

- **Flexible billing models** You pick a billing model that works best for you. Several pricing options are available.

### Coexist site-to-site and ExpressRoute

ExpressRoute is a direct, private connection from your WAN (not over the public Internet) to Microsoft Services, including Azure. Site-to-Site VPN traffic travels encrypted over the public Internet. Being able to configure Site-to-Site VPN and ExpressRoute connections for the same virtual network has several advantages.

You configure a Site-to-Site VPN as a secure failover path for ExpressRoute or use Site-to-Site VPNs to connect to sites that are not part of your network, but that are connected through ExpressRoute. Notice this configuration requires two virtual network gateways for the same virtual network, one using the gateway type VPN, and the other using the gateway type ExpressRoute.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-expressroute-virtual-wan/media/coexisting-connections-4af27ce9.png)


### ExpressRoute connection models
You create a connection between your on-premises network and the Microsoft cloud in three different ways, Colocated at a cloud exchange, Point-to-point Ethernet Connection, and Any-to-any (IPVPN) Connection. Connectivity providers offer one or more connectivity models. You work with your connectivity provider to pick the model that works best for you.

- **Colocated at a cloud exchange**

  If you are colocated in a facility with a cloud exchange, you order virtual cross-connections to the Microsoft cloud through the colocation provider’s Ethernet exchange. Colocation providers offer either Layer 2 cross-connections, or managed Layer 3 cross-connections between your infrastructure in the colocation facility and the Microsoft cloud.

- **Point-to-point Ethernet connections**

  You connect your on-premises datacenters/offices to the Microsoft cloud through point-to-point Ethernet links. Point-to-point Ethernet providers offer Layer 2 connections, or managed Layer 3 connections between your site and the Microsoft cloud.

- **Any-to-any (IPVPN) networks**

  You integrate your WAN with the Microsoft cloud. IPVPN providers, typically Multiprotocol Label Switching (MPLS) VPN, offer any-to-any connectivity between your branch offices and datacenters. The Microsoft cloud can be interconnected to your WAN to make it appear just like any other branch office. WAN providers typically offer managed Layer 3 connectivity.

  ### Compare intersite connection options

  There are many intersite connection choices. This table summarizes how to make a selection.

Connection|Azure Services Supported|Bandwidths|Protocols|Typical Use Case
|-|-|-|-|-|
Virtual network, point-to-site|Azure IaaS services, Azure Virtual Machines|Based on the gateway SKU|Active/passive|Dev, test, and lab environments for cloud services and virtual machines.
Virtual network, site-to-site|Azure IaaS services, Azure Virtual Machines|Typically < 1 Gbps aggregate|Active/passive, Active/active|Dev, test, and lab environments. Small-scale production workloads and virtual machines.
ExpressRoute|Azure IaaS and PaaS services, Microsoft 365 services|50 Mbps up to 100 Gbps|Active/active|Enterprise-class and mission-critical workloads. Big data solutions.

### Virtual WAN uses

Azure Virtual WAN is a networking service that provides optimized and automated branch connectivity to, and through, Azure. Azure regions serve as hubs that you can choose to connect your branches to. You use the Azure backbone to connect branches and enjoy branch-to-VNet connectivity. There is a list of partners that support connectivity automation with Azure Virtual WAN VPN.

### Virtual WAN advantages
- **Integrated connectivity solutions in hub and spoke.** Automate site-to-site configuration and connectivity between on-premises sites and an Azure hub.
- **Automated spoke setup and configuration.** Connect your virtual networks and workloads to the Azure hub seamlessly.
- **Intuitive troubleshooting.** You can see the end-to-end flow within Azure, and then use this information to take required actions.

### Virtual WAN types

There are two types of virtual WANs: Basic and Standard.

Virtual WAN type|Hub type|Available configurations
|-|-|-|
Basic|Basic|Site-to-site VPN only|
Standard|Standard|ExpressRoute, User VPN (P2S). VPN (site-to-site), Inter-hub, and VNet-to-VNet transiting through the virtual hub.

### system routes

Azure uses system routes to direct network traffic between virtual machines, on-premises networks, and the Internet. The following situations are managed by these system routes:

- Traffic between VMs in the same subnet.
- Between VMs in different subnets in the same virtual network.
- Data flow from VMs to the Internet.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-network-routing-endpoints/media/system-routes-08992506.png)

Information about the system routes is recorded in a route table. A route table contains a set of rules, called routes, that specifies how packets should be routed in a virtual network. Routing tables are associated to subnets, and each packet leaving a subnet is handled based on the associated route table. Packets are matched to routes using the destination. The destination can be an IP address, a virtual network gateway, a virtual appliance, or the internet. If a matching route can't be found, then the packet is dropped.

### User-defined routes

onfigure user-defined routes (UDRs). UDRs control network traffic by defining routes that specify the next hop of the traffic flow. The hop can be a virtual network gateway, virtual network, internet, or virtual appliance.

Each route table can be associated to multiple subnets, but a subnet can only be associated to a single route table.

There are no charges for creating route tables in Microsoft Azure.

### Service endpoint uses

A virtual network service endpoint provides the identity of your virtual network to the Azure service. Once service endpoints are enabled in your virtual network, you can secure Azure service resources to your virtual network by adding a virtual network rule to the resources.

Today, Azure service traffic from a virtual network uses public IP addresses as source IP addresses. With service endpoints, service traffic switches to use virtual network private addresses as the source IP addresses when accessing the Azure service from a virtual network. This switch allows you to access the services without the need for reserved, public IP addresses used in IP firewalls.


### use a service endpoint

- Improved security for your Azure service resources. VNet private address spaces can be overlapping and so, cannot be used to uniquely identify traffic originating from your VNet. Service endpoints secure Azure service resources to your virtual network by extending VNet identity to the service. When service endpoints are enabled in your virtual network, you secure Azure service resources to your virtual network by adding a virtual network rule. The rule improves security by fully removing public Internet access to resources, and allowing traffic only from your virtual network.
- Optimal routing for Azure service traffic from your virtual network. Today, any routes in your virtual network that force Internet traffic to your premises and/or virtual appliances, known as forced-tunneling, also force Azure service traffic to take the same route as the Internet traffic. Service endpoints provide optimal routing for Azure traffic.
- Endpoints always take service traffic directly from your virtual network to the service on the Microsoft Azure backbone network. Keeping traffic on the Azure backbone network allows you to continue auditing and monitoring outbound Internet traffic from your virtual networks, through forced-tunneling, without impacting service traffic. Learn more about user-defined routes and forced-tunneling.
- Simple to set up with less management overhead. You no longer need reserved, public IP addresses in your virtual networks to secure Azure resources through IP firewall. There are no NAT or gateway devices required to set up the service endpoints. Service endpoints are configured through the subnet. There's no extra overhead to maintaining the endpoints.

## Determine service endpoint services

It is easy to add a service endpoint to the virtual network. Several services are available including: Azure Active Directory, Azure Cosmos DB, EventHub, KeyVault, Service Bus, SQL, and Storage.

**Azure Storage.** Generally available in all Azure regions. This endpoint gives traffic an optimal route to the Azure Storage service. Each storage account supports up to 100 virtual network rules.

**Azure SQL Database and Azure SQL Data Warehouse.** Generally available in all Azure regions. A firewall security feature that controls whether the database server for your single databases and elastic pool in Azure SQL Database or for your databases in SQL Data Warehouse accepts communications that are sent from particular subnets in virtual networks.

**Azure Database for PostgreSQL server and MySQL.** Generally available in Azure regions where database service is available. Virtual Network (VNet) services endpoints and rules extend the private address space of a Virtual Network to your Azure Database for PostgreSQL server and MySQL server.

**Azure Cosmos DB.** Generally available in all Azure regions. You can configure the Azure Cosmos account to allow access only from a specific subnet of virtual network (VNet). By enabling Service endpoint to access Azure Cosmos DB on the subnet within a virtual network, the traffic from that subnet is sent to Azure Cosmos DB with the identity of the subnet and Virtual Network. Once the Azure Cosmos DB service endpoint is enabled, you can limit access to the subnet by adding it to your Azure Cosmos account.

**Azure Key Vault.** Generally available in all Azure regions. The virtual network service endpoints for Azure Key Vault allow you to restrict access to a specified virtual network. The endpoints also allow you to restrict access to a list of IPv4 (internet protocol version 4) address ranges. Any user connecting to your key vault from outside those sources is denied access.

**Azure Service Bus and Azure Event Hubs.** Generally available in all Azure regions. The integration of Service Bus with Virtual Network (VNet) service endpoints enables secure access to messaging capabilities from workloads like virtual machines that are bound to virtual networks, with the network traffic path being secured on both ends.

### Identify private link uses

Azure Private Link provides private connectivity from a virtual network to Azure platform as a service (PaaS), customer-owned, or Microsoft partner services. It simplifies the network architecture and secures the connection between endpoints in Azure by eliminating data exposure to the public internet.

- **Private connectivity to services on Azure.** Traffic remains on the Microsoft network, with no public internet access. Connect privately to services running in other Azure regions. Private Link is global and has no regional restrictions.
- **Integration with on-premises and peered networks.** Access private endpoints over private peering or VPN tunnels from on-premises or peered virtual networks. Microsoft hosts the traffic, so you don’t need to set up public peering or use the internet to migrate your workloads to the cloud.
- **Protection against data exfiltration for Azure resources.** Use Private Link to map private endpoints to Azure PaaS resources. When there's a security incident within your network, only the mapped resource would be accessible, eliminating the threat of data exfiltration.
- **Services delivered directly to your customers’ virtual networks.** Privately consume Azure PaaS, Microsoft partner, and your own services in your virtual networks on Azure. Private Link works across Azure Active Directory (Azure AD) tenants to help unify your experience across services. Send, approve, or reject requests directly, without permissions or role-based access controls.

Use Private Link to bring services delivered on Azure into your private virtual network by mapping it to a private endpoint. Or privately deliver your own services in your customers’ virtual networks. All traffic to the service can be routed through the private endpoint, so no gateways, NAT devices, ExpressRoute or VPN connections, or public IP addresses are needed. Private Link keeps traffic on the Microsoft global network.

## Azure Load Balancer

The Azure Load Balancer delivers high availability and network performance to your applications. The load balancer distributes inbound traffic to backend resources using load-balancing rules and health probes.

- Load-balancing rules determine how traffic is distributed to the backend.
- Health probes ensure the resources in the backend are healthy.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-load-balancer/media/load-balancer-4caf947b.png)

The Load Balancer can be used for inbound and outbound scenarios and scales up to millions of TCP and UDP application flows.

### Types of load balancer


There are two types of load balancers: public and internal.

#### **Public**
A public load balancer maps the public IP address and port number of incoming traffic to the private IP address and port number of the VM. Mapping is also provided for the response traffic from the VM. By applying load-balancing rules, you can distribute specific types of traffic across multiple VMs or services. For example, you can spread the load of incoming web request traffic across multiple web servers.

The diagram shows internet clients sending webpage requests to the public IP address of a web app on TCP port 80. Azure Load Balancer distributes the requests across the three VMs in the load-balanced set.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-load-balancer/media/public-load-balancer-46d5d9fe.png)

#### **Internal**

An internal load balancer directs traffic to resources that are inside a virtual network or that use a VPN to access Azure infrastructure. Frontend IP addresses and virtual networks are never directly exposed to an internet endpoint. Internal line-of-business applications run in Azure and are accessed from within Azure or from on-premises resources. For example, an internal load balancer could receive database requests that need to be distributed to backend SQL servers.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-load-balancer/media/internal-load-balancer-5ae85589.png)

An internal load balancer enables the following types of load balancing:

- **Within a virtual network.** Load balancing from VMs in the virtual network to a set of VMs that reside within the same virtual network.
- **For a cross-premises virtual network.** Load balancing from on-premises computers to a set of VMs that reside within the same virtual network.
- **For multi-tier applications.** Load balancing for internet-facing multi-tier applications where the backend tiers are not internet-facing. The backend tiers require traffic load-balancing from the internet-facing tier.
- **For line-of-business applications.** Load balancing for line-of-business applications that are hosted in Azure without additional load balancer hardware or software. This scenario includes on-premises servers that are in the set of computers whose traffic is load-balanced.

A public load balancer could be placed in front of the internal load balancer to create a multi-tier application.

### Determine load balancer SKUs

When you create an Azure Load Balancer, you select the type (Internal or Public) of load balancer. You also select the SKU. The load balancer supports both Basic and Standard SKUs, each differing in scenario scale, features, and pricing. The Standard Load Balancer is the newer Load Balancer product with an expanded and more granular feature set over Basic Load Balancer. It is a superset of Basic Load Balancer.

### Capabilities

|Feature|Basic SKU|Standard SKU
|-|-|-|
Backend pools|Up to 300 instances|Up to 1000 instances
Health probes|HTTP, TCP|HTTPS, HTTP, TCP|
Availability zones|Not available|Zone-redundant and zonal frontends for inbound and outbound traffic.
Multiple front ends|Inbound only|Inbound and outbound|
Secure by default|Open by default. NSG optional.|Closed to inbound flows unless allowed by an NSG. Internal traffic from the virtual network to the internal load balancer is allowed.
SLA|Not available|99.99%|

### backend pools

To distribute traffic, a back-end address pool contains the IP addresses of the virtual NICs that are connected to the load balancer. How you configure the backend pool depends on whether you are using the Standard or Basic SKU.

||Standard SKU|Basic SKU|
|-|-|-|
Backend pool endpoints|Any virtual machine in a single virtual network. This includes a blend of virtual machines, availability sets, and virtual machine scale sets.|Virtual machines in a single availability set or virtual machine scale set.

Backend pools are configured from the Backend Pool blade. For the Standard SKU you can connect to an Availability set, single virtual machine, or a virtual machine scale set.

In the Standard SKU, you can have up to 1000 instances in the backend pool. In the Basic SKU, you can have up to 300 instances.

### load balancer rules

A load balancer rule defines how traffic is distributed to the backend pool. The rule maps a given frontend IP and port combination to a set of backend IP addresses and port combination. Before configuring the rule, create the frontend, backend, and health probe. This diagram shows a rule that routes frontend TCP connections to a set of backend web (port 80) servers. The rule uses a health probe that checks on HTTP port 80.

By default, Azure Load Balancer distributes network traffic equally among multiple VM instances. The load balancer uses a five-tuple (source IP, source port, destination IP, destination port, and protocol type) hash to map traffic to available servers. It provides stickiness only within a transport session.

Session persistence specifies how traffic from a client should be handled. 
- None (default) specifies any virtual machine can handle the request.
- Client IP specifies that successive requests from the same client IP address will be handled by the same virtual machine.
- Client IP and protocol specifies that successive requests from the same client IP address and protocol combination will be handled by the same virtual machine.

### Health probes

A health probe allows the load balancer to monitor the status of your app. The health probe dynamically adds or removes VMs from the load balancer rotation based on their response to health checks. When a probe fails to respond, the load balancer stops sending new connections to the unhealthy instances.

There are two main ways to configure health probes HTTP and TCP.

- **HTTP custom probe.** The load balancer regularly probes your endpoint (every 15 seconds, by default). The instance is healthy if it responds with an HTTP 200 within the timeout period (default of 31 seconds). Any status other than HTTP 200 causes the probe to fail. You can specify the port (Port), the URI for requesting the health status from the backend (URI), amount of time between probe attempts (Interval), and the number of failures that must occur for the instance to be considered unhealthy (Unhealthy threshold).

- **TCP custom probe.** This probe relies on establishing a successful TCP session to a defined probe port. If the specified listener on the VM exists, the probe succeeds. If the connection is refused, the probe fails. You can specify the Port, Interval, and Unhealthy threshold.

## Application Gateway

Application Gateway manages the requests that client applications send to a web app.

The Application Gateway uses application layer routing. Application layer routing routes traffic to a pool of web servers based on the URL of a request. The back-end pool can include Azure virtual machines, Azure virtual machine scale sets, Azure App Service, and even on-premises servers.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-application-gateway/media/application-gateway-cb3392f4.png)

The Application Gateway uses round robin to send load balance requests to the servers in each back-end pool. The Application Gateway provides session stickiness. Use session stickiness to ensure client requests in the same session are routed to the same back-end server.

### Additional features
- Support for the HTTP, HTTPS, HTTP/2 and WebSocket protocols.
- A web application firewall to protect against web application vulnerabilities.
- End-to-end request encryption.
- Autoscaling, to dynamically adjust capacity as your web traffic load change.

### Determine Application Gateway routing

Clients send requests to your web apps to the IP address or DNS name of the gateway. The gateway routes requests to a selected web server in the back-end pool, using a set of rules configured for the gateway to determine where the request should go.

There are two primary methods of routing traffic, path-based routing and multiple site routing.

### Path-based routing
Path-based routing sends requests with different URL paths to different pools of back-end servers. For example, you could direct requests with the path /video/* to a back-end pool containing servers that are optimized to handle video streaming, and direct /images/* requests to a pool of servers that handle image retrieval.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-application-gateway/media/path-based-routing-15bcef5f.png)

### Multiple site routing
Multiple site routing configures more than one web application on the same application gateway instance. In a multi-site configuration, you register multiple DNS names (CNAMEs) for the IP address of the Application Gateway, specifying the name of each site. Application Gateway uses separate listeners to wait for requests for each site. Each listener passes the request to a different rule, which can route the requests to servers in a different back-end pool.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-application-gateway/media/site-based-routing-e686b605.png)

Multi-site configurations are useful for supporting multi-tenant applications, where each tenant has its own set of virtual machines or other resources hosting a web application.

### Other features
- Redirection. Redirection can be used to another site, or from HTTP to HTTPS.
- Rewrite HTTP headers. HTTP headers allow the client and server to pass parameter information with the request or the response.
- Custom error pages. Application Gateway allows you to create custom error pages instead of displaying default error pages. You can use your own branding and layout using a custom error page.


### Gateway component

Application Gateway has a series of components that combine to route requests to a pool of web servers and to check the health of these web servers.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-application-gateway/media/configure-app-gateway-0193dbd6.png)

- Front-end IP address
Client requests are received through a front-end IP address. You can configure Application Gateway to have a public IP address, a private IP address, or both. Application Gateway can't have more than one public and one private IP address.

- Listeners
Application Gateway uses one or more listeners to receive incoming requests. A listener accepts traffic arriving on a specified combination of protocol, port, host, and IP address. Each listener routes requests to a back-end pool of servers following routing rules that you specify. A listener can be Basic or Multi-site. A Basic listener only routes a request based on the path in the URL. A Multi-site listener can also route requests using the hostname element of the URL.

  Listeners also handle TLS/SSL certificates for securing your application between the user and Application Gateway.

- Routing rules
A routing rule binds a listener to the back-end pools. A rule specifies how to interpret the hostname and path elements in the URL of a request, and then direct the request to the appropriate back-end pool. A routing rule also has an associated set of HTTP settings. These HTTP settings indicate whether (and how) traffic is encrypted between Application Gateway and the back-end servers. Other configuration information includes Protocol, Session stickiness, Connection draining, Request timeout period, and Health probes.

- Back-end pools
A back-end pool references a collection of web servers. You provide the IP address of each web server and the port on which it listens for requests when configuring the pool. Each pool can specify a fixed set of virtual machines, a virtual machine scale-set, an app hosted by Azure App Services, or a collection of on-premises servers. Each back-end pool has an associated load balancer that distributes work across the pool

- Web application firewall
The web application firewall (WAF) is an optional component that handles incoming requests before they reach a listener. The web application firewall checks each request for many common threats, based on the Open Web Application Security Project (OWASP). Common threats include SQL-injection, Cross-site scripting, Command injection, HTTP request smuggling, HTTP response splitting, Remote file inclusion, Bots, crawlers, and scanners, and HTTP protocol violations and anomalies.

- Health probes
Health probes determine which servers are available for load-balancing in a back-end pool. The Application Gateway uses a health probe to send a request to a server. When the server returns an HTTP response with a status code between 200 and 399, the server is considered healthy.

If you don't configure a health probe, Application Gateway creates a default probe that waits for 30 seconds before deciding that a server is unavailable.

## storage accounts

### Azure Storage

Azure Storage is Microsoft's cloud storage solution for modern data storage scenarios. Azure Storage offers a massively scalable object store for data objects. It provides a file system service for the cloud, a messaging store for reliable messaging, and a NoSQL store.

Azure Storage is a service that you can use to store files, messages, tables, and other types of information. You use Azure Storage for applications like file shares. Developers use Azure Storage for working data. Working data includes websites, mobile apps, and desktop applications. Azure Storage is also used by IaaS virtual machines, and PaaS cloud services.

You can think of Azure Storage as supporting three categories of data: structured data, unstructured data, and virtual machine data. Review the following categories and think about which types of storage are used in your organization.

Category|	Description	|Storage examples|
|-|-|-|
Virtual machine data|	Virtual machine data storage includes disks and files. Disks are persistent block storage for Azure IaaS virtual machines. Files are fully managed file shares in the cloud.|	Storage for virtual machine data is provided through Azure managed disks. Data disks are used by virtual machines to store data like database files, website static content, or custom application code. The number of data disks you can add depends on the virtual machine size. Each data disk has a maximum capacity of 32,767 GB.
|Unstructured data	|Unstructured data is the least organized. It can be a mix of information that's stored together, but the data doesn't have a clear relationship. The format of unstructured data is referred to as non-relational.	|Unstructured data can be stored by using Azure Blob Storage and Azure Data Lake Storage. Blob Storage is a highly scalable, REST-based cloud object store. Azure Data Lake Storage is the Hadoop Distributed File System (HDFS) as a service.
|Structured data	|Structured data is stored in a relational format that has a shared schema. Structured data is often contained in a database table with rows, columns, and keys. Tables are an autoscaling NoSQL store.|	Structured data can be stored by using Azure Table Storage, Azure Cosmos DB, and Azure SQL Database. Azure Cosmos DB is a globally distributed database service. Azure SQL Database is a fully managed database-as-a-service built on SQL.

### Storage account tiers
General purpose Azure storage accounts have two tiers: Standard and Premium.

- Standard storage accounts are backed by magnetic hard disk drives (HDD). A standard storage account provides the lowest cost per GB. You can use Standard tier storage for applications that require bulk storage or where data is infrequently accessed.

- Premium storage accounts are backed by solid-state drives (SSD) and offer consistent low-latency performance. You can use Premium tier storage for Azure virtual machine disks with I/O-intensive applications like databases.

### Azure Storage services

Azure Storage offers four data services that can be accessed by using an Azure storage account:

- Azure Blob Storage (containers): A massively scalable object store for text and binary data.
  Azure Blob Storage is Microsoft's object storage solution for the cloud. Blob Storage is optimized for storing massive amounts of unstructured or non-relational data, such as text or binary data. Blob Storage is ideal for:

    - Serving images or documents directly to a browser.
    - Storing files for distributed access.
    - Streaming video and audio.
    - Storing data for backup and restore, disaster recovery, and archiving.
    - Storing data for analysis by an on-premises or Azure-hosted service.
    - You can access data from Azure Blob Storage by using the NFS protocol.



- Azure Files: Managed file shares for cloud or on-premises deployments.
  Azure Files enables you to set up highly available network file shares. Shares can be accessed by using the Server Message Block (SMB) protocol and the Network File System (NFS) protocol. Multiple virtual machines can share the same files with both read and write access. You can also read the files by using the REST interface or the storage client libraries.
  File shares can be used for many common scenarios:

  - Many on-premises applications use file shares. This feature makes it easier to migrate those applications that share data to Azure. If you mount the file share to the same drive letter that the on-premises application uses, the part of your application that accesses the file share should work with minimal, if any, changes.
  - Configuration files can be stored on a file share and accessed from multiple virtual machines. Tools and utilities used by multiple developers in a group can be stored on a file share, ensuring that everybody can find them, and that they use the same version.
  - Diagnostic logs, metrics, and crash dumps are just three examples of data that can be written to a file share and processed or analyzed later.



- Azure Queue Storage: A messaging store for reliable messaging between application components.

  Azure Queue Storage is used to store and retrieve messages. Queue messages can be up to 64 KB in size, and a queue can contain millions of messages. Queues are used to store lists of messages to be processed asynchronously.

- Azure Table Storage: A NoSQL store for schemaless storage of structured data or relational data.
  Azure Table Storage is now part of Azure Cosmos DB, which is a fully managed NoSQL database service for modern app development. As a fully managed service, Azure Cosmos DB takes database administration off your hands with automatic management, updates, and patching. It also handles capacity management with cost-effective serverless and automatic scaling options that respond to application needs to match capacity with demand.

  In addition to the existing Azure Table Storage service, there's a new Azure Cosmos DB Table API offering that provides throughput-optimized tables, global distribution, and automatic secondary indexes. Table Storage is ideal solution for storing structured or relational data.


###  storage account types

Azure Storage offers several storage account options. Each storage account supports different features and has its own pricing model


Review the following options and think about what storage accounts are required to support your applications.

Storage account|	Supported services	|Recommended usage|
|-|-|-|
Standard general-purpose v2|	Blob Storage (including Data Lake Storage), Queue Storage, Table Storage, and Azure Files	|Standard storage account for most scenarios, including blobs, file shares, queues, tables, and disks (page blobs).
Premium block blobs	|Blob Storage (including Data Lake Storage)|	Premium storage account for block blobs and append blobs. Recommended for applications with high transaction rates. Use Premium block blobs if you work with smaller objects or require consistently low storage latency. This storage is designed to scale with your applications.
Premium file shares|	Azure Files	|Premium storage account for file shares only. Recommended for enterprise or high-performance scale applications. Use Premium file shares if you require support for both Server Message Block (SMB) and NFS file shares.
Premium page blobs|	Page blobs only|	Premium high-performance storage account for page blobs only. Page blobs are ideal for storing index-based and sparse data structures, such as operating systems, data disks for virtual machines, and databases.

All storage account types are encrypted by using Storage Service Encryption (SSE) for data at rest.


### replication strategies

The data in your Azure storage account is always replicated to ensure durability and high availability. Azure Storage replication copies your data so that it's protected from planned and unplanned events. These events range from transient hardware failures, network or power outages, massive natural disasters, and so on. You can choose to replicate your data within the same data center, across zonal data centers within the same region, and even across regions. Replication ensures your storage account meets the Service-Level Agreement (SLA) for Azure Storage even if there are failures.

We'll explore four replication strategies:

- **Locally redundant storage (LRS)** Locally redundant storage is the lowest-cost replication option and offers the least durability compared to other strategies. If a data center-level disaster occurs, such as fire or flooding, all replicas might be lost or unrecoverable. Despite its limitations, LRS can be appropriate in several scenarios:

  - Your application stores data that can be easily reconstructed if data loss occurs.
  - Your data is constantly changing like in a live feed, and storing the data isn't essential.
  - Your application is restricted to replicating data only within a country/region due to data governance requirements.
- **Zone redundant storage (ZRS)** Zone redundant storage synchronously replicates your data across three storage clusters in a single region. Each storage cluster is physically separated from the others and resides in its own availability zone. Each availability zone, and the ZRS cluster within it, is autonomous, and has separate utilities and networking capabilities. Storing your data in a ZRS account ensures you can access and manage your data if a zone becomes unavailable. ZRS provides excellent performance and low latency.

  - ZRS isn't currently available in all regions.
  - Changing to ZRS from another data replication option requires the physical data movement from a single storage stamp to multiple stamps within a region.
- **Geo-redundant storage (GRS)** Geo-redundant storage replicates your data to a secondary region (hundreds of miles away from the primary location of the source data). GRS provides a higher level of durability even during a regional outage. GRS is designed to provide at least 99.99999999999999% (16 9's) durability. When your storage account has GRS enabled, your data is durable even when there's a complete regional outage or a disaster where the primary region isn't recoverable.
  If you implement GRS, you have two related options to choose from:

  - GRS replicates your data to another data center in a secondary region. The data is available to be read only if Microsoft initiates a failover from the primary to secondary region.

  - Read-access geo-redundant storage (RA-GRS) is based on GRS. RA-GRS replicates your data to another data center in a secondary region, and also provides you with the option to read from the secondary region. With RA-GRS, you can read from the secondary region regardless of whether Microsoft initiates a failover from the primary to the secondary.

  For a storage account with GRS or RA-GRS enabled, all data is first replicated with locally redundant storage. An update is first committed to the primary location and replicated by using LRS. The update is then replicated asynchronously to the secondary region by using GRS. When data is written to the secondary location, it's also replicated within that location by using LRS. Both the primary and secondary regions manage replicas across separate fault domains and upgrade domains within a storage scale unit. The storage scale unit is the basic replication unit within the datacenter. Replication at this level is provided by LRS.

- **Geo-zone-redundant storage (GZRS)** Geo-zone-redundant storage combines the high availability of zone-redundant storage with protection from regional outages as provided by geo-redundant storage. Data in a GZRS storage account is replicated across three Azure availability zones in the primary region, and also replicated to a secondary geographic region for protection from regional disasters. Each Azure region is paired with another region within the same geography, together making a regional pair. 
With a GZRS storage account, you can continue to read and write data if an availability zone becomes unavailable or is unrecoverable. Additionally, your data is also durable during a complete regional outage or during a disaster in which the primary region isn't recoverable. GZRS is designed to provide at least 99.99999999999999% (16 9's) durability of objects over a given year. GZRS also offers the same scalability targets as LRS, ZRS, GRS, or RA-GRS. You can optionally enable read access to data in the secondary region with read-access geo-zone-redundant storage (RA-GZRS).
Microsoft recommends using GZRS for applications that require consistency, durability, high availability, excellent performance, and resilience for disaster recovery. Enable RA-GZRS for read access to a secondary region when there's a regional disaster.


### Access storage

Every object you store in Azure Storage has a unique URL address. Your storage account name forms the subdomain portion of the URL address. The combination of the subdomain and the domain name, which is specific to each service, forms an endpoint for your storage account.

We create the URL to access an object in your storage account by appending the object's location in the storage account to the endpoint.

You can configure a custom domain to access blob data in your Azure storage account. As we reviewed, the default endpoint for Azure Blob Storage is \<storage-account-name>.blob.core.windows.net. You can also use the web endpoint that's generated as a part of the static websites feature. If you map a custom domain and subdomain, such as www.contoso.com, to the blob or web endpoint for your storage account, your users can use that domain to access blob data in your storage account.

There are two ways to configure a custom domain: direct mapping and intermediary domain mapping.

- **Direct mapping** lets you enable a custom domain for a subdomain to an Azure storage account. For this approach, you create a CNAME record that points from the subdomain to the Azure storage account.

  The following example shows how a subdomain is mapped to an Azure storage account to create a CNAME record in the domain name system (DNS):

    - Subdomain: blobs.contoso.com
    - Azure storage account: \<storage account>\.blob.core.windows.net
    - Direct CNAME record: contosoblobs.blob.core.windows.net
- **Intermediary domain mapping** is applied to a domain that's already in use within Azure. This approach might result in minor downtime while the domain is being mapped. To avoid downtime, you can use the asverify intermediary domain to validate the domain. By prepending the asverify keyword to your own subdomain, you permit Azure to recognize your custom domain without modifying the DNS record for the domain. After you modify the DNS record for the domain, your domain is mapped to the blob endpoint with no downtime.

  The following example shows how a domain in use is mapped to an Azure storage account in the DNS with the asverify intermediary domain:

   - CNAME record: asverify.blobs.contoso.com
   - Intermediate CNAME record: asverify.contosoblobs.blob.core.windows.net

### Secure storage endpoints

In the Azure portal, each Azure service has required steps to configure the service endpoints and restrict network access for the service.

To access these settings for your storage account, you use the Firewalls and virtual networks settings. You add the virtual networks that should have access to the service for the account.

Here are some points to consider about configuring service access settings:

- The Firewalls and virtual networks settings restrict access to your storage account from specific subnets on virtual networks or public IPs.

- You can configure the service to allow access to one or more public IP ranges.

- Subnets and virtual networks must exist in the same Azure region or region pair as your storage account.

## Azure Blob Storage

Azure Blob Storage is a service that stores unstructured data in the cloud as objects or blobs. Blob stands for Binary Large Object. Blob Storage is also referred to as object storage or container storage.

Let's examine some configuration characteristics of Blob Storage.

- Blob Storage can store any type of text or binary data. Some examples are text documents, images, video files, and application installers.

- Blob Storage uses three resources to store and manage your data:

  - An Azure storage account
  - Containers in an Azure storage account
  - Blobs in a container

- To implement Blob Storage, you configure several settings:

  - Blob container options
  - Blob types and upload options
  - Blob Storage access tiers
  - Blob lifecycle rules
  - Blob object replication options

The following diagram shows the relationship between the Blob Storage resources.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-blob-storage/media/blob-storage-94fb52b8.png)


There are many common uses for Blob Storage. Consider the following scenarios and think about your own data needs:

- Consider browser uploads. Use Blob Storage to serve images or documents directly to a browser.

- Consider distributed access. Blob Storage can store files for distributed access, such as during an installation process.

- Consider streaming data. Stream video and audio by using Blob Storage.

- Consider archiving and recovery. Blob Storage is a great solution for storing data for backup and restore, disaster recovery, and archiving.

- Consider application access. You can store data in Blob Storage for analysis by an on-premises or Azure-hosted service.

### Create blob containers

Azure Blob Storage uses a container resource to group a set of blobs. A blob can't exist by itself in Blob Storage. A blob must be stored in a container resource.

Let's look at the configuration characteristics of containers and blobs.

- All blobs must be in a container.

- A container can store an unlimited number of blobs.

- An Azure storage account can contain an unlimited number of containers.

- You can create the container in the Azure portal.

- You upload blobs into a container.

### Configure a container

In the Azure portal, you configure two settings to create a container for an Azure storage account. As you review these details, consider how you might organize containers in your storage account.

- **Name:** Enter a name for your container. The name must be unique within the Azure storage account.

  - The name can contain only lowercase letters, numbers, and hyphens.
  - The name must begin with a letter or a number.
  - The minimum length for the name is three characters.
  - The maximum length for the name is 63 characters.

- **Public access level:** The access level specifies whether the container and its blobs can be accessed publicly. By default, container data is private and visible only to the account owner. There are three access level choices:

  - Private: (Default) Prohibit anonymous access to the container and blobs.
  - Blob: Allow anonymous public read access for the blobs only.
  - Container: Allow anonymous public read and list access to the entire container, including the blobs.



### Assign blob access tiers


Azure Storage supports several access tiers for blob data, including Hot, Cool, Archive, and Premium Blob Storage. Each access tier is optimized to support a particular pattern of data usage.

Let's examine characteristics of the blob access tiers.

- **Hot tier**
The Hot tier is optimized for frequent reads and writes of objects in the Azure storage account. A good usage case is data that is actively being processed. By default, new storage accounts are created in the Hot tier. This tier has the lowest access costs, but higher storage costs than the Cool and Archive tiers.

- **Cool tier**
The Cool tier is optimized for storing large amounts of data that's infrequently accessed. This tier is intended for data that remains in the Cool tier for at least 30 days. A usage case for the Cool tier is short-term backup and disaster recovery datasets and older media content. This content shouldn't be viewed frequently, but it needs to be immediately available. Storing data in the Cool tier is more cost-effective. Accessing data in the Cool tier can be more expensive than accessing data in the Hot tier.

- **Archive tier**
The Archive tier is an offline tier that's optimized for data that can tolerate several hours of retrieval latency. Data must remain in the Archive tier for at least 180 days or be subject to an early deletion charge. Data for the Archive tier includes secondary backups, original raw data, and legally required compliance information. This tier is the most cost-effective option for storing data. Accessing data is more expensive in the Archive tier than accessing data in the other tiers.

- **Premium Blob Storage**
Premium Blob Storage is best suited for I/O intensive workloads that require low and consistent storage latency. Premium Blob Storage uses solid-state drives (SSDs) for fast and consistent response times. This storage is best for workloads that perform many small transactions. An example would be a mapping application that requires frequent and fast updates.


Compare	|Premium Blob Storage|	Hot tier|	Cool tier|	Archive tier|
|-|-|-|-|-|
Availability|	99.9%|	99.9%|	99%|	Offline
Availability (RA-GRS reads)	|N/A	|99.99%	|99.9%|	Offline|
Latency (time to first byte)|	Single-digit milliseconds	|milliseconds	|milliseconds|	hours
Minimum storage duration|	N/A|	N/A|	30 days|	180 days|
Usage costs|	Higher storage costs, Lower access & transaction costs|	Higher storage costs, Lower access & transaction costs|	Lower storage costs, Higher access & transaction costs	|Lowest storage costs, Highest access & transaction costs

### Blob lifecycle management rules

Azure Blob Storage supports lifecycle management for data sets. It offers a rich rule-based policy for GPv2 and Blob Storage accounts. You can use lifecycle policy rules to transition your data to the appropriate access tiers, and set expiration times for the end of a data set's lifecycle.

You can use Azure Blob Storage lifecycle management policy rules to accomplish several tasks.

- Transition blobs to a cooler storage tier (Hot to Cool, Hot to Archive, Cool to Archive) to optimize for performance and cost.

- Delete blobs at the end of their lifecycles.

- Define rule-based conditions to run once per day at the Azure storage account level.

- Apply rule-based conditions to containers or a subset of blobs.


### Configure lifecycle management policy rules

In the Azure portal, you create lifecycle management policy rules for your Azure storage account by specifying several settings. For each rule, you create If - Then block conditions to transition or expire data based on your specifications. As you review these details, consider how you can set up lifecycle management policy rules for your data sets.

- If: The If clause sets the evaluation clause for the policy rule. When the If clause evaluates to true, the Then clause is executed. Use the If clause to set the time period to apply to the blob data. The lifecycle management feature checks if the data is accessed or modified according to the specified time.

  - More than (days ago): The number of days to use in the evaluation condition.

- Then: The Then clause sets the action clause for the policy rule. When the If clause evaluates to true, the Then clause is executed. Use the Then clause to set the transition action for the blob data. The lifecycle management feature transitions the data based on the setting.

  - Move to cool storage: The blob data is transitioned to Cool tier storage.
  - Move to archive storage: The blob data is transitioned to Archive tier storage.
  - Delete the blob: The blob data is deleted.

By designing policy rules to adjust storage tiers in respect to the age of data, you can design the least expensive storage options for your needs.


### blob object replication

Object replication copies blobs in a container asynchronously according to policy rules that you configure. During the replication process, the following contents are copied from the source container to the destination container:

- The blob contents
- The blob metadata and properties
- Any versions of data associated with the blob

The following illustration shows an example of asynchronous replication of blob containers between regions.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-blob-storage/media/blob-object-replication-21fd3c07.png)

There are several considerations to keep in mind when planning your configuration for blob object replication.

- Object replication requires that blob versioning is enabled on both the source and destination accounts.

- Object replication doesn't support blob snapshots. Any snapshots on a blob in the source account aren't replicated to the destination account.

- Object replication is supported when the source and destination accounts are in the Hot or Cool tier. The source and destination accounts can be in different tiers.

- When you configure object replication, you create a replication policy that specifies the source Azure storage account and the destination storage account.

- A replication policy includes one or more rules that specify a source container and a destination container. The policy identifies the blobs in the source container to replicate.

There are many benefits to using blob object replication. Consider the following scenarios and think about how replication can be a part of your Blob Storage strategy.

- Consider latency reductions. Minimize latency with blob object replication. You can reduce latency for read requests by enabling clients to consume data from a region that's in closer physical proximity.

- Consider efficiency for compute workloads. Improve efficiency for compute workloads by using blob object replication. With object replication, compute workloads can process the same sets of blobs in different regions.

- Consider data distribution. Optimize your configuration for data distribution. You can process or analyze data in a single location and then replicate only the results to other regions.

- Consider costs benefits. Manage your configuration and optimize your storage policies to achieve cost benefits. After your data is replicated, you can reduce costs by moving the data to the Archive tier by using lifecycle management policies.

### Upload blobs

A blob can be any type of data and any size file. Azure Storage offers three types of blobs: block blob, page blob, and append blob. You specify the blob type and Blob Storage access tier when you create the blob.

- **Block blobs.** A block blob consists of blocks of data that are assembled to make a blob. Most Blob Storage scenarios use block blobs. Block blobs are ideal for storing text and binary data in the cloud, like files, images, and videos.

- **Append blobs.** An append blob is similar to a block blob because the append blob also consists of blocks of data. The blocks of data in an append blob are optimized for append operations. Append blobs are useful for logging scenarios, where the amount of data can increase as the logging operation continues.

- **Page blobs.** A page blob can be up to 8 TB in size. Page blobs are more efficient for frequent read/write operations. Azure Virtual Machines uses page blobs for operating system disks and data disks.

- The block blob type is the default type for a new blob. When you're creating a new blob, if you don't choose a specific type, the new blob is created as a block blob.

- After you create a blob, you can't change its type.

A common approach for uploading blobs to your Azure storage account is to use Azure Storage Explorer. Many other tools are also available. Review the following options and consider which tools would suit your configuration needs.

Upload tool	|Description|
|-|-|
AzCopy|	An easy-to-use command-line tool for Windows and Linux. You can copy data to and from Blob Storage, across containers, and across storage accounts.
Azure Storage Data Movement library|	A .NET library for moving data between Azure Storage services. The AzCopy utility is built with the Data Movement library.
Azure Data Factory|	You can copy data to and from Blob Storage by using the account key, shared access signature, service principal, or managed identities for Azure resources authentications.
blobfuse	|A virtual file system driver for Azure Blob Storage. You can use blobfuse to access your existing block blob data in your storage account through the Linux file system.
Azure Data Box Disk|	A service for transferring on-premises data to Blob Storage when large datasets or network constraints make uploading data over the wire unrealistic. You can use Azure Data Box Disk to request solid-state disks (SSDs) from Microsoft. You can copy your data to those disks and ship them back to Microsoft to be uploaded into Blob Storage.
Azure Import/Export|	A service that helps you export large amounts of data from your storage account to hard drives that you provide and that Microsoft then ships back to you with your data.

### Blob Storage pricing

Review the following billing considerations for an Azure storage account and Blob Storage.

- Performance tiers. The Blob Storage tier determines the amount of data stored and the cost for storing that data. As the performance tier gets cooler, the per-gigabyte cost decreases.

- Data access costs. Data access charges increase as the tier gets cooler. For data in the Cool and Archive tiers, you're billed a per-gigabyte data access charge for reads.

- Transaction costs. There's a per-transaction charge for all tiers. The charge increases as the tier gets cooler.

- Geo-replication data transfer costs. This charge only applies to accounts that have geo-replication configured, including GRS and RA-GRS. Geo-replication data transfer incurs a per-gigabyte charge.

- Outbound data transfer costs. Outbound data transfers (data that's transferred out of an Azure region) incur billing for bandwidth usage on a per-gigabyte basis. This billing is consistent with general-purpose Azure storage accounts.

- Changes to the storage tier. If you change the account storage tier from Cool to Hot, you incur a charge equal to reading all the data existing in the storage account. Changing the account storage tier from Hot to Cool incurs a charge equal to writing all the data into the Cool tier (GPv2 accounts only).

## Azure Storage security

Administrators use different strategies to ensure their data is secure. Common approaches include encryption, authentication, authorization, and user access control with credentials, file permissions, and private signatures. Azure Storage offers a suite of security capabilities based on common strategies to help you secure your data.

### Azure Storage security strategies

Let's look at some characteristics of Azure Storage security.

- **Encryption.** All data written to Azure Storage is automatically encrypted by using Azure Storage encryption.

- **Authentication.** Azure Active Directory (Azure AD) and role-based access control (RBAC) are supported for Azure Storage for both resource management operations and data operations.

  - Assign RBAC roles scoped to an Azure storage account to security principals, and use Azure AD to authorize resource management operations like key management.
  - Azure AD integration is supported for data operations on Azure Blob Storage and Azure Queue Storage.
- **Data in transit.** Data can be secured in transit between an application and Azure by using Client-Side Encryption, HTTPS, or SMB 3.0.

- **Disk encryption.** Operating system disks and data disks used by Azure Virtual Machines can be encrypted by using Azure Disk Encryption.

- **Shared access signatures.** Delegated access to the data objects in Azure Storage can be granted by using a shared access signature (SAS).

- **Authorization.** Every request made against a secured resource in Blob Storage, Azure Files, Queue Storage, or Azure Cosmos DB (Azure Table Storage) must be authorized. Authorization ensures that resources in your storage account are accessible only when you want them to be, and to only those users or applications whom you grant access.

Authorization strategy	|Description
|-|-|
Azure Active Directory|	Azure AD is Microsoft's cloud-based identity and access management service. With Azure AD, you can assign fine-grained access to users, groups, or applications by using role-based access control.
Shared Key|	Shared Key authorization relies on your Azure storage account access keys and other parameters to produce an encrypted signature string. The string is passed on the request in the Authorization header.
Shared access signatures	|A SAS delegates access to a particular resource in your Azure storage account with specified permissions and for a specified time interval.
Anonymous access to containers and blobs	|You can optionally make blob resources public at the container or blob level. A public container or blob is accessible to any user for anonymous read access. Read requests to public containers and blobs don't require authorization.

### shared access signatures

A shared access signature (SAS) is a uniform resource identifier (URI) that grants restricted access rights to Azure Storage resources. SAS is a secure way to share your storage resources without compromising your account keys.

You can provide a SAS to clients who shouldn't have access to your storage account key. By distributing a SAS URI to these clients, you grant them access to a resource for a specified period of time.

Let's review some characteristics of a SAS.

- A SAS gives you granular control over the type of access you grant to clients who have the SAS.

- An account-level SAS can delegate access to multiple Azure Storage services, such as blobs, files, queues, and tables.

- You can specify the time interval for which a SAS is valid, including the start time and the expiration time.

- You specify the permissions granted by the SAS. A SAS for a blob might grant read and write permissions to that blob, but not delete permissions.

- SAS provides account-level and service-level control.

  - Account-level SAS delegates access to resources in one or more Azure Storage services.

  - Service-level SAS delegates access to a resource in only one Azure Storage service.


- There are optional SAS configuration settings:

  - IP addresses. You can identify an IP address or range of IP addresses from which Azure Storage accepts the SAS. Configure this option to specify a range of IP addresses that belong to your organization.

  - Protocols. You can specify the protocol over which Azure Storage accepts the SAS. Configure this option to restrict access to clients by using HTTPS.

### Configure a shared access signature
In the Azure portal, you configure several settings to create a SAS. As you review these details, consider how you might implement shared access signatures in your storage security solution.

- Signing method: Choose the signing method: Account key or User delegation key.
- Signing key: Select the signing key from your list of keys.
Permissions: Select the permissions granted by the SAS, such as read or write.
- Start and Expiry date/time: Specify the time interval for which the SAS is valid. Set the start time and the expiry time.
- Allowed IP addresses: (Optional) Identify an IP address or range of IP addresses from which Azure Storage accepts the SAS.
- Allowed protocols: (Optional) Select the protocol over which Azure Storage accepts the SAS.

### Identify URI and SAS parameters

When you create your shared access signature (SAS), a uniform resource identifier (URI) is created by using parameters and tokens. The URI consists of your Azure Storage resource URI and the SAS token.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-storage-security/media/secure-parameters-76db5bda.png)


Let's look at a sample URI definition and examine the parameters. This sample creates a service-level SAS that grants read and write permissions to a blob. Consider how you might configure the parameters to support your Azure Storage resources.

Parameter|	Example	|Description|
|-|-|-|
Resource URI|	https://myaccount.blob.core.windows.net/ ?restype=service &amp;comp=properties|	Defines the Azure Storage endpoint and other parameters. This example defines an endpoint for Blob Storage and indicates that the SAS applies to service-level operations. When the URI is used with GET, the Storage properties are retrieved. When the URI is used with SET, the Storage properties are configured.
Storage version	|sv=2015-04-05	|For Azure Storage version 2012-02-12 and later, this parameter indicates the version to use. This example indicates that version 2015-04-05 (April 5, 2015) should be used.
Storage service	|ss=bf	|Specifies the Azure Storage to which the SAS applies. This example indicates that the SAS applies to Blob Storage and Azure Files.
Start time	|st=2015-04-29T22%3A18%3A26Z	|(Optional) Specifies the start time for the SAS in UTC time. This example sets the start time as April 29, 2015 22:18:26 UTC. If you want the SAS to be valid immediately, omit the start time.
Expiry time|	se=2015-04-30T02%3A23%3A26Z|	Specifies the expiration time for the SAS in UTC time. This example sets the expiry time as April 30, 2015 02:23:26 UTC.
Resource|	sr=b	|Specifies which resources are accessible via the SAS. This example specifies that the accessible resource is in Blob Storage.
Permissions	|sp=rw|	Lists the permissions to grant. This example grants access to read and write operations.
IP range|	sip=168.1.5.60-168.1.5.70	|Specifies a range of IP addresses from which a request is accepted. This example defines the IP address range 168.1.5.60 through 168.1.5.70.
Protocol	|spr=https|	Specifies the protocols from which Azure Storage accepts the SAS. This example indicates that only requests by using HTTPS are accepted.
Signature|	sig=F%6GRVAZ5Cdj2Pw4tgU7Il STkWgn7bUkkAg8P6HESXwmf%4B	|Specifies that access to the resource is authenticated by using an HMAC signature. The signature is computed over a string-to-sign with a key by using the SHA256 algorithm, and encoded by using Base64 encoding.


### Determine Azure Storage encryption

Azure Storage encryption for data at rest protects your data by ensuring your organizational security and compliance commitments are met. The encryption and decryption processes happen automatically. Because your data is secured by default, you don't need to modify your code or applications.

Examine the following characteristics of Azure Storage encryption.

- Data is encrypted automatically before it's persisted to Azure Managed Disks, Azure Blob Storage, Azure Queue Storage, Azure Cosmos DB (Azure Table Storage), or Azure Files.

- Data is automatically decrypted before it's retrieved.

- Azure Storage encryption, encryption at rest, decryption, and key management are transparent to users.

- All data written to Azure Storage is encrypted through 256-bit advanced encryption standard (AES) encryption. AES is one of the strongest block ciphers available.

- Azure Storage encryption is enabled for all new and existing storage accounts and can't be disabled.

### Configure Azure Storage encryption

In the Azure portal, you configure Azure Storage encryption by specifying the encryption type. You can manage the keys yourself, or you can have the keys managed by Microsoft. Consider how you might implement Azure Storage encryption for your storage security.

- Create customer-managed keys

  For your Azure Storage security solution, you can use Azure Key Vault to manage your encryption keys. The Azure Key Vault APIs can be used to generate encryption keys. You can also create your own encryption keys and store them in a key vault.

  Consider the following characteristics of customer-managed keys.

  - By creating your own keys (referred to as customer-managed keys), you have more flexibility and greater control.

  - You can create, disable, audit, rotate, and define access controls for your encryption keys.

  - Customer-managed keys can be used with Azure Storage encryption. You can use a new key or an existing key vault and key. The Azure storage account and the key vault must be in the same region, but they can be in different subscriptions.

  In the Azure portal, you can configure customer-managed encryption keys. You can create your own keys, or you can have the keys managed by Microsoft. Consider how you might use Azure Key Vault to create your own customer-managed encryption keys.

  - Encryption type: Choose how the encryption key is managed: by Microsoft or by the yourself (customer).
  - Encryption key: Specify an encryption key by entering a URI, or select a key from an existing key vault.


### Azure Storage security best practices

Let's look at some recommendations that can help mitigate risks when working with a SAS.

Recommendation	|Description
|-|-|
Always use HTTPS for creation and distribution|	If a SAS is passed over HTTP and intercepted, an attacker can intercept and use the SAS. These man-in-the-middle attacks can compromise sensitive data or allow for data corruption by the malicious user.
Reference stored access policies where possible	|Stored access policies give you the option to revoke permissions without having to regenerate the Azure storage account keys. Set the storage account key expiration date far in the future.
Set near-term expiry times for an unplanned SAS|	If a SAS is compromised, you can mitigate attacks by limiting the SAS validity to a short time. This practice is important if you can't reference a stored access policy. Near-term expiration times also limit the amount of data that can be written to a blob by limiting the time available to upload to it.
Require clients automatically renew the SAS|	Require your clients to renew the SAS well before the expiration date. By renewing early, you allow time for retries if the service providing the SAS is unavailable.
Plan carefully for the SAS start time|	If you set the start time for a SAS to now, then due to clock skew (differences in current time according to different machines), failures might be observed intermittently for the first few minutes. In general, set the start time to at least 15 minutes in the past. Or, don't set a specific start time, which causes the SAS to be valid immediately in all cases. The same conditions generally apply to the expiry time. You might observe up to 15 minutes of clock skew in either direction on any request. For clients that use a REST API version earlier than 2012-02-12, the maximum duration for a SAS that doesn't reference a stored access policy is 1 hour. Any policies that specify a longer term will fail.
Define minimum access permissions for resources|	A security best practice is to provide a user with the minimum required privileges. If a user only needs read access to a single entity, then grant them read access to that single entity, and not read/write/delete access to all entities. This practice also helps lessen the damage if a SAS is compromised because the SAS has less power in the hands of an attacker.
Understand account billing for usage, including a SAS|	If you provide write access to a blob, a user might choose to upload a 200-GB blob. If you've given them read access as well, they might choose to download the blob 10 times, which incurs 2 TB in egress costs for you. Again, provide limited permissions to help mitigate the potential actions of malicious users. Use a short-lived SAS to reduce this threat, but be mindful of clock skew on the end time.
Validate data written by using a SAS|	When a client application writes data to your Azure storage account, keep in mind there can be problems with the data. If your application requires validated or authorized data, validate the data after it's written, but before it's used. This practice also protects against corrupt or malicious data being written to your account, either by a user who properly acquired the SAS, or by a user exploiting a leaked SAS.
Don't assume a SAS is always the correct choice|	In some scenarios, the risks associated with a particular operation against your Azure storage account outweigh the benefits of using a SAS. For such operations, create a middle-tier service that writes to your storage account after performing business rule validation, authentication, and auditing. Also, sometimes it's easier to manage access in other ways. If you want to make all blobs in a container publicly readable, you can make the container Public, rather than providing a SAS to every client for access.
Monitor your applications with Azure Storage Analytics|	You can use logging and metrics to observe any spike in authentication failures. You might see spikes from an outage in your SAS provider service or to the inadvertent removal of a stored access policy.

## Azure files

Azure Files offers shared storage for applications by using the industry standard Server Message Block protocol. Microsoft Azure Virtual Machines and cloud services can share file data across application components by using mounted shares. On-premises applications can also access file data in the share.

Some characteristics of Azure Files.

- Azure Files stores data as true directory objects in file shares.

- Azure Files provides shared access to files across multiple virtual machines. Any number of Azure virtual machines or roles can mount and access an Azure Files storage share simultaneously.

- Applications that run in Azure Virtual Machines or cloud services can mount an Azure Files storage share to access file data. This process is similar to how a desktop application mounts a typical SMB share.

- Azure Files offers fully managed file shares in the cloud that are accessible via SMB. Azure Files shares can be mounted concurrently by cloud or on-premises deployments of Windows, Linux, and macOS.

There are many common scenarios for using Azure Files storage. As you review the following suggestions, think about how Azure Files storage can provide solutions for your organization.

- Consider replacement and supplement options. Replace or supplement traditional on-premises file servers or NAS devices by using Azure Files.

- Consider global access. Directly access Azure Files shares by using most operating systems, such as Windows, macOS, and Linux from anywhere in the world.

- Consider lift and shift support. Lift and shift applications to the cloud with Azure Files for apps that expect a file share to store file application or user data.

- Consider the Azure File Sync agent. Replicate Azure Files shares to Windows Servers by using the Azure File Sync agent. You can replicate on-premises or in the cloud for performance and distributed caching of the data where it's being used. We'll take a closer look at the agent in a later unit.

- Consider shared applications. Store shared application settings in Azure Files, such as configuration files.

- Consider diagnostic data. Use Azure Files to store diagnostic data such as logs, metrics, and crash dumps in a shared location.

- Consider tools and utilities. Azure Files is a good option for storing tools and utilities that are needed for developing or administering Azure Virtual Machines or cloud services.

It can be difficult to determine exactly when to use Azure Files to store data as file shares rather than Azure Blob Storage or Azure Disks to store data as blobs. The following table compares different features of these services and common implementation scenarios.

Azure Files (file shares)	|Azure Blob Storage (blobs)	|Azure Disks (page blobs)|
|-|-|-|
Azure Files provides the SMB and NFS protocols, client libraries, and a REST interface that allows access from anywhere to stored files.	|Azure Blob Storage provides client libraries and a REST interface that allows unstructured data to be stored and accessed at a massive scale in block blobs.	  |Azure Disks is similar to Azure Blob Storage. Azure Disks provides a REST interface to store and access index-based or structured data in page blobs.
  -Files in an Azure Files share are true directory objects. -Data in Azure Files is accessed through file shares across multiple virtual machines.|	- Blobs in Azure Blob Storage are a flat namespace.-Blob data in Azure Blob Storage is accessed through a container.|	- Page blobs in Azure Disks are stored as 512-byte pages.-Page blob data is exclusive to a single virtual machine.
Azure Files is ideal to lift and shift an application to the cloud that already uses the native file system APIs. Share data between the app and other applications running in Azure.Azure Files is a good option when you want to store development and debugging tools that need to be accessed from many virtual machines.	Azure Blob Storage is ideal for applications that need to support streaming and random-access scenarios.|Azure Blob Storage is a good option when you want to be able to access application data from anywhere.	Azure Disks solutions are ideal when your applications run frequent random read/write operations.|Azure Disks is a good option when you want to store relational data for operating system and data disks in Azure Virtual Machines and databases.

### Manage Azure Files shares

To access your files, you need an Azure storage account. After you have a storage account, you can create and configure a file share by using Azure Files in the Azure portal.

There are two important settings for Azure Files that you need to be aware of when creating and configuring file shares.

- Open port 445. Azure Files uses the SMB protocol. SMB communicates over TCP port 445. Be sure port 445 is open. Also, make sure your firewall isn't blocking TCP port 445 from the client machine.

- Enable secure transfer. The Secure transfer required setting enhances the security of your storage account by limiting requests to your storage account from secure connections only. Consider the scenario where you use REST APIs to access your storage account. If you attempt to connect, and secure transfer required is enabled, you must connect by using HTTPS. If you try to connect to your account by using HTTP, and secure transfer required is enabled, the connection is rejected.


### Map Azure Files share on Windows
You can connect your Azure Files share with Windows or Windows Server in the Azure portal. Specify the Drive where you want to map the share, and choose the Authentication method. The system supplies you with PowerShell commands to run when you're ready to work with the file share.

### Mount Azure Files share on Linux
You can also connect Azure Files shares with Linux machines. From your virtual machine page, select Connect. Azure Files shares can be mounted in Linux distributions by using the CIFS kernel client. File mounting can be done on-demand with the mount command or on-boot (persistent) by creating an entry in /etc/fstab.

### Create file share snapshots

Azure Files provides the capability to take share snapshots of file shares. File share snapshots capture a point-in-time, read-only copy of your data.

Some characteristics of file share snapshots.

- The Azure Files share snapshot capability is provided at the file share level.
- Share snapshots are incremental in nature. Only data changed since the most recent share snapshot is saved.

- Incremental snapshots minimize the time required to create share snapshots and saves on storage costs.

- Even though share snapshots are saved incrementally, you only need to retain the most recent share snapshot to restore the share.

- You can retrieve a share snapshot for an individual file. This level of support helps with restoring individual files rather than having to restore to the entire file share.

- If you want to delete a share that has share snapshots, you must first delete all of its' snapshots.

There are several benefits to using file share snapshots and having access to incremental point-in-time data storage. As you review the following suggestions, think about how you can implement file share snapshots in your Azure Files storage solution.

Benefit	|Description|
|-|-|
Protect against application error and data corruption	|Applications that use file shares perform operations like writing, reading, storage, transmission, and processing. When an application is misconfigured or an unintentional bug is introduced, accidental overwrite or damage can happen to a few data blocks. To help protect against these scenarios, you can take a share snapshot before you deploy new application code. When a bug or application error is introduced with the new deployment, you can go back to a previous version of your data on that file share.
Protect against accidental deletions or unintended changes|	Imagine you're working on a text file in a file share. After the text file is closed, you lose the ability to undo your changes. In this scenario, you need to recover a previous version of your file. You can use share snapshots to recover previous versions of the file if it's accidentally renamed or deleted.
Support backup and recovery	|After you create a file share, you can periodically create a snapshot of the file share to use it for data backup. A share snapshot, when taken periodically, helps maintain previous versions of data that can be used for future audit requirements or disaster recovery.


## Azure File Sync

Azure File Sync enables you to cache several Azure Files shares on an on-premises Windows Server or cloud virtual machine. You can use Azure File Sync to centralize your organization's file shares in Azure Files, while keeping the flexibility, performance, and compatibility of an on-premises file server.

 characteristics of Azure File Sync.

- Azure File Sync transforms Windows Server into a quick cache of your Azure Files shares.

- You can use any protocol that's available on Windows Server to access your data locally with Azure File Sync, including SMB, NFS, and FTPS.

- Azure File Sync supports as many caches as you need around the world.

Cloud tiering is an optional feature of Azure File Sync. Frequently accessed files are cached locally on the server while all other files are tiered to Azure Files based on policy settings.

- When a file is tiered, Azure File Sync replaces the file locally with a pointer. A pointer is commonly referred to as a reparse point. The reparse point represents a URL to the file in Azure Files.

- When a user opens a tiered file, Azure File Sync seamlessly recalls the file data from Azure Files without the user needing to know that the file is stored in Azure.

- Cloud tiering files have greyed icons with an offline O file attribute to let the user know when the file is only in Azure.

There are many advantages to using Azure File Sync. Consider the following scenarios, and think about how you can use Azure File Sync with your Azure Files shares.

- Consider application lift and shift. Use Azure File Sync to move applications that require access between Azure and on-premises systems. Provide write access to the same data across Windows Servers and Azure Files.

- Consider support for branch offices. Support your branch offices that need to back up files by using Azure File Sync. Use the service to set up a new server that connects to Azure storage.

- Consider backup and disaster recovery. After you implement Azure File Sync, Azure Backup backs up your on-premises data. Restore file metadata immediately and recall data as needed for rapid disaster recovery.

- Consider file archiving with cloud tiering. Azure File Sync stores only recently accessed data on local servers. Implement cloud tiering so non-used data moves to Azure Files.

### Azure File Sync components


Azure File Sync is composed of four main components that work together to provide caching for Azure Files shares on an on-premises Windows Server or cloud virtual machine.

The following illustration shows how the components of Azure File Sync provide a cache for a storage account that has Accounting and Sales data stored in Azure Files shares.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-files-file-sync/media/file-sync-components-c6561274.png)

- Storage Sync Service
The Storage Sync Service is the top-level Azure resource for Azure File Sync. This resource is a peer of the storage account resource and can be deployed in a similar manner.

  - The Storage Sync Service forms sync relationships with multiple storage accounts by using multiple sync groups.

  - The service requires a distinct top-level resource from the storage account resource to support the sync relationships.

  - A subscription can have multiple Storage Sync Service resources deployed.

- Sync group
A sync group defines the sync topology for a set of files. Endpoints within a sync group are kept in sync with each other. Consider the scenario where you have two distinct sets of files that you want to manage with Azure File Sync. In this case, you create two sync groups and add different endpoints to each sync group. An instance of the Storage Sync Service can host as many sync groups as you need.

- Registered server
The registered server object represents a trust relationship between your server (or cluster) and the Storage Sync Service resource. You can register as many servers to a Storage Sync Service resource as you want.

- Azure File Sync agent
The Azure File Sync agent is a downloadable package that enables Windows Server to be synced with an Azure Files share. The Azure File Sync agent has three main components:

  - FileSyncSvc.exe: This file is the background Windows service that's responsible for monitoring changes on server endpoints, and for initiating sync sessions to Azure.

- StorageSync.sys: This file is the Azure File Sync file system filter that supports cloud tiering. The filter is responsible for tiering files to Azure Files when cloud tiering is enabled.

- PowerShell cmdlets: These PowerShell management cmdlets allow you to interact with the Microsoft.StorageSync Azure resource provider. You can find the cmdlets at the following (default) locations:

  - C:\\Program Files\\Azure\\StorageSyncAgent\\StorageSync.Management.PowerShell.Cmdlets.dll
  - C:\\Program Files\\Azure\\StorageSyncAgent\\StorageSync.Management.ServerCmdlets.dll

- Server endpoint
A server endpoint represents a specific location on a registered server, such as a folder on a server volume. Multiple server endpoints can exist on the same volume if their namespaces are unique (for example, F:\\sync1 and F:\\sync2).

- Cloud endpoint
A cloud endpoint is an Azure Files share that's part of a sync group. As part of a sync group, the entire cloud endpoint (Azure Files share) syncs.

  - An Azure Files share can be a member of one cloud endpoint only.

  - An Azure Files share can be a member of one sync group only.

  - Consider the scenario where you have a share with existing files. If you add the share as a cloud endpoint to a sync group, the files in the share are merged with files on other endpoints in the sync group.

### Deploy Azure File Sync

Before you can start synchronizing files with Azure File Sync, there are several high-level steps that need to be completed.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-files-file-sync/media/file-sync-steps-b6fa9fd9.png)

- **Step 1: Deploy the Storage Sync Service**
You can deploy the Storage Sync Service from the Azure portal. You configure the following settings:

  - The deployment name for the Storage Sync Service
  - The Azure subscription ID to use for the deployment
  - A Resource Group for the deployment
  - The deployment location

- **Step 2: Prepare each Windows Server to use Azure File Sync**
After you deploy the Storage Sync Service, you configure each Windows Server or cloud virtual machine that you intend to use with Azure File Sync, including server nodes in a Failover Cluster.

- **Step 3: Install the Azure File Sync agent**
When the Windows Server configuration is complete, you're ready to install the Azure File Sync agent. The agent is a downloadable package that enables Windows Server to be synced with an Azure Files share. The Azure File Sync agent installation package should install relatively quickly.

  For the agent installation, Microsoft recommends using the default installation path. Also enable Microsoft Update to ensure your severs are running the latest version of Azure File Sync.
- **Step 4: Register each Windows Server with the Storage Sync Service**
After the Azure File Sync agent installation completes, the Server Registration window opens.

  By registering the Windows Server with a Storage Sync Service, you establish a trust relationship between your server (or cluster) and the Storage Sync Service. For the registration, you need your Azure subscription ID and some of the deployment settings you configured in the first step:

  - The Storage Sync Service deployment name
  - The Resource Group for the deployment

  A server (or cluster) can be registered with only one Storage Sync Service resource at a time.

## Azure Storage with tools
Azure Administrators have many tools available to them for managing Azure Storage. They need to be efficient and select the best tool for the job.

### Azure Storage Explorer

**Azure Storage Explorer** is a standalone application that makes it easy to work with Azure Storage data on Windows, macOS, and Linux. With Azure Storage Explorer, you can access multiple accounts and subscriptions, and manage all your Storage content.

Azure Storage Explorer has the following characteristics.

- Azure Storage Explorer requires both management (Azure Resource Manager) and data layer permissions to allow full access to your resources. You need Azure Active Directory (Azure AD) permissions to access your storage account, the containers in your account, and the data in the containers.

- Azure Storage Explorer lets you connect to different storage accounts.

  - Connect to storage accounts associated with your Azure subscriptions.
  - Connect to storage accounts and services that are shared from other Azure subscriptions.
  - Connect to and manage local storage by using the Azure Storage Emulator.

  Azure Storage Explorer supports many scenarios for working with storage accounts in global and national Azure. As you review these options, think about which scenarios apply to your Azure Storage implementation.

Scenario|	Description|
|-|-|
Connect to an Azure subscription|	Manage storage resources that belong to your Azure subscription.
Work with local development storage	|Manage local storage by using the Azure Storage Emulator.
Attach to external storage	|Manage storage resources that belong to another Azure subscription or that are under national Azure clouds by using the storage account name, key, and endpoints. This scenario is described in more detail in the next section.
Attach a storage account with a SAS	|Manage storage resources that belong to another Azure subscription by using a shared access signature (SAS).
Attach a service with a SAS	|Manage a specific Azure Storage service (blob container, queue, or table) that belongs to another Azure subscription by using a SAS.

Azure Storage Explorer lets you attach to external storage accounts so storage accounts can be easily shared.

To create the connection, you need the external storage Account name and Account key. In the Azure portal, the account key is called key1.

To use a storage account name and key from a national Azure cloud, use the Storage endpoints domain drop-down menu to select Other, and then enter the custom storage account endpoint domain.

**Access keys** provide access to the entire storage account. You're provided two access keys so you can maintain connections by using one key while regenerating the other.

Store your access keys securely. We recommend regenerating your access keys regularly.

When you regenerate your access keys, you must update any Azure resources and applications that access this storage account to use the new keys. This action doesn't interrupt access to disks from your virtual machines.

### Azure Import/Export service

The Azure Import/Export service is used to securely import large amounts of data to Azure Blob Storage and Azure Files by shipping disk drives to an Azure datacenter. This service can also be used to transfer data from Azure Blob Storage to disk drives and ship to your on-premises sites.

Characteristics of the Azure Import/Export service.

- Data from your disk drives can be imported to Azure Blob Storage or Azure Files in your Azure storage account.

- Data from Azure Storage in your Azure storage account can be exported to drives that you provide.

- Create an Azure Import job to import data from physical disks into Azure Blob Storage or Azure Files.

- Create an Azure Export job to export data from Azure Storage to hard disk drives.

- You can create jobs directly from the Azure portal or programmatically by using the Azure Storage Import/Export REST API.

The Azure Import/Export service is frequently used in cases where uploading or downloading data over the network is too slow or getting more network bandwidth is cost-prohibitive. Let's review some scenarios where using the Azure Import/Export service can help improve performance.

- Consider cloud migrations. Move large amounts of data to Azure quickly and cost effectively with the Azure Import/Export service.

- Consider content distribution. Send data quickly to customer sites in diverse geographic locations.

- Consider backup operations. Use the Azure Import/Export service to take backups of your on-premises data to store in Azure Blob Storage.

- Consider data recovery. Recover large amounts of data stored in Blob Storage, and have the delivered to your on-premises location with the Azure Import/Export service.

### Azure Import jobs
Azure Import jobs securely transfer large amounts of data to Azure Blob Storage (block blobs or page blobs) or Azure Files. You ship disk drives to an Azure datacenter, the staff copy specified data to the drives and then return the drives to you. Consider how Azure Import jobs can be a part of your data transfer strategy.

Create an Azure Import job
Follow these steps to create an Azure Import job.

1. If you don't have an Azure storage account, create an account to use for the Import job.

2. Determine the number of disks needed to accommodate the data to transfer.

3. Identify the computer to use to perform the data copy, and attach the physical disks you intend to ship to Microsoft.

4. Install the WAImportExport tool on the disks. We'll take a closer look at the WAImportExport tool in the next unit.

5. Run the WAImportExport tool to copy the data on the disks.

    - Encrypt the disk drives with BitLocker.
    - Generate journal files to document the data transfer.
6. In the Azure portal, create an Azure Import job and provide the following information:

    - The Azure Storage account to use for the Import job
    - The return address for shipment of your disks
    - Your shipment carrier account number
    - The datacenter address of the Azure region that hosts the Azure storage account
7. Ship the required number of disks to the Azure region datacenter that hosts the storage account. Note the shipment tracking number.

8. Update the Import job to include the shipment tracking number.

9. After the disks arrive at the Azure datacenter, the staff completes the following tasks:

    - The data on the provided disks is copied to the specified storage account.
    - The disks are shipped back to you.

### Azure Export jobs
Azure Export jobs transfer data from Azure Storage to hard disk drives and ship the disks to your on-premises sites. Think about how Azure Export jobs can support your data transfer scenarios.

Create an Azure Export job
Follow these steps to create an Azure Export job.

1. Identify the data in Azure Blob Storage to export.

2. Determine the number of disks needed to accommodate the data to transfer.

3. In the Azure portal, create an Azure Export job and provide the following information:

    - The Azure Storage account to use for the Export job
    - The blob data to export
    - The return address for shipment of your disks
    - Your shipment carrier account number
4. Ship the required number of disks to the Azure region datacenter that hosts the storage account. Note the shipment tracking number.

5. Update the Export job to include the shipment tracking number.

6. After the disks arrive at the Azure datacenter, the staff completes the following tasks:

    - The specified data in the storage account is copied to the disks you provided.
    - The disk volumes are encrypted by using BitLocker.
    - The disks are shipped back to you.

    The BitLocker keys used to encrypt your disks are stored with the specified storage account in the Azure portal. You can decrypt the content of the disks and copy the data to your on-premises storage.

### WAImportExport tool

WAImportExport is the Azure Import/Export service tool. The tool is used to prepare drives before importing data, and to repair any corrupted or missing files after data transfer.

The WAImportExport tool is available in two versions:

  - Version 1 is best for importing and exporting data in Azure Blob Storage.
  - Version 2 is best for importing data into Azure Files.

The WAImportExport tool is only compatible with 64-bit Windows operating system. For the list of supported operating systems and versions, see Azure Import/Export requirements.

You can use the WAImportExport tool with the Azure Import/Export service to complete the following tasks:

- Before you create an Azure Import job, use the WAImportExport tool to copy data to the hard disk drives you intend to ship to Microsoft.

- After your Azure Import job completes, use the WAImportExport tool to repair any blobs that were corrupted, missing, or that have conflicts with other blobs in your Azure Storage.

- After you receive your disk drives from a completed Azure Export job, use the WAImportExport tool to repair any corrupted or missing files on the drives.

- The WAImportExport tool handles data copy, volume encryption, and creation of journal files. Journal files are necessary to create an Azure Import/Export job and help ensure the integrity of the data transfer.

There are several points to consider as you plan for using the WAImportExport tool with the Azure Import/Export service.

- Consider supported disk drives. For hard disk drives, the Azure Import/Export service requires internal SATA II/III HDDs or SSDs. Keep this requirement in mind when selecting your hard disk drives.

- Consider BitLocker encryption. When you prepare a disk for an Azure Import job, you must encrypt the NTFS volume of each disk drive with BitLocker.

- Consider OS version. To prepare a disk drive, you must connect the drive to a computer that's running a 64-bit version of the Windows client or server operating system. You run the WAImportExport tool from that computer.

### AzCopy tool

An alternate method for transferring data is the AzCopy tool. AzCopy v10 is the next-generation command-line utility for copying data to and from Azure Blob Storage and Azure Files. AzCopy v10 offers a redesigned command-line interface (CLI) and new architecture for high-performance reliable data transfers. You can use AzCopy to copy data between a file system and a storage account, or between storage accounts.

 characteristics of the AzCopy tool.

- Every AzCopy instance creates a job order and a related log file. You can view and restart previous jobs, and resume failed jobs.

- You can use AzCopy to list or remove files or blobs in a given path. AzCopy supports wildcard patterns in a path, --include flags, and --exclude flags.

- AzCopy automatically retries a transfer when a failure occurs.

- When you use Azure Blob Storage, AzCopy lets you copy an entire account to another account with the Put command from URL APIs. No data transfer to the client is needed.

- AzCopy supports Azure Data Lake Storage Gen2 APIs.

- AzCopy is built into Azure Storage Explorer.

- AzCopy is available on Windows, Linux, and macOS.


There are two options to authenticate your transferred data when using AzCopy.

Authentication	|Support|	Description
|-|-|-|
Azure Active Directory (Azure AD)|	Azure Blob Storage and Azure Data Lake Storage Gen2|	The user enters the .\\azcopy sign-in command to sign in by using Azure AD. The user should have the Storage Blob Data Contributor role assigned, which allows them to write to Blob Storage by using Azure AD authentication. When the user signs in from Azure AD, they provide their credentials only once. This option allows the user to circumvent having to append a SAS token to each command.
SAS tokens	|Azure Blob Storage and Azure Files	|On the command line, the user appends a SAS token to the blob or file path for every command they enter.

###AzCopy and Azure Storage Explorer
Azure Storage Explorer uses the AzCopy tool for all of its data transfers. If you want to use a graphical UI to work with your files, you can use Azure Storage Explorer and gain the performance advantages of AzCopy.

Azure Storage Explorer uses your account key to perform operations. After you sign into Azure Storage Explorer, you don't need to provide your authorization credentials again.

Review the following scenarios for using AzCopy. Consider how the tool features can enhance your Azure Storage solution.

- Consider data synchronization. Use AzCopy to synchronize a file system to Azure Blob Storage and vice versa. AzCopy is ideal for incremental copy scenarios.

- Consider job management. Manage your transfer operations with AzCopy. View and restart previous jobs. Resume failed jobs.

- Consider transfer resiliency. Provide data resiliency for your data transfers. If a copy job fails, AzCopy automatically retries the copy.

- Consider fast account to account copy. Use AzCopy with Azure Blob Storage for the account to account copy feature. Because data isn't transferred to the client, the transfer is faster.

### Virtual machines

Azure Virtual Machines is one of several types of on-demand, scalable computing resources that Azure offers. Typically, you'll choose a virtual machine if you need more control over the computing environment than the choices such as App Service or Cloud Services offer. Virtual machines provide an operating system, storage, and networking capabilities and can run a wide range of applications.

business scenarios
- Test and development. Teams can quickly set up and dismantle test and development environments, bringing new applications to market faster. IaaS makes it quick and economical to scale up dev-test environments up and down.
- Website hosting. Running websites using IaaS can be less expensive than traditional web hosting.
- Storage, backup, and recovery. Organizations avoid the expense for storage and complexity of storage management. Recovery typically requires a skilled staff to manage data and meet legal and compliance requirements. IaaS is useful for handling unpredictable demand and steadily growing storage needs. It can also simplify planning and management of backup and recovery systems.
- High-performance computing. High-performance computing (HPC) on supercomputers, computer grids, or computer clusters helps solve complex problems involving millions of variables or calculations. Examples include earthquake and protein folding simulations, climate and weather predictions, financial modeling, and evaluating product designs.
- Big data analysis. Big data is a popular term for massive data sets that contain potentially valuable patterns, trends, and associations. Mining data sets to locate or tease out these hidden patterns requires a huge amount of processing power, which IaaS economically provides.
- Extended Datacenter. Add capacity to your datacenter by adding virtual machines in Azure. Avoid the costs of physically adding hardware or space to your physical location. Connect your physical network to the Azure cloud network seamlessly.
 

### Plan virtual machines

Provisioning VMs to Azure requires planning.

- **Start with the network** Virtual networks (VNets) are used in Azure to provide private connectivity between Azure Virtual Machines and other Azure services. VMs and services that are part of the same virtual network can access one another. By default, services outside the virtual network can't connect to services within the virtual network
  
  Network addresses and subnets aren't trivial to change once you have them set up. If you plan to connect your private company network to the Azure services, you'll want to make sure you consider the topology before putting any VMs into place.


- **Name the VM** The VM name is used as the computer name, which is configured as part of the operating system. You can specify a name of up to 15 characters on a Windows VM and 64 characters on a Linux VM.
  
  The virtual machine name also defines a manageable Azure resource, and it's not trivial to change later. That means you should choose names that are meaningful and consistent, so you can easily identify what the VM does. A good convention is to include the following information in the name:

  Element|Example|Notes|
  |-|-|-|
  Environment|dev, prod, QA|Identifies the environment for the resource|
  Location|uw (US West), ue (US East)|Identifies the region into which the resource is deployed
  Instance|01, 02|For resources that have more than one named instance (web servers, etc.)
  Product or Service|service|Identifies the product, application, or service that the resource supports
  Role|sql, web, messaging|Identifies the role of the associated resource

  For example, devusc-webvm01 might represent the first development web server hosted in the US South Central location.

- **Decide the location for the VM**
  Azure has datacenters all over the world filled with servers and disks. These datacenters are grouped into geographic regions ('West US', 'North Europe', 'Southeast Asia', etc.) to provide redundancy and availability.

  You must select a region where you want the resources (CPU, storage, etc.) to be allocated. The region lets you locate your VMs as close as possible to your users to improve performance and to meet any legal, compliance, or tax requirements.
  - The location can limit your available options
  - There are price differences between locations.

- **Determine the size of the VM**
  The best way to determine the appropriate VM size is to consider the type of workload your VM needs to run. Based on the workload, you're able to choose from a subset of available VM sizes. Workload options are classified as follows on Azure:

  Type|Example Usage
  |-|-|
  General purpose|Balanced CPU-to-memory ratio. Ideal for testing and development, small to medium databases, and low to medium traffic web servers.
  Compute optimized|High CPU-to-memory ratio. Good for medium traffic web servers, network appliances, batch processes, and application servers.
  Memory optimized|High memory-to-CPU ratio. Great for relational database servers, medium to large caches, and in-memory analytics.
  Storage optimized|High disk throughput and IO ideal for Big Data, SQL, NoSQL databases, data warehousing, and large transactional databases.
  GPU|Specialized virtual machines targeted for heavy graphic rendering and video editing, as well as model training and inferencing (ND) with deep learning. Available with single or multiple GPUs.
  High performance compute|Our fastest and most powerful CPU virtual machines with optional high-throughput network interfaces (RDMA).

  Azure allows you to change the VM size when the existing size no longer meets your needs. You can resize a VM if your current hardware configuration is allowed in the new size. This provides a fully agile and elastic approach to VM management.

  Be cautious when resizing production VMs. Resizing may require a restart that can cause a temporary outage or change configuration settings like the IP address.

- **Understanding the pricing model** 
  There are two separate costs the subscription will be charged for every VM: compute and storage. By separating these costs, you scale them independently and only pay for what you need.

  Compute costs - Compute expenses are priced on a per-hour basis but billed on a per-minute basis. For example, you're only charged for 55 minutes of usage if the VM is deployed for 55 minutes. you aren't charged for compute capacity if you stop and deallocate the VM. The hourly price varies based on the VM size and OS you select.

  Storage costs - you're charged separately for the storage the VM uses. The status of the VM has no relation to the storage charges. Even when a VM is stopped/deallocated, you're charged for the storage used by the disks.

  You're able to choose from two payment options for compute costs:

  - Consumption-based - With the consumption-based option, you pay for compute capacity by the second. You're able to increase or decrease compute capacity on demand and start or stop at any time. Use consumption-based if you run applications with short-term or unpredictable workloads that can't be interrupted. For example, if you're doing a quick test, or developing an app in a VM.
  - Reserved Virtual Machine Instances - The Reserved Virtual Machine Instances (RI) option is an advance purchase of a virtual machine for one or three years in a specified region. The commitment is made up front, and in return, you get up to 72% price savings compared to pay-as-you-go pricing. RIs are flexible and can easily be exchanged or returned for an early termination fee. Use this option if the VM has to run continuously, or you need budget predictability, and you can commit to using the VM for at least a year.


- **Storage for the VM**
  Just like any other computer, virtual machines in Azure use disks as a place to store an operating system, applications, and data. All Azure virtual machines have at least two disks – an operating system disk and a temporary disk. Virtual machines also can have one or more data disks. All disks are stored as VHDs.
![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machines/media/virtual-machine-disks-ff57089c.png)

  - **Operating system disks**
  
    Every virtual machine has one attached operating system disk. That OS disk has a pre-installed OS, which was selected when the VM was created. It’s registered as a SATA drive and labeled as the C: drive by default.
  - **Temporary disk**

    Data on the temporary disk may be lost during a maintenance event or when you redeploy a VM. During a standard reboot of the VM, the data on the temporary drive should persist. However, there are cases where the data may not persist, such as moving to a new host. Therefore, any data on the temp drive shouldn't be data that is critical to the system

      - On Windows virtual machines, this disk is labeled as the D: drive by default and it used for storing pagefile.sys.
      - On Linux virtual machines, the disk is typically /dev/sdb and is formatted and mounted to /mnt by the Azure Linux Agent.
  - **Data disks**
  
    A data disk is a managed disk that's attached to a virtual machine to store application data, or other data you need to keep. Data disks are registered as SCSI drives and are labeled with a letter that you choose. The size of the virtual machine determines how many data disks you can attach to it and the type of storage you can use to host the disks.

- **Select an operating system**

### Connect to virtual machines

There are several ways to access your Azure virtual machines.

- **Windows-based virtual machines**

  You'll use the remote desktop client (RDP) to connect to the Windows-based VM hosted on Azure. RDP provides a graphical user interface (GUI) session to an Azure VM that runs any supported version of Windows.

- **Linux-based virtual machines**

  To connect to a Linux-based VM, you can use a secure shell protocol (SSH) client. SSH is an encrypted connection protocol that allows secure sign-ins over unsecured connections. Depending on your organization's security policies, you can reuse a single public-private key pair to access multiple Azure VMs and services. You don't need a separate pair of keys for each VM or service you wish to access.

   - The public key is placed on your Linux VM, or any other service that you wish to use with public-key cryptography.
  - The private key remains on your local system. Protect this private key. don't share it.

### Bastion connections

The Azure Bastion service is a fully platform-managed PaaS service. Bastion provides secure and seamless RDP/SSH connectivity to your virtual machines directly over SSL. When you connect via Azure Bastion, your virtual machines don't need a public IP address.

Bastion provides secure RDP and SSH connectivity to all VMs in the virtual network in which it's provisioned. Using Azure Bastion protects your virtual machines from exposing RDP/SSH ports to the outside world while still providing secure access using RDP/SSH. With Azure Bastion, you connect to the virtual machine directly from the Azure portal. You don't a client, agent, or another piece of software.

**default network security settings for a new virtual machine Outbound requests are considered low risk, so they're allowed by default. Inbound traffic from within the virtual network is allowed.**


## Virtual machine Availability

As an Azure administrator you must be prepared for planned and unplanned failures. There are three scenarios that can lead to your virtual machine in Azure being impacted: unplanned hardware maintenance, unexpected downtime, and planned maintenance.

- An Unplanned Hardware Maintenance event occurs when the Azure platform predicts that the hardware or any platform component associated to a physical machine, is about to fail. When the platform predicts a failure, it will issue an unplanned hardware maintenance event. Azure uses Live Migration technology to migrate the Virtual Machines from the failing hardware to a healthy physical machine. Live Migration is a VM preserving operation that only pauses the Virtual Machine for a short time, but performance might be reduced before and/or after the event.

- Unexpected Downtime is when the hardware or the physical infrastructure for the virtual machine fails unexpectedly. Unexpected downtime can include local network failures, local disk failures, or other rack level failures. When detected, the Azure platform automatically migrates (heals) your virtual machine to a healthy physical machine in the same datacenter. During the healing procedure, virtual machines experience downtime (reboot) and in some cases loss of the temporary drive.

- Planned Maintenance events are periodic updates made by Microsoft to the underlying Azure platform to improve overall reliability, performance, and security of the platform infrastructure that your virtual machines run on. Most of these updates are performed without any impact upon your Virtual Machines or Cloud Services.

### Setup availability sets

An Availability Set is a logical feature used to ensure that a group of related VMs are deployed so that they aren't all subject to a single point of failure and not all upgraded at the same time during a host operating system upgrade in the datacenter. VMs placed in an availability set should perform an identical set of functionalities and have the same software installed.

Availability Sets are an essential capability when you want to build reliable cloud solutions. Keep these general principles in mind.

- For redundancy, configure multiple virtual machines in an Availability Set.
- Configure each application tier into separate Availability Sets.
- Combine a Load Balancer with Availability Sets.
- Use managed disks with the virtual machine

### Service Level Agreements (SLAs)
- For all Virtual Machines that have two or more instances deployed across two or more Availability Zones in the same Azure region, we guarantee you will have Virtual Machine Connectivity to at least one instance at least 99.99% of the time.
- For all Virtual Machines that have two or more instances deployed in the same Availability Set, we guarantee you will have Virtual Machine Connectivity to at least one instance at least 99.95% of the time.
- For any Single Instance Virtual Machine using premium storage for all Operating System Disks and Data Disks, we guarantee you will have Virtual Machine Connectivity of at least 99.9%.

### update and fault domains

Update Domains and Fault Domains help Azure maintain high availability and fault tolerance when deploying and upgrading applications. Each virtual machine in an availability set is placed in one update domain and one fault domain.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machine-availability/media/update-fault-domains-c1ceee00.png)

- **Update domains**
An update domain (UD) is a group of nodes that are upgraded together during the process of a service upgrade (rollout). An update domain allows Azure to perform incremental or rolling upgrades across a deployment. Each update domain contains a set of virtual machines and associated physical hardware that can be updated and rebooted at the same time. During planned maintenance, only one update domain is rebooted at a time. By default, there are five (non-user-configurable) update domains, but you configure up to 20 update domains.

- **Fault domains**
A fault domain (FD) is a group of nodes that represent a physical unit of failure. A fault domain defines a group of virtual machines that share a common set of hardware, switches, that share a single point of failure. For example, a server rack serviced by a set of power or networking switches. Two fault domains mitigate against hardware failures, network outages, power interruptions, or software updates. Think of a fault domain as nodes belonging to the same physical rack.

### Review availability zones

Availability Zones is a high-availability offering that protects your applications and data from datacenter failures.

- Availability Zones are unique physical locations within an Azure region.
- Each zone is made up of one or more datacenters equipped with independent power, cooling, and networking.
- To ensure resiliency, there’s a minimum of three separate zones in all enabled regions.
- The physical separation of Availability Zones within a region protects applications and data from datacenter failures.
- Zone-redundant services replicate your applications and data across Availability Zones to protect from single-points-of-failure.
- With Availability Zones, Azure offers industry best 99.99% VM uptime SLA.

Azure services that support Availability Zones fall into two categories:

- Zonal services. Pins the resource to a specific zone (for example, virtual machines, managed disks, Standard IP addresses).
- Zone-redundant services. Platform replicates automatically across zones (for example, zone-redundant storage, SQL Database).

### vertical and horizontal scaling

- Vertical scaling

  ![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machine-availability/media/vertical-scaling-cdafa792.png)

  Vertical scaling, also known as scale up and scale down, means increasing or decreasing virtual machine sizes in response to a workload. Vertical scaling makes the virtual machines more (scale up) or less (scale down) powerful. Vertical scaling can be useful when:

  - A service built on virtual machines is under-utilized (for example at weekends). Reducing the virtual machine size can reduce monthly costs.
  - Increasing virtual machine size to cope with larger demand without creating additional virtual machines.

- Horizontal scaling

  ![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machine-availability/media/horizontal-scaling-3e457e75.png)

  Horizontal scaling, also referred to as scale out and scale in, where the number of VMs is altered depending on the workload. In this case, there is an increase (scale out) or decrease (scale in) in the number of virtual machine instances.

- Vertical scaling generally has more limitations. Vertical scaling dependent on the availability of larger hardware, which quickly hits an upper limit and can vary by region. Vertical scaling also usually requires a virtual machine to stop and restart.
- Horizontal scaling is more flexible in a cloud situation as it allows you to run potentially thousands of virtual machines to handle load.
- Reprovisioning means removing an existing virtual machine and replacing it with a new one. Do you need to retain your data?

### Implement scale sets

Virtual machine scale sets are an Azure Compute resource you can use to deploy and manage a set of identical VMs. With all VMs configured the same, virtual machine scale sets are designed to support true autoscale. No pre-provisioning of VMs is required. It is easier to build large-scale services targeting big compute, big data, and containerized workloads. As demand goes up more virtual machine instances can be added. As demand goes down virtual machines instances can be removed. The process can be manual or automated or a combination of both.

Scale set benefits
- All VM instances are created from the same base OS image and configuration. This approach lets you easily manage hundreds of VMs without additional configuration tasks or network management.
- Scale sets support the use of the Azure load balancer for basic layer-4 traffic distribution, and Azure Application Gateway for more advanced layer-7 traffic distribution and SSL termination.
- Scale sets are used to run multiple instances of your application. If one of these VM instances has a problem, customers continue to access your application through one of the other VM instances with minimal interruption.
- Customer demand for your application may change throughout the day or week. To match customer demand, scale sets can automatically increase the number of VM instances as application demand increases, then reduce the number of VM instances as demand decreases. This is known as autoscale.
- Scale sets support up to 1,000 VM instances. If you create and upload your own custom VM images, the limit is 600 VM instances.

### Create scale sets

When you create a scale set, consider these parameters.

- Initial instance count. Number of virtual machines in the scale set (0 to 1000).
- Instance size. The size of each virtual machine in the scale set.
- Azure spot instance. Low-priority VMs are allocated from Microsoft Azure's excess compute capacity. Spot instances enable several types of workloads to run at a reduced cost.
- Enable scaling beyond 100 instances. If No, the scale set will be limited to one placement group with a max capacity of 100. If Yes, the scale set can span multiple placement groups. This allows for capacity to be up to 1,000 but changes the availability characteristics of the scale set.
- Spreading algorithm. We recommend deploying with max spreading for most workloads. This approach provides the best spreading.

### Implement autoscale

An Azure virtual machine scale set can automatically increase or decrease the number of VM instances that run your application. This means you can dynamically scale to meet changing demand.


![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machine-availability/media/autoscale-45b054e0.png)

Autoscale benefits
- Automatically adjust capacity. Lets you create rules that define the acceptable performance for a positive customer experience. When those defined thresholds are met, autoscale rules act to adjust the capacity of your scale set.
- Scale out. If your application demand increases, the load on the VM instances in your scale set increases. If this increased load is consistent, rather than just a brief demand, you can configure autoscale rules to increase the number of VM instances in the scale set.
- Scale in. On an evening or weekend, your application demand may decrease. If this decreased load is consistent over a period of time, you can configure autoscale rules to decrease the number of VM instances in the scale set. This scale-in action reduces the cost to run your scale set as you only run the number of instances required to meet the current demand.
- Schedule events. Schedule events to automatically increase or decrease the capacity of your scale set at fixed times.
- Less overhead. Reduces the management overhead to monitor and optimize the performance of your application.


### Configure autoscale

When you create a scale set you can enable Autoscale. You should also define a minimum, maximum, and default number of VM instances.

- Minimum number of VMs. The minimum value for autoscale on this scale set.
- Maximum number of VMs. The maximum value for autoscale on this scale set.
- Scale out CPU threshold. The CPU usage percentage threshold for triggering the scale-out autoscale rule.
- Number of VMs to increase by. The number of virtual machines to add to the scale set when the scale-out autoscale rule is triggered.
- Scale in CPU threshold. The CPU usage percentage threshold for triggering the scale in autoscale rule.
- Number of VMs to decrease by. The number of virtual machines to remove from the scale set when the scale in autoscale rule is triggered.

## Configure virtual machine extensions

Creating and maintaining virtual machines can be a lot of work, and much of it is repetitive, requiring the same steps each time. Fortunately, there are several ways to automate the tasks of creating, maintaining, and removing virtual machines. One way is to use a virtual machine extension.

Azure virtual machine extensions are small applications that provide post-deployment configuration and automation tasks on Azure VMs. For example, if a virtual machine requires software installation, anti-virus protection, or a configuration script inside, a VM extension can be used. Extensions are all about managing your virtual machines.

Azure VM extensions can be:

- Managed with Azure CLI, PowerShell, Azure Resource Manager templates, and the Azure portal.
- Bundled with a new VM deployment or run against any existing system. For example, they can be part of a larger deployment, configuring applications on VM provision, or run against any supported extension operated systems post deployment.

There are different extensions for Windows and Linux machines and a large choice of first and third-party extensions.

### Implement custom script extensions

A Custom Script Extension(CSE) can be used to automatically launch and execute virtual machine customization tasks post configuration. Your script extension may perform simple tasks such as stopping the virtual machine or installing a software component. However, the script could be more complex and perform a series of tasks.

You can install the CSE from the Azure portal by accessing the virtual machines Extensions blade. Once the CSE resource is created, you will provide a PowerShell script file. Your script file will include the PowerShell commands you want to execute on the virtual machine. Optionally, you can pass in arguments, such as param1, param2. After the file is uploaded, it executes immediately. Scripts can be downloaded from Azure storage or GitHub, or provided to the Azure portal at extension run time.

Considerations
- Timeout. Custom Script extensions have 90 minutes to run. If your deployment exceeds this time, it is marked as a timeout. Keep this in mind when designing your script. Your virtual machine must be running to perform the tasks.
- Dependencies. If your extension requires networking or storage access, make sure that content is available.
- Failure events. Be sure to account for any errors that might occur when running your script. For example, running out of disk space, or security and access restrictions. What will the script do if there is an error?
- Sensitive data. Your extension may need sensitive information such as credentials, storage account names, and storage account access keys. How will you protect/encrypt this information?

### Implement desired state configuration

Desired State Configuration (DSC) is a management platform in Windows PowerShell. DSC enables deploying and managing configuration data for software services and managing the environment in which these services run. DSC provides a set of Windows PowerShell language extensions, Windows PowerShell cmdlets, and resources that you can use to declaratively specify how you want your software environment to be configured. DSC also provides a means to maintain and manage existing configurations.

DSC centers around creating configurations. A configuration is an easy-to-read script that describes an environment made up of computers (nodes) with specific characteristics. These characteristics can be as simple as ensuring a specific Windows feature is enabled or as complex as deploying SharePoint. Use DSC when the CSE will not work for your application.

      configuration IISInstall
      {
      Node “localhost”
      {
      WindowsFeature IIS
      {
      Ensure = “Present”
      Name = “Web-Server”
      } } }

The DSC script consists of a Configuration block, Node block, and one or more resource blocks.

- The Configuration block. This is the outermost script block. You define it by using the Configuration keyword and providing a name. In the example, the name of the configuration is IISInstall.
- One or more Node blocks. Node blocks define the computers or VMs that you are configuring. In the example, there is one Node block that targets a computer named "localhost".
- One or more resource blocks. Resource blocks configure the resource properties. In the example, there is one resource block that uses WindowsFeature. WindowsFeature indicates the name (Web-Server) of the role or feature that you want to ensure is added or removed. Ensure indicates if the role or feature is added. Your choices are Present and Absent.

## app service plans

In App Service, an app runs in an App Service plan. An App Service plan defines a set of compute resources for a web app to run. These compute resources are analogous to the server farm in conventional web hosting. One or more apps can be configured to run on the same computing resources (or in the same App Service plan).

Each App Service plan defines:

- Region (West US, East US, etc.)
- Number of VM instances
- Size of VM instances (Small, Medium, Large)


### How the app runs and scales
In the Free and Shared tiers, an app receives CPU minutes on a shared VM instance and cannot scale out. In other tiers, an app runs and scales as follows.

When you create an app in App Service, it is put into an App Service plan. When the app runs, it runs on all the VM instances configured in the App Service plan. If multiple apps are in the same App Service plan, they all share the same VM instances. If you have multiple deployment slots for an app, all deployment slots also run on the same VM instances. If you enable diagnostic logs, perform backups, or run WebJobs, they also use CPU cycles and memory on these VM instances.

In this way, the App Service plan is the scale unit of the App Service apps. If the plan is configured to run five VM instances, then all apps in the plan run on all five instances. If the plan is configured for autoscaling, then all apps in the plan are scaled out together based on the autoscale settings.

### Considerations
Since you pay for the computing resources your App Service plan allocates, you can potentially save money by putting multiple apps into one App Service plan. You can continue to add apps to an existing plan as long as the plan has enough resources to handle the load. However, keep in mind that apps in the same App Service plan all share the same compute resources. To determine whether the new app has the necessary resources, you need to understand the capacity of the existing App Service plan, and the expected load for the new app. Overloading an App Service plan can potentially cause downtime for your new and existing apps. Isolate your app into a new App Service plan when:

- The app is resource-intensive.
- You want to scale the app independently from the other apps in the existing plan.
- The app needs resource in a different geographical region.

##  Determine app service plan pricing

The pricing tier of an App Service plan determines what App Service features you get and how much you pay for the plan. There are a few categories of pricing tiers.

Selected Feature|	Free|	Shared|	Basic|	Standard|	Premium	|Isolated|
|-|-|-|-|-|-|-|
Usage|	dev/test|	dev/test|	dedicated dev/test|	production workloads	|enhanced scale and performance|	high performance, security, and isolation
Web, mobile, or API apps|	10|	100|	Unlimited|	Unlimited	|Unlimited	|Unlimited
Disk space|	1 GB|	1 GB	|10 GB|	50 GB|	250 GB|	1 TB|
Auto scale	|-|	-|	-|	Supported|	Supported|	Supported
Deployment slots	|-|	-|	-|	5|	20|	20|
Max instances|	-|	-|	Up to 3|	Up to 10|	Up to 30|	Up to 100


- Free and Shared. The Free and Shared service plans are base tiers that run on the same Azure VMs as other apps. Some apps may belong to other customers. These tiers are intended to be used only for development and testing purposes. There is no SLA provided for Free and Shared service plans. Free and Shared plans are metered on a per App basis.
- Basic. The Basic service plan is designed for apps that have lower traffic requirements, and don't need advanced auto scale and traffic management features. Pricing is based on the size and number of instances you run. Built-in network load-balancing support automatically distributes traffic across instances. The Basic service plan with Linux runtime environments supports Web App for Containers.
- Standard. The Standard service plan is designed for running production workloads. Pricing is based on the size and number of instances you run. Built-in network load-balancing support automatically distributes traffic across instances. The Standard plan includes auto scale that can automatically adjust the number of virtual machine instances running to match your traffic needs. The Standard service plan with Linux runtime environments supports Web App for Containers.
- Premium. The Premium service plan is designed to provide enhanced performance for production apps. The upgraded Premium plan, Premium v2, features Dv2-series VMs with faster processors, SSD storage, and double memory-to-core ratio compared to Standard. The new Premium plan also supports higher scale via increased instance count while still providing all the advanced capabilities found in the Standard plan. The first generation of Premium plan is still available for existing customers’ scaling needs.
- Isolated. The Isolated service plan is designed to run mission critical workloads, that are required to run in a virtual network. The Isolated plan allows customers to run their apps in a private, dedicated environment in an Azure datacenter using Dv2-series VMs with faster processors, SSD storage, and double the memory-to-core ratio compared to Standard. The private environment used with an Isolated plan is called the App Service Environment. The plan can scale to 100 instances with more available upon request.

### Scale up and scale out the app service

There are two methods for Web App scaling, scale up and scale out. Apps can be scaled manually or automatically (autoscale).

- Scale up. Get more CPU, memory, disk space, and extra features like dedicated virtual machines (VMs), custom domains and certificates, staging slots, autoscaling, and more. You scale up by changing the pricing tier of the App Service plan that your app belongs to.

- Scale out: Increase the number of VM instances that run your app. You can scale out to as many as 30 instances, depending on your pricing tier. App Service Environments in Isolated tier further increases your scale-out count to 100 instances. The scale instance count can be configured manually or automatically (autoscale). Autoscale is based on predefined rules and schedules.

### Changing your App Service plan (scale up)

Your App Service plan can be scaled up and down at any time. It's as simple as changing the pricing tier of the plan. You can choose a lower pricing tier at first and scale up later when you need more App Service features.


- The scale settings take only seconds to apply and affect all apps in your App Service plan. They don't require you to change your code or redeploy your application.
- If your app depends on other services, such as Azure SQL Database or Azure Storage, you can scale up these resources separately. These resources aren't managed by the App Service plan.

### Configure app service plan scaling

Autoscale allows you to have the right amount of resources running to handle the load on your application. It allows you to add resources to handle increases in load and also save money by removing resources that are sitting idle. You specify a minimum and maximum number of instances to run and add or remove VMs automatically based on a set of rules. When rule conditions are met, one or more autoscale actions are triggered.

An autoscale setting is read by the autoscale engine to determine whether to scale out or in. Autoscale settings are grouped into profiles.

Rules include a trigger and a scale action (in or out). The trigger can be metric-based or time-based.

- Metric-based. Metric-based rules measure application load and add or remove VMs based on that load. For example, do this action when CPU usage is above 50%. Examples of metrics are CPU time, Average response time, and Requests.
- Time-based. Time-based (schedule-based) rules allow you to scale when you see time patterns in your load and want to scale before a possible load increase or decrease occurs. For example, trigger a webhook every 8am on Saturday in a given time zone.

Considerations
- Having a minimum instance count makes sure your application is always running even under no load.
- Having a maximum instance count limits your total possible hourly cost.
- You can automatically scale between the minimum and maximum using rules you create.
- Ensure the maximum and minimum values are different and have an adequate margin between them.
- Always use a scale-out and scale-in rule combination that performs an increase and decrease.
- Choose the appropriate statistic for your diagnostics metric (Average, Minimum, Maximum and Total).
- Always select a safe default instance count. The default instance count is important because autoscale scales your service to that count when metrics are not available.
- Always configure autoscale notifications.

## Configure Azure App Services

Azure App Service brings together everything you need to create websites, mobile backends, and web APIs for any platform or device. Applications run and scale with ease on both Windows and Linux-based environments. There are many deployment choices.

### Reasons to use App Services
- Multiple languages and frameworks. App Service has first-class support for ASP.NET, Java, Ruby, Node.js, PHP, or Python. You can also run PowerShell and other scripts or executables as background services.
- DevOps optimization. Set up continuous integration and deployment with Azure DevOps, GitHub, BitBucket, Docker Hub, or Azure Container Registry. Promote updates through test and staging environments. Manage your apps in App Service by using Azure PowerShell or the cross-platform command-line interface (CLI).
- Global scale with high availability. Scale up or out manually or automatically. Host your apps anywhere in Microsoft's global datacenter infrastructure, and the App Service SLA promises high availability.
- Connections to SaaS platforms and on-premises data. Choose from more than 50 connectors for enterprise systems (such as SAP), SaaS services (such as Salesforce), and internet services (such as Facebook). Access on-premises data using Hybrid Connections and Azure Virtual Networks.
- Security and compliance. App Service is ISO, SOC, and PCI compliant. Authenticate users with Azure Active Directory or with social login (Google, Facebook, Twitter, and Microsoft). Create IP address restrictions and manage service identities.
- Application templates. Choose from an extensive list of application templates in the Azure Marketplace, such as WordPress, Joomla, and Drupal.
- Visual Studio integration. Dedicated tools in Visual Studio streamline the work of creating, deploying, and debugging.
- API and mobile features. App Service provides turn-key CORS support for RESTful API scenarios, and simplifies mobile app scenarios by enabling authentication, offline data sync, push notifications, and more.
- Serverless code. Run a code snippet or script on-demand without having to explicitly provision or manage infrastructure and pay only for the compute time your code actually uses.

### Create an app service

When creating an App Service, you will need to specify a resource group and service plan. Then there are few other configuration choices. You may need to ask your developer for assistance in completing this information.

- Name. The name must be unique and will be used to locate your app. For example, webappces1.azurewebsites.net. You can map a custom domain name, if you prefer to use that instead.
- Publish. The App service can host either Code or a Docker Container.
- Runtime stack. The software stack to run the app, including the language and SDK versions. For Linux apps and custom container apps, you can also set an optional start-up command or file. Choices include: .NET Core, .NET Framework, Node.js, PHP, Python, and Ruby. Various versions of each are available.
- Operating system. Choices are Linux and Windows.
- Region. Your choice will affect app service plan availability.

### Application settings
Once your app service is created, additional configuration information is available.

Certain configuration settings can be included in the developer's code or configurated in the app service. Here are a few interesting settings.

- Always On. Keep the app loaded even when there's no traffic. It's required for continuous WebJobs or for WebJobs that are triggered using a CRON expression.
- ARR affinity. In a multi-instance deployment, ensure that the client is routed to the same instance for the life of the session.
- Connection strings. Connection strings are encrypted at rest and transmitted over an encrypted channel.

### Explore continuous integration and deployment

The Azure portal provides out-of-the-box continuous integration and deployment with Azure DevOps, GitHub, Bitbucket, FTP, or a local Git repository on your development machine. Connect your web app with any of the above sources and App Service will do the rest for you by auto-syncing code and any future changes on the code into the web app. Furthermore, with Azure DevOps, you can define your own build and release process that compiles your source code, runs the tests, builds a release, and finally deploys the release into your web app every time you commit the code. All that happens implicitly without any need to intervene.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-app-services/media/continuous-development-a0dfd350.png)

- Automated deployment

  Automated deployment, or continuous integration, is a process used to push out new features and bug fixes in a fast and repetitive pattern with minimal impact on end users. Azure supports automated deployment directly from several sources. The following options are available:

  - Azure DevOps: You can push your code to Azure DevOps (previously known as Visual Studio Team Services), build your code in the cloud, run the tests, generate a release from the code, and finally, push your code to an Azure Web App.
  - GitHub: Azure supports automated deployment directly from GitHub. When you connect your GitHub repository to Azure for automated deployment, any changes you push to your production branch on GitHub will be automatically deployed for you.
  - Bitbucket: With its similarities to GitHub, you can configure an automated deployment with Bitbucket.
- Manual deployment
  There are a few options that you can use to manually push your code to Azure:

  - Git: App Service web apps feature a Git URL that you can add as a remote repository. Pushing to the remote repository will deploy your app.
  - CLI: webapp up is a feature of the command-line interface that packages your app and deploys it. Deployment can include creating a new App Service web app.
  - Visual Studio: Visual Studio features an App Service deployment wizard that can walk you through the deployment process.
  - FTP/S: FTP or FTPS is a traditional way of pushing your code to many hosting environments, including App Service.


### Create deployment slots

When you deploy your web app, web app on Linux, mobile back end, or API app to Azure App Service, you can use a separate deployment slot instead of the default production slot when you're running in the Standard, Premium, or Isolated App Service plan tier. Deployment slots are live apps with their own hostnames. App content and configurations elements can be swapped between two deployment slots, including the production slot.

- Deployment slot advantages
Using separate staging and production slots has several advantages.

  - You can validate app changes in a staging deployment slot before swapping it with the production slot.
  - Deploying an app to a slot first and swapping it into production ensures that all instances of the slot are warmed up before being swapped into production. This eliminates downtime when you deploy your app. The traffic redirection is seamless, and no requests are dropped because of swap operations. This entire workflow can be automated by configuring Auto Swap when pre-swap validation is not needed.
  - After a swap, the slot with previously staged app now has the previous production app. If the changes swapped into the production slot are not as you expected, you can perform the same swap immediately to get your “last known good site” back.

Auto swap streamlines Azure DevOps scenarios where you want to deploy your app continuously with zero cold starts and zero downtime for customers of the app. When auto swap is enabled from a slot into production, every time you push your code changes to that slot, App Service automatically swaps the app into production after it's warmed up in the source slot. Auto swap isn't currently supported in web apps on Linux.

### Add deployment slots

New deployment slots can be empty or cloned. When you clone a configuration from another deployment slot, the cloned configuration is editable. Some configuration elements follow the content across a swap (not slot specific), whereas other configuration elements stay in the same slot after a swap (slot specific). Deployment slot settings fall into three categories.

- Slot-specific app settings and connection strings, if applicable.
- Continuous deployment settings, if enabled.
- App Service authentication settings, if enabled.

**Settings that are swapped:**

- General settings, such as framework version, 32/64-bit, web sockets
- App settings (can be configured to stick to a slot)
- Connection strings (can be configured to stick to a slot)
- Handler mappings
- Public certificates
- WebJobs content
- Hybrid connections *
- Service endpoints *
- Azure Content Delivery Network *

Features marked with an asterisk (*) are planned to be unswapped.

**Settings that aren't swapped:**

- Publishing endpoints
- Custom domain names
- Non-public certificates and TLS/SSL settings
- Scale settings
- WebJobs schedulers
- IP restrictions
- Always On
- Diagnostic settings
- Cross-origin resource sharing (CORS)
- Virtual network integration

### Secure an app service

Azure App Service provides built-in authentication and authorization support, so you can sign in users and access data by writing minimal or no code in your web app, API, and mobile back end, and also Azure Functions.

Secure authentication and authorization requires deep understanding of security, including federation, encryption, JSON web tokens (JWT) management, grant types, and so on. App Service provides these utilities so that you can spend more time and energy on providing business value to your customer.

The authentication and authorization module runs in the same sandbox as your application code. When it's enabled, every incoming HTTP request passes through it before being handled by your application code. This module handles several things for your app:

- Authenticates users with the specified provider.
- Validates, stores, and refreshes tokens.
- Manages the authenticated session.
- Injects identity information into request headers.

The module runs separately from your application code and is configured using app settings. No SDKs, specific languages, or changes to your application code are required.

Configuration settings
In the Azure portal, you can configure App Service with a number of behaviors:

1. Allow Anonymous requests (no action): This option defers authorization of unauthenticated traffic to your application code. For authenticated requests, App Service also passes along authentication information in the HTTP headers.This option provides more flexibility in handling anonymous requests. It lets you present multiple sign-in providers to your users.

2. Allow only authenticated requests: The option is Log in with <provider>. App Service redirects all anonymous requests to /.auth/login/<provider> for the provider you choose. If the anonymous request comes from a native mobile app, the returned response is an HTTP 401 Unauthorized. With this option, you don't need to write any authentication code in your app.

### Logging and tracing

If you enable application logging, you will see authentication and authorization traces directly in your log files. If you see an authentication error that you didn’t expect, you can conveniently find all the details by looking in your existing application logs. If you enable failed request tracing, you can see exactly what role the authentication and authorization module may have played in a failed request. In the trace logs, look for references to a module named EasyAuthModule_32/64.

### Create custom domain names

When you create a web app, Azure assigns it to a subdomain of azurewebsites.net. For example, if your web app is named contoso, the URL is contoso.azurewebsites.net. Azure also assigns a virtual IP address. For a production web app, you may want users to see a custom domain name.

1. Reserve your domain name. If you haven't already registered for an external domain name (i.e. not *.azurewebsites.net) already, the easiest way to set up a custom domain is to buy one directly in the Azure portal. The process enables you to manage your web app's domain name directly in the Portal instead of going to a third-party site to manage it. Likewise, configuring the domain name in your web app is greatly simplified. If you do not use the portal, you can use any domain registrar. When you sign up, the registration site will help you through the process.
2. Create DNS records that map the domain to yourAzure web app. The Domain Name System (DNS) uses data records to map domain names into IP addresses. There are several types of DNS records. For web apps, you’ll create either an A record or a CNAME record. If the IP address changes, a CNAME entry is still valid, whereas an A record must be updated. However, some domain registrars do not allow CNAME records for the root domain or for wildcard domains. In that case, you must use  an A record.
   - An A (Address) record maps a domain name to an IP address.
   - A CNAME (Canonical Name) record maps a domain name to another domain name. DNS uses the second name to look up the address. Users still see the first domain name in their browser. For example, you could map contoso.com to your webapp.azurewebsites.net.
3. Enable the custom domain. After obtaining your domain and creating your DNS record, you can use the portal to validate the custom domain and add it to your web app. Be sure to test.

To map a custom DNS name to a web app, the web app's App Service plan must be a paid tier.

### Back up an app service

The Backup and Restore feature in Azure App Service lets you easily create app backups manually or on a schedule. You can configure the backups to be retained up to an indefinite amount of time. You can restore the app to a snapshot of a previous state by overwriting the existing app or restoring to another app.

App Service can back up the following information to an Azure storage account and container that you have configured your app to use.

- App configuration.
- File content.
- Database connected to your app (SQL Database, Azure Database for MySQL, Azure Database for PostgreSQL, MySQL in-app).

### Considerations
- The Backup and Restore feature requires the App Service plan to be in the Standard tier or Premium tier.
- You can configure backups manually or on a schedule.
- You need an Azure storage account and container in the same subscription as the app that you want to back up. After you have made one or more backups for your app, the backups are visible on the Containers page of your storage account, and your app. In the storage account, each backup consists of a.zip file that contains the backup data and an .xml file that contains a manifest of the .zip file contents. You can unzip and browse these files if you want to access your backups without actually performing an app restore.
- Full backups are the default. When a full backup is restored, all content on the site is replaced with whatever is in the backup. If a file is on the site, but not in the backup it gets deleted.
- Partial backups are supported. Partial backups allow you choose exactly which files you want to back up. When a partial backup is restored, any content that is located in one of the excluded directories, or any excluded file, is left as is. You restore partial backups of your site the same way you would restore a regular backup.
- You can exclude files and folders you do not want in the backup.
- Backups can be up to 10 GB of app and database content.
- Using a firewall enabled storage account as the destination for your backups is not supported.

### Application Insights

Application Insights, a feature of Azure Monitor, monitors your live applications. It will automatically detect performance anomalies, and includes powerful analytics tools to help you diagnose issues and to understand what users actually do with your app. It's designed to help you continuously improve performance and usability. Insights works on various platforms including .NET, Node.js and Java EE, hosted on-premises, hybrid, or any public cloud. It integrates with your DevOps process, and has connection points to a variety of development tools. It can monitor and analyze data from mobile apps by integrating with Visual Studio App Center.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-app-services/media/app-insights-16629887.png)

## Azure Container Instances

Compare containers to virtual machines

Feature|Containers|Virtual Machines
|-|-|-|
Isolation|Typically provides lightweight isolation from the host and other containers but doesn't provide as strong a security boundary as a virtual machine.|Provides complete isolation from the host operating system and other VMs. This is useful when a strong security boundary is critical, such as hosting apps from competing companies on the same server or cluster.
Operating system|Runs the user mode portion of an operating system and can be tailored to contain just the needed services for your app, using fewer system resources.|Runs a complete operating system including the kernel, thus requiring more system resources (CPU, memory, and storage).
Deployment|Deploy individual containers by using Docker via command line; deploy multiple containers by using an orchestrator such as Azure Kubernetes Service.|Deploy individual VMs by using Windows Admin Center or Hyper-V Manager; deploy multiple VMs by using PowerShell or System Center Virtual Machine Manager.
Persistent storage|Use Azure Disks for local storage for a single node, or Azure Files (SMB shares) for storage shared by multiple nodes or servers.|Use a virtual hard disk (VHD) for local storage for a single VM, or an SMB file share for storage shared by multiple servers.|
Fault tolerance|If a cluster node fails, any containers running on it are rapidly recreated by the orchestrator on another cluster node.|VMs can fail over to another server in a cluster, with the VM's operating system restarting on the new server.

### Container advantages

Containers offer several advantages over physical and virtual machines, including:

- Increased flexibility and speed when developing and sharing the application code.
- Simplified application testing.
- Streamlined and accelerated application deployment.
- Higher workload density, resulting in improved resource utilization.

### Azure container instances

Containers are becoming the preferred way to package, deploy, and manage cloud applications. Azure Container Instances offers the fastest and simplest way to run a container in Azure, without having to manage any virtual machines and without having to adopt a higher-level service. Azure Container Instances is a great solution for any scenario that can operate in isolated containers, including simple applications, task automation, and build jobs.

Feature|Description
|-|-|
Fast Startup Times|Containers can start in seconds without the need to provision and manage virtual machines.
Public IP Connectivity and DNS Names|Containers can be directly exposed to the internet with an IP address and FQDN.
Hypervisor-level Security|Container applications are as isolated in a container as they would be in a virtual machine.
Custom Sizes|Container nodes can be scaled dynamically to match actual resource demands for an application.
Persistent Storage|Containers support direct mounting of Azure File Shares.
Linux and Windows Containers|Container instances can schedule both Windows and Linux containers. Simply specify the OS type when you create your container groups.
Coscheduled Groups|Container instances supports scheduling of multi-container groups that share host machine resources.
Virtual Network Deployment|Container instances can be deployed into an Azure virtual network.

### Implement container groups


The top-level resource in Azure Container Instances is the container group. A container group is a collection of containers that get scheduled on the same host machine. The containers in a container group share a lifecycle, resources, local network, and storage volumes. It's similar in concept to a pod in Kubernetes.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-container-instances/media/container-groups-ea19ee6b.png)

An example container group:

- Is scheduled on a single host machine.
- Is assigned a DNS name label.
- Exposes a single public IP address, with one exposed port.
- Consists of two containers. One container listens on port 80, while the other listens on port 1433.
- Includes two Azure file shares as volume mounts, and each container mounts one of the shares locally.

### Deployment options
Here are two common ways to deploy a multi-container group: use a Resource Manager template or a YAML file. A Resource Manager template is recommended when you need to deploy additional Azure service resources (for example, an Azure Files share) when you deploy the container instances. Due to the YAML format's more concise nature, a YAML file is recommended when your deployment includes only container instances.

### Resource allocation
Azure Container Instances allocates resources such as CPUs, memory, and optionally GPUs to a multi-container group by adding the resource requests of the instances in the group. Taking CPU resources as an example, if you create a container group with two container instances, each requesting one CPU, then the container group is allocated 2 CPUs.

### Networking
Container groups can share an external-facing IP address, one or more ports on that IP address, and a DNS label with a fully qualified domain name (FQDN). To enable external clients to reach a container within the group, you must expose the port on the IP address and from the container. Because containers within the group share a port namespace, port mapping isn't supported. A container group's IP address and FQDN will be released when the container group is deleted.

### Common scenarios
Multi-container groups are useful in cases where you want to divide a single functional task into a small number of container images. These images can then be delivered by different teams and have separate resource requirements. Example usage could include:

- A container serving a web application and a container pulling the latest content from source control.
- An application container and a logging container. The logging container collects the logs and metrics output by the main application and writes them to long-term storage.
- An application container and a monitoring container. The monitoring container periodically makes a request to the application to ensure that it's running and responding correctly, and raises an alert if it's not.
- A front-end container and a back-end container. The front end might serve a web application, with the back end running a service to retrieve data.

### docker platform

Docker is a platform that enables developers to host applications within a container.

A container is essentially a standalone package that contains everything that is needed to execute a piece of software. The package includes:

- The application executable code.
- The runtime environment (such as .NET Core).
- System tools.
- Settings.

### Docker terminology
You should be familiar with the following key terms before using Docker and Container Instances to create, build, and test containers:

- Container. Container is an instance of a Docker image. It represents the execution of a single application, process, or service. It consists of the contents of a Docker image, an execution environment, and a standard set of instructions. When scaling a service, you create multiple instances of a container from the same image. Or a batch job can create multiple containers from the same image, passing different parameters to each instance.
- Container image. Container image refers to a package with all the dependencies and information required to create a container. The dependencies include frameworks and the deployment and execution configuration that a container runtime uses. Usually, an image derives from multiple base images that are layers stacked on top of each other to form the container's file system. An image is immutable once it has been created.
- Build. Build refers to the action of building a container image based on the information and context provided by the Dockerfile. The build also includes any other files that are needed. You build images by using the Docker docker build command.
- Pull. Pull refers to the process of downloading a container image from a container registry.
-Push. Push refers to the process of uploading a container image to a container registry.
- Dockerfile. Dockerfile refers to a text file that contains instructions on how to build a Docker image. The Dockerfile is like a batch script. The first line identifies the base image. The rest of the file includes the build actions.

## Azure Kubernetes Service

### AKS terminology

- Pools are groups of nodes with identical configurations.

- Nodes are individual virtual machines running containerized applications.

- Pods are a single instance of an application. A pod can contain multiple containers.

- Container is a lightweight and portable executable image that contains software and all of its dependencies.

- Deployment has one or more identical pods managed by Kubernetes.

- Manifest is the YAML file describing a deployment.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-kubernetes-service/media/kubernetes-terms-ee59aa6e.png)

### AKS cluster and node architecture

A Kubernetes cluster is divided into two components:

- Azure-managed nodes, which provide the core Kubernetes services and orchestration of application workloads.
- Customer-managed nodes that run your application workloads.

### Azure-managed node
When you create an AKS cluster, a cluster node is automatically created and configured. This node is provided as a managed Azure resource abstracted from the user. You pay only for running agent nodes

### Nodes and node pools
To run your applications and supporting services, you need a Kubernetes node. An AKS cluster contains one or more nodes (Azure Virtual Machines) that run the Kubernetes node components and the container runtime.

- The kubelet is the Kubernetes agent that processes the orchestration requests from the Azure-managed node, and scheduling of running the requested containers.
- Virtual networking is handled by the kube-proxy on each node. The proxy routes network traffic and manages IP addressing for services and pods.
- The container runtime is the component that allows containerized applications to run and interact with additional resources such as the virtual network and storage. AKS clusters using Kubernetes version 1.19 node pools and greater use containerd as its container runtime. AKS clusters using Kubernetes prior to v1.19 for node pools use Moby (upstream docker) as its container runtime.

Nodes of the same configuration are grouped together into node pools. A Kubernetes cluster contains one or more node pools. The initial number of nodes and size are defined when you create an AKS cluster, which creates a default node pool. This default node pool in AKS contains the underlying VMs that run your agent nodes.

### AKS networking

To allow access to your applications, or for application components to communicate with each other, Kubernetes provides an abstraction layer to virtual networking. Kubernetes nodes are connected to a virtual network, and can provide inbound and outbound connectivity for pods. The kube-proxy component runs on each node to provide these network features.

The Azure platform also helps to simplify virtual networking for AKS clusters. When you create a Kubernetes load balancer, the underlying Azure load balancer resource is created and configured. As you open network ports to pods, the corresponding Azure network security group rules are configured. For HTTP application routing, Azure can also configure external DNS as new ingress routes are configured.

### Services
To simplify the network configuration for application workloads, Kubernetes uses Services to logically group a set of pods together and provide network connectivity. The following Service types are available:

- Cluster IP - Creates an internal IP address for use within the AKS cluster. Good for internal-only applications that support other workloads within the cluster.
- NodePort - Creates a port mapping on the underlying node that allows the application to be accessed directly with the node IP address and port.
- LoadBalancer - Creates an Azure load balancer resource, configures an external IP address, and connects the requested pods to the load balancer backend pool. To allow customers traffic to reach the application, load-balancing rules are created on the desired ports.
- ExternalName - Creates a specific DNS entry for easier application access

### Pods
Kubernetes uses pods to run an instance of your application. A pod represents a single instance of your application. Pods typically have a 1:1 mapping with a container, although there are advanced scenarios where a pod might contain multiple containers. These multi-container pods are scheduled together on the same node, and allow containers to share related resources.

A pod is a logical resource, but the container (or containers) is where the application workloads run. Pods are typically ephemeral, disposable resources. Therefore, individually scheduled pods miss some of the high availability and redundancy features Kubernetes provides. Instead, pods are usually deployed and managed by Kubernetes controllers, such as the Deployment controller.

### AKS storage

Applications that run in Azure Kubernetes Service (AKS) may need to store and retrieve data. For some application workloads, this data storage can use local, fast storage on the node that is no longer needed when the pods are deleted. Other application workloads may require storage that persists on more regular data volumes within the Azure platform. Multiple pods may need to share the same data volumes, or reattach data volumes if the pod is rescheduled on a different node. Finally, you may need to inject sensitive data or application configuration information into pods.

This section introduces the core concepts that provide storage to your applications in AKS:

- **Volumes**

  Applications often need to be able to store and retrieve data. As Kubernetes typically treats individual pods as ephemeral, disposable resources, different approaches are available for applications use and persist data as necessary. A volume represents a way to store, retrieve, and persist data across pods and through the application lifecycle.
  These data volumes can use Azure Disks or Azure Files:

  - Azure Disks can be used to create a Kubernetes DataDisk resource. Disks can use Azure Premium storage, backed by high-performance SSDs, or Azure Standard storage, backed by regular HDDs. For most production and development workloads, use Premium storage. Azure Disks are mounted as ReadWriteOnce, so are only available to a single node. For storage volumes that can be accessed by multiple nodes simultaneously, use Azure Files.
  - Azure Files can be used to mount an SMB 3.0 share backed by an Azure Storage account to pods. Files let you share data across multiple nodes and pods. Files can use Azure Standard storage backed by regular HDDs, or Azure Premium storage, backed by high-performance SSDs.


- **Persistent volumes**
  Volumes are defined and created as part of the pod lifecycle only exist until the pod is deleted. Pods often expect their storage to remain if a pod is rescheduled on a different host during a maintenance event, especially in StatefulSets. A persistent volume (PV) is a storage resource created and managed by the Kubernetes API that can exist beyond the lifetime of an individual pod.

  Azure Disks or Files are used to provide the PersistentVolume. As noted in the previous section on Volumes, the choice of Disks or Files is often determined by the need for concurrent access to the data or the performance tier

  A PersistentVolume can be statically created by a cluster administrator, or dynamically created by the Kubernetes API server. If a pod is scheduled and requests storage that is not currently available, Kubernetes can create the underlying Azure Disk or Files storage and attach it to the pod. Dynamic provisioning uses a StorageClass to identify what type of Azure storage needs to be created.


- **Storage classes**

  To define different tiers of storage, such as Premium and Standard, you can create a StorageClass. The StorageClass also defines the reclaimPolicy. This reclaimPolicy controls the behavior of the underlying Azure storage resource when the pod is deleted and the persistent volume may no longer be required. The underlying storage resource can be deleted, or retained for use with a future pod.

  In AKS, four initial StorageClasses are created for cluster using the in-tree storage plugins:

    - default - Uses Azure StandardSSD storage to create a Managed Disk. The reclaim policy ensures that the underlying Azure Disk is deleted when the persistent volume that used it is deleted.
   - managed-premium - Uses Azure Premium storage to create a Managed Disk. The reclaim policy again ensures that the underlying Azure Disk is deleted when the persistent volume that used it is deleted.
  - azurefile - Uses Azure Standard storage to create an Azure File Share. The reclaim policy ensures that the underlying Azure File Share is deleted when the persistent volume that used it is deleted.
  - azurefile-premium - Uses Azure Premium storage to create an Azure File Share. The reclaim policy ensures that the underlying Azure File Share is deleted when the persistent volume that used it is deleted.

  If no StorageClass is specified for a persistent volume, the default StorageClass is used. Take care when requesting persistent volumes so that they use the appropriate storage you need. You can create a StorageClass for additional needs using kubectl.

- **Persistent volume claims**

  A PersistentVolumeClaim requests either Disk or File storage of a particular StorageClass, access mode, and size. The Kubernetes API server can dynamically provision the underlying storage resource in Azure if there is no existing resource to fulfill the claim based on the defined StorageClass. The pod definition includes the volume mount once the volume has been connected to the pod.

  A PersistentVolume is bound to a PersistentVolumeClaim once an available storage resource has been assigned to the pod requesting it. There is a 1:1 mapping of persistent volumes to claims.


### AKS scaling

As you run applications in Azure Kubernetes Service (AKS), you may need to increase or decrease the amount of compute resources. As the number of application instances you need change, the number of underlying Kubernetes nodes may also need to change. You may also need to quickly provision a large number of additional application instances.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-kubernetes-service/media/kubernetes-scale-a7fff281.png)

### Manually scale pods or nodes
You can manually scale replicas (pods) and nodes to test how your application responds to a change in available resources and state. Manually scaling resources also lets you define a set amount of resources to use to maintain a fixed cost, such as the number of nodes. To manually scale, you define the replica or node count, and the Kubernetes API schedules creating new pods or draining nodes.

### Horizontal pod autoscaler
Kubernetes uses the horizontal pod autoscaler (HPA) to monitor the resource demand and automatically scale the number of replicas. By default, the horizontal pod autoscaler checks the Metrics API every 30 seconds for any required changes in replica count. When changes are required, the number of replicas is increased or decreased accordingly. Horizontal pod autoscaler works with AKS clusters that have deployed the Metrics Server for Kubernetes 1.8+.

When you configure the horizontal pod autoscaler for a given deployment, you define the minimum and maximum number of replicas that can run. You also define the metric to monitor and base any scaling decisions on, such as CPU usage.

### Cooldown of scaling events
As the horizontal pod autoscaler checks the Metrics API every 30 seconds, previous scale events may not have successfully completed before another check is made. This behavior could cause the horizontal pod autoscaler to change the number of replicas before the previous scale event has been able to receive application workload and the resource demands to adjust accordingly.

To minimize these race events, cooldown or delay values can be set. These values define how long the horizontal pod autoscaler must wait after a scale event before another scale event can be triggered. This behavior allows the new replica count to take effect and the Metrics API reflect the distributed workload. By default, the delay on scale up events is 3 minutes, and the delay on scale down events is 5 minutes

You may need to tune these cooldown values. The default cooldown values may give the impression that the horizontal pod autoscaler isn't scaling the replica count quickly enough. For example, to more quickly increase the number of replicas in use, reduce the --horizontal-pod-autoscaler-upscale-delay when you create your horizontal pod autoscaler definitions using kubectl.

### Cluster autoscaler
To respond to changing pod demands, Kubernetes has a cluster autoscaler that adjusts the number of nodes based on the requested compute resources in the node pool. By default, the cluster autoscaler checks the API server every 10 seconds for any required changes in node count. If the cluster autoscale determines that a change is required, the number of nodes in your AKS cluster is increased or decreased accordingly. The cluster autoscaler works with RBAC-enabled AKS clusters that run Kubernetes 1.10.x or higher.

Cluster autoscaler is typically used alongside the horizontal pod autoscaler. When combined, the horizontal pod autoscaler increases or decreases the number of pods based on application demand, and the cluster autoscaler adjusts the number of nodes as needed to run those additional pods accordingly.

### Scale out events
If a node does not have sufficient compute resources to run a requested pod, that pod cannot progress through the scheduling process. The pod cannot start unless other compute resources are available within the node pool.

When the cluster autoscaler notices pods that cannot be scheduled due to node pool resource constraints, the number of nodes within the node pool is increased to provide the extra compute resources. When those additional nodes are successfully deployed and available for use within the node pool, the pods are then scheduled to run on them.

If your application needs to scale rapidly, some pods may remain in a state waiting to be scheduled until the new nodes deployed by the cluster autoscaler can accept the scheduled pods. For applications that have high burst demands, you can scale with virtual nodes and Azure Container Instances.

### Scale in events
The cluster autoscaler also monitors the pod scheduling status for nodes that have not recently received new scheduling requests. This scenario indicates that the node pool has more compute resources than are required, and that the number of nodes can be decreased.

A node that passes a threshold for no longer being needed for 10 minutes by default is scheduled for deletion. When this situation occurs, pods are scheduled to run on other nodes within the node pool, and the cluster autoscaler decreases the number of nodes.

Your applications may experience some disruption as pods are scheduled on different nodes when the cluster autoscaler decreases the number of nodes. To minimize disruption, avoid applications that use a single pod instance.


### AKS scaling to Azure Container Instances

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-kubernetes-service/media/kubernetes-burst-686ee747.png)

To rapidly scale your AKS cluster, you can integrate with Azure Container Instances (ACI). Kubernetes has built-in components to scale the replica and node count. However, if your application needs to rapidly scale, the horizontal pod autoscaler may schedule more pods than can be provided by the existing compute resources in the node pool. If configured, this scenario would then trigger the cluster autoscaler to deploy additional nodes in the node pool. It may take a few minutes for those nodes to successfully provision.

ACI lets you quickly deploy container instances without more infrastructure overhead. When you connect with AKS, ACI becomes a secured, logical extension of your AKS cluster. The Virtual Kubelet component is installed in your AKS cluster that presents ACI as a virtual Kubernetes node. Kubernetes can then schedule pods that run as ACI instances through virtual nodes, not as pods on VM nodes directly in your AKS cluster.

## File and folder backup

### Azure backup benefits

Azure Backup is the Azure-based service you can use to back up (or protect) and restore your data in the Microsoft cloud. Azure Backup replaces your existing on-premises or off-site backup solution with a cloud-based solution that is reliable, secure, and cost-competitive.

Azure Backup offers multiple components that you download and deploy on the appropriate computer, server, or in the cloud. The component, or agent, that you deploy depends on what you want to protect. All Azure Backup components (no matter whether you're protecting data on-premises or in the cloud) can be used to back up data to a Recovery Services vault in Azure.

### Key benefits
- Offload on-premises backup. Azure Backup offers a simple solution for backing up your on-premises resources to the cloud. Get short and long-term backup without the need to deploy complex on-premises backup solutions.

- Back up Azure IaaS VMs. Azure Backup provides independent and isolated backups to guard against accidental destruction of original data. Backups are stored in a Recovery Services vault with built-in management of recovery points. Configuration and scalability is simple, backups are optimized, and you can easily restore as needed.

- Get unlimited data transfer. Azure Backup does not limit the amount of inbound or outbound data you transfer, or charge for the data that is transferred. Outbound data refers to data transferred from a Recovery Services vault during a restore operation. If you perform an offline initial backup using the Azure Import/Export service to import large amounts of data, there is a cost associated with inbound data.

- Keep data secure. Data encryption allows for secure transmission and storage of your data in the public cloud. You store the encryption passphrase locally, and it is never transmitted or stored in Azure. If it is necessary to restore any of the data, only you have encryption passphrase, or key.

- Get app-consistent backups. An application-consistent backup means a recovery point has all required data to restore the backup copy. Azure Backup provides application-consistent backups, which ensure additional fixes are not required to restore the data. Restoring application-consistent data reduces the restoration time, allowing you to quickly return to a running state.

- Retain short and long-term data. You can use Recovery Services vaults for short-term and long-term data retention. Azure doesn't limit the length of time data can remain in a Recovery Services vault. You can keep it for as long as you like. Azure Backup has a limit of 9999 recovery points per protected instance.

- Automatic storage management. Hybrid environments often require heterogeneous storage - some on-premises and some in the cloud. With Azure Backup, there is no cost for using on-premises storage devices. Azure Backup automatically allocates and manages backup storage, and it uses a pay-as-you-use model, so that you only pay for the storage you consume.

- Multiple storage options. Azure Backup offers two types of replication to keep your storage/data highly available.

  - Locally redundant storage (LRS) replicates your data three times (it creates three copies of your data) in a storage scale unit in a datacenter. All copies of the data exist within the same region. LRS is a low-cost option for protecting your data from local hardware failures.
  - Geo-redundant storage (GRS) is the default and recommended replication option. GRS replicates your data to a secondary region (hundreds of miles away from the primary location of the source data). GRS costs more than LRS, but GRS provides a higher level of durability for your data, even if there is a regional outage.

### Implement Azure backup center

Backup Center provides a single unified management experience in Azure for enterprises to govern, monitor, operate, and analyze backups at scale. As such, it's consistent with Azure’s native management experiences.

Some of the key benefits of Backup Center include:

- Single pane of glass to manage backups. Backup Center is designed to function well across a large and distributed Azure environment. You can use Backup Center to efficiently manage backups spanning multiple workload types, vaults, subscriptions, regions, and tenants.
- Datasource-centric management. Backup Center provides views and filters that are centered on the datasources that you're backing up. Datasources like VMs and databases. This feature lets a resource owner or a backup admin administer backup items across different vaults. The admin can also filter views by datasource-specific properties. These properties include datasource subscription, datasource resource group, and datasource tags.
- Connected experiences. Backup Center provides native integrations to existing Azure services that enable management at scale. For example, Backup Center uses the Azure Policy experience to help you govern your backups. It uses Azure workbooks and Azure Monitor Logs to help you view detailed reports on backups. So you don't need to learn any new principles to use the varied features that Backup Center offers. You can also discover community resources from the Backup Center.

Backup Center is currently supported for Azure VM backup, SQL in Azure VM backup, SAP HANA in Azure VM backup, Azure Files backup, Azure Blobs backup, Azure-managed disks backup, and Azure Database for PostgreSQL Server backup.

### Setup recovery service vault backup options

The Recovery Services vault is a storage entity in Azure that stores data.

Recovery Services vaults store backup data for various Azure services such as IaaS VMs (Linux or Windows) and Azure SQL databases. Recovery Services vaults support System Center DPM, Windows Server, Azure Backup Server, and other services. Recovery Services vaults make it easy to organize your backup data, while minimizing management overhead.

The Recovery Services vault can be used to back up Azure file shares or on-premises files and folders.

Within an Azure subscription, you can create up to 500 Recovery Services vaults per region.

### Configure on-premises file and folder backups

There are several steps to configuring Azure backup of on-premises files and folders.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-file-folder-backups/media/file-folder-backup-6d3d3d1e.png)

1. Create the recovery services vault. Within your Azure subscription, you will need to create a recovery services vault for the backups.
2. Download the agent and credential file. The recovery services vault provides a link to download the Azure Backup Agent. The Backup Agent will be installed on the local machine. There is also a credentials file that is required during the installation of the agent. You must have the latest version of the agent. Versions of the agent below 2.0.9083.0 must be upgraded by uninstalling and reinstalling the agent.
3. Install and register agent. The installer provides a wizard to configure the installation location, proxy server, and passphrase information. The downloaded credential file will be used to register the agent.
4. Configure the backup. Use the agent to create a backup policy including when to backup, what to backup, how long to retain items, and settings like network throttling.

### Manage the Azure recovery services agent

Azure Backup for files and folders relies on the Microsoft Azure Recovery Services (MARS) agent to be installed on the Windows client or server.

The MARS agent is a full featured agent that has many features.

- Back up files and folders on physical or virtual Windows OS (VMs can be on-premises or in Azure).
- No separate backup server required.
- Not application aware; file, folder, and volume-level restore only.
- Back up and restore content.

## Virtual Machine backups

You can protect your data by taking backups at regular intervals. There are several backup options available for VMs, depending on your use-case.

- Azure Backup
For backing up Azure VMs running production workloads, use Azure Backup. Azure Backup supports application-consistent backups for both Windows and Linux VMs. Azure Backup creates recovery points that are stored in geo-redundant recovery vaults. When you restore from a recovery point, you can restore the whole VM or just specific files.

- Azure Site Recovery
Azure Site Recovery protects your VMs from a major disaster scenario when a whole region experiences an outage due to major natural disaster or widespread service interruption. You can configure Azure Site Recovery for your VMs so that you can recover your application with a single click in matter of minutes. You can replicate to an Azure region of your choice.

- Managed disk snapshots
In development and test environments, snapshots provide a quick and simple option for backing up VMs that use Managed Disks. A managed disk snapshot is a read-only full copy of a managed disk that is stored as a standard managed disk by default. With snapshots, you can back up your managed disks at any point in time. These snapshots exist independent of the source disk and can be used to create new managed disks. They are billed based on the used size. For example, if you create a snapshot of a managed disk with provisioned capacity of 64 GiB and actual used data size of 10 GiB, that snapshot is billed only for the used data size of 10 GiB.

- Images
Managed disks also support creating a managed custom image. You can create an image from your custom VHD in a storage account or directly from a generalized (sysprepped) VM. This process captures a single image. This image contains all managed disks associated with a VM, including both the OS and data disks. This managed custom image enables creating hundreds of VMs using your custom image without the need to copy or manage any storage accounts

- Images versus snapshots
It's important to understand the difference between images and snapshots. With managed disks, you can take an image of a generalized VM that has been deallocated. This image includes all of the disks attached to the VM. You can use this image to create a VM, and it includes all of the disks.

A snapshot is a copy of a disk at the point in time the snapshot is taken. It applies only to one disk. If you have a VM that has one disk (the OS disk), you can take a snapshot or an image of it and create a VM from either the snapshot or the image.
A snapshot doesn't have awareness of any disk except the one it contains. This makes it problematic to use in scenarios that require the coordination of multiple disks, such as striping. Snapshots would need to be able to coordinate with each other and this is currently not supported.

### Create virtual machine snapshots

An Azure backup job consists of two phases. First, a virtual machine snapshot is taken. Second, the virtual machine snapshot is transferred to the Azure Recovery Services vault.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machine-backups/media/virtual-machine-snapshot-aeddf5a2.png)

A recovery point is considered created only after both steps are completed. As a part of the upgrade, a recovery point is created as soon as the snapshot is finished. This recovery point is used to perform a restore. You can identify the recovery point in the Azure portal by using “snapshot” as the recovery point type. After the snapshot is transferred to the vault, the recovery point type changes to “snapshot and vault”.

### Capabilities and considerations
- Ability to use snapshots taken as part of a backup job that is available for recovery without waiting for data transfer to the vault to finish.
- Reduces backup and restore times by retaining snapshots locally, for two days by default. This default snapshot retention value is configurable to any value between 1 to 5 days.
- Supports disk sizes up to 32 TB. Resizing of disks is not recommended by Azure Backup.
- Supports Standard SSD disks along with Standard HDD disks and Premium SSD disks.
- Incremental snapshots are stored as page blobs.
- For premium storage accounts, the snapshots taken for instant recovery points count towards the 10-TB limit of allocated space.
- You get an ability to configure the snapshot retention based on the restore needs. Depending on the requirement, you can set the snapshot retention to a minimum of one day in the backup policy blade as explained below. This will help you save cost for snapshot retention if you don’t perform restores frequently.

By default, snapshots are retained for two days. This feature allows restore operation from these snapshots there by cutting down the restore times. It reduces the time that is required to transform and copy data back from the vault.

### Setup recovery services vault backup options

Recovery Services vault is a storage entity in Azure that houses data. The data is typically copies of data, or configuration information for virtual machines (VMs), workloads, servers, or workstations. You can use Recovery Services vaults to hold backup data for various Azure services such as IaaS VMs (Linux or Windows) and Azure SQL databases. Recovery Services vaults support System Center DPM, Windows Server, Azure Backup Server, and more. Recovery Services vaults make it easy to organize your backup data, while minimizing management overhead

### Backup virtual machines

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machine-backups/media/backup-steps-97429b0d.png)

1. Create a recovery services vault. To back up your files and folders, you need to create a Recovery Services vault in the region where you want to store the data. You also need to determine how you want your storage replicated, either geo-redundant (default) or locally redundant. By default, your vault has geo-redundant storage. If you are using Azure as a primary backup storage endpoint, use the default geo-redundant storage. If you are using Azure as a non-primary backup storage endpoint, then choose locally redundant storage, which will reduce the cost of storing data in Azure.
2. Use the Portal to define the backup. Protect your data by taking snapshots of your data at defined intervals. These snapshots are known as recovery points, and they are stored in recovery services vaults. If or when it is necessary to repair or rebuild a VM, you can restore the VM from any of the saved recovery points. A backup policy defines a matrix of when the data snapshots are taken, and how long those snapshots are retained. When defining a policy for backing up a VM, you can trigger a backup job once a day.
3. Backup the virtual machine. The Azure VM Agent must be installed on the Azure virtual machine for the Backup extension to work. However, if your VM was created from the Azure gallery, then the VM Agent is already present on the virtual machine. VMs that are migrated from on-premises data centers would not have the VM Agent installed. In such a case, the VM Agent needs to be installed.


### Restore virtual machines

Once your virtual machine snapshots are safely in the recovery services vault it is easy to recover them.

Once you trigger the restore operation, the Backup service creates a job for tracking the restore operation. The Backup service also creates and temporarily displays notifications, so you monitor how the backup is proceeding.

### Implement Azure Backup Server

Another method of backing up virtual machines is using a Data Protection Manager (DPM) or Microsoft Azure Backup Server (MABS) server. This method can be used for specialized workloads, virtual machines, or files, folders, and volumes. Specialized workloads can include SharePoint, Exchange, and SQL Server.

### Advantages
The advantages of backing up machines and apps to MABS/DPM storage, and then backing up DPM/MABS storage to a vault are as follows:

- Backing up to MABS/DPM provides app-aware backups optimized for common apps. These apps include SQL Server, Exchange, and SharePoint. Also, file/folder/volume backups, and machine state backups. Machine state backups can be bare-metal, or system state.
- For on-premises machines, you don't need to install the MARS agent on each machine you want to back up. Each machine runs the DPM/MABS protection agent, and the MARS agent runs on the MABS/DPM only.
- You have more flexibility and granular scheduling options for running backups.
- You can manage backups for multiple machines that you gather into protection groups in a single console. Grouping machines is useful when apps are tiered over multiple machines and you want to back them up at the same time.
### Backup steps
1. Install the DPM or MABS protection agent on machines you want to protect. You then add the machines to a DPM protection group.
2. To protect on-premises machines, the DPM or MABS server must be located on-premises.
3. To protect Azure VMs, the MABS server must be located in Azure, running as an Azure VM.
4. With DPM/MABS, you can protect backup volumes, shares, files, and folders. You can also protect a machine's system state (bare metal), and you can protect specific apps with app-aware backup settings.
5. When you set up protection for a machine or app in DPM/MABS, you select to back up to the MABS/DPM local disk for short-term storage and to Azure for online protection. You also specify when the backup to local DPM/MABS storage should run and when the online backup to Azure should run.
6. The disk of the protected workload is backed up to the local MABS/DPM disks, according to the schedule you specified.
7. The DPM/MABS disks are backed up to the vault by the MARS agent that's running on the DPM/MABS server.

### Compare backup options

Component|Benefits|Limits|What is protected?|Where are backups stored?|
|-|-|-|-|-|
Azure Backup (MARS) agent|Backup files and folders on physical or virtual Windows OS; no separate backup server required|Backup 3x per day; not application aware; file, folder, and volume-level restore only; no support for Linux|Files and folders|Recovery services vault
Azure Backup Server (MABS)|App aware snapshots; full flex for when to backups; recovery granularity; linux support on Hyper-V and VMware VMs; backup and restore VMware VMs, doesn't require a System Center license|Cannot backup Oracle workloads; always requires live Azure subscription; no support for tape backup|Files, folders, volumes, VMs, applications, and workloads| Recovery services vault, locally attached disk

### Manage soft delete

Azure Storage now offers soft delete for blob objects so that you can more easily recover your data when it is erroneously modified or deleted by an application or other storage account user. Soft delete for VMs protects the backups of your VMs from unintended deletion. Even after the backups are deleted, they're preserved in soft-delete state for 14 additional days.

### How soft delete works for virtual machines
1. To delete the backup data of a VM, the backup must be stopped.
2. You can then choose to delete or retain the backup data. If you choose Delete backup data and then Stop backup, the VM backup won't be permanently deleted. Rather, the backup data will be retained for 14 days in the soft deleted state.
3. During those 14 days, in the Recovery Services vault, the soft deleted VM will appear with a red soft-delete icon next to it. If any soft-deleted backup items are present in the vault, the vault can't be deleted at that time. Try deleting the vault after the backup items are permanently deleted, and there are no items in soft deleted state left in the vault.
4. To restore the soft-deleted VM, it must first be undeleted. To undelete, choose the soft-deleted VM, and then select the option Undelete. At this point, you can also restore the VM by selecting Restore VM from the chosen restore point.
5. After the undelete process is completed, the status will return to Stop backup with retain data and then you can choose Resume backup. The Resume backup operation brings back the backup item in the active state, associated with a backup policy selected by the user defining the backup and retention schedules.

### Implement Azure Site Recovery

Site Recovery helps ensure business continuity by keeping business apps and workloads running during outages. Site Recovery replicates workloads running on physical and virtual machines (VMs) from a primary site to a secondary location. When an outage occurs at your primary site, you fail over to secondary location, and access apps from there. After the primary location is running again, you can fall back to it.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-virtual-machine-backups/media/site-recovery-scenarios-388c71fd.png)

### Replications scenarios
- Replicate Azure VMs from one Azure region to another.
- Replicate on-premises VMware VMs, Hyper-V VMs, physical servers (Windows and Linux), Azure Stack VMs to Azure.
- Replicate AWS Windows instances to Azure.
- Replicate on-premises VMware VMs, Hyper-V VMs managed by System Center VMM, and physical servers to a secondary site.


## Azure Monitor

### Azure Monitor key capabilities

- Monitor and visualize metrics. Metrics are numerical values available from Azure resources helping you understand the health, operation and performance of your system.
- Query and analyze logs. Logs are activity logs, diagnostic logs, and telemetry from monitoring solutions; analytics queries help with troubleshooting and visualizations.
- Setup alerts and actions. Alerts notify you of critical conditions and potentially take automated corrective actions based on triggers from metrics or logs.

### Azure Monitor components

Monitoring is the act of collecting and analyzing data. The data can be used to determine the performance, health, and availability of your business application and the resources that it depends on.

The next diagram gives a high-level view of Azure Monitor. At the center of the diagram, are the data stores for metrics and logs. Metrics and logs are the two fundamental types of data use by Azure Monitor. On the left side of the diagram, are the sources of monitoring data that populate these data stores. On the right side of the diagram, are the different functions that Azure Monitor performs with this collected data such as analysis, alerting, and streaming to external systems.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-monitor/media/monitor-service-d0bdfd6d.png)

### Define metrics and logs

All data collected by Azure Monitor fits into one of two fundamental types, metrics and logs.

- **Metrics** are numerical values that describe some aspect of a system at a particular point in time. They are lightweight and capable of supporting near real-time scenarios.

  For many Azure resources, the data collected by Azure Monitor is displayed on the Overview page in the Azure portal. 
- **Logs** contain different kinds of data organized into records with different sets of properties for each type. Data such as events and traces are stored as logs in addition to performance data so that it can all be combined for analysis.

Log data collected by Azure Monitor is stored in Log Analytics which includes a rich query language to quickly retrieve, consolidate, and analyze collected data. You can create and test queries using the Log Analytics page in the Azure portal. You can use the query results to directly analyze the data. save queries, visualize the data, or create alert rules.

### Identify data types


Azure Monitor can collect data from various sources. You can think of monitoring data for your applications in tiers ranging from your application, any operating system and services it relies on, down to the platform itself. Azure Monitor collects data from each of the following tiers:

- Application monitoring data: Data about the performance and functionality of the code you have written, regardless of its platform.
- Guest OS monitoring data: Data about the operating system on which your application is running. The application could be running in Azure, another cloud, or on-premises.
- Azure resource monitoring data: Data about the operation of an Azure resource.
- Azure subscription monitoring data: Data about the operation and management of an Azure subscription, as well as data about the health and operation of Azure itself.
- Azure tenant monitoring data: Data about the operation of tenant-level Azure services, such as Azure Active Directory.

Azure Monitor can collect log data from any REST client using the Data Collector API. The Data Collector API lets you create custom monitoring scenarios and extend monitoring to resources that don't expose data through other sources.

### Describe activity log events

The Azure Activity Log is a subscription log that provides insight into subscription-level events that have occurred in Azure. This includes a range of data, from Azure Resource Manager operational data to updates on Service Health events.

With the Activity Log, you can determine the ‘what, who, and when’ for any write operations (PUT, POST, DELETE) taken on the resources in your subscription. You can also understand the status of the operation and other relevant properties. Through activity logs, you can determine:

- What operations were taken on the resources in your subscription?
- Who started the operation?
- When the operation occurred?
- The status of the operation.
- The values of other properties that might help you research the operation.

Activity logs are kept for 90 days. 

### Query the activity log

In the Azure portal, you can filter your Activity Log.

- Subscription. One or more Azure subscription names.
- Timespan. The start and end time for events.
- Event Severity. The severity level of the event (Informational, Warning, Error, Critical).
- Resource group. One or more resource groups within those subscriptions.
- Resource (name). The name of a specific resource.
- Resource type. The type of resource, for example, Microsoft.Compute/virtualmachines.
- Operation name. The name of an Azure Resource Manager operation, for example, Microsoft.SQL/servers/Write.
- Event initiated by. The 'caller,' or user who performed the operation.
- Search. This is an open text search box that searches for that string across all fields in all events.

### Event categories
- Administrative. This category contains the record of all create, update, delete, and action operations performed through Resource Manager. Examples of the types of events you would observe in this category include "create virtual machine" and "delete network security group". The Administrative category also includes any changes to role-based access control in a subscription.
- Service Health. This category contains the record of any service health incidents that have occurred in Azure. An example of the type of event you would observe in this category is "SQL Azure in East US is experiencing downtime." Service health events come in five varieties: Action Required, Assisted Recovery, Incident, Maintenance, Information, or Security.
- Resource Health. This category contains the record of any resource health events that have occurred to your Azure resources. An example of the type of event you would see in this category is "Virtual Machine health status changed to unavailable." Resource health events can represent one of four health statuses: Available, Unavailable, Degraded, and Unknown.
- Alert. This category contains the record of all activations of Azure alerts. An example of the type of event you would observe in this category is "CPU % on myVM has been over 80 for the past 5 minutes."
- Autoscale. This category contains the record of any events related to the operation of the autoscale engine based on any autoscale settings you have defined in your subscription. An example of the type of event you would observe in this category is "Autoscale scale up action failed."
- Recommendation. This category contains recommendation events from certain resource types, such as web sites and SQL servers. These events offer recommendations for how to better utilize your resources.
- Security. This category contains the record of any alerts generated by Azure Defender for Servers. An example of the type of event you would observe in this category is "Suspicious double extension file executed."
- Policy. This category contains records of all effect action operations performed by Azure Policy. Examples of the types of events you would see in this category include Audit and Deny.

## Azure alerts

### Manage Azure Monitor alerts

The Monitor Alerts experience has many benefits.

- Better notification system. All newer alerts use action groups, which are named groups of notifications and actions that can be reused in multiple alerts.
- A unified authoring experience. All alert creation for metrics, logs and activity log across Azure Monitor, Log Analytics, and Application Insights is in one place.
- View Log Analytics alerts in Azure portal. You can now also observe Log Analytics alerts in your subscription. Previously these were in a separate portal.
- Separation of Fired Alerts and Alert Rules. Alert Rules (the definition of the condition that triggers an alert), and Fired Alerts (an instance of the alert rule firing) are differentiated, so the operational and configuration views are separated.
- Better workflow. The new alerts authoring experience guides the user along the process of configuring an alert rule, which makes it simpler to discover the right things to get alerted on.

You can alert on metrics and logs as described in monitoring data sources. These include but are not limited to:

- Metric values
- Log search queries
- Activity Log events
- Health of the underlying Azure platform
- Tests for web site availability

### Alert states
You can set the state of an alert to specify where it is in the resolution process. When the criteria specified in the alert rule is met, an alert is created or fired, it has a status of New. You can change the status when you acknowledge an alert and when you close it. All state changes are stored in the history of the alert. The following alert states are supported.

State|Description
|-|-|
New|The issue has been detected and has not yet been reviewed.
Acknowledged|An administrator has reviewed the alert and started working on it.
Closed|The issue has been resolved. After an alert has been closed, you can reopen it by changing it to another state.

### Create alert rules

Alerts proactively notify you when important conditions are found in your monitoring data. They allow you to identify and address issues before the users of your system notice them. Alert rules consist of resources, action groups, and monitor conditions.

The alert rule captures the target and criteria for alerting. The alert rule can be in an enabled or a disabled state. Alerts only fire when enabled. The key attributes of an alert rule are:

- Target Resource – Defines the scope and signals available for alerting. A target can be any Azure resource. Example targets: a virtual machine, a storage account, a virtual machine scale set, a Log Analytics workspace, or an Application Insights resource. For certain resources (like Virtual Machines), you can specify multiple resources as the target of the alert rule.
- Signal – Signals are emitted by the target resource and can be of several types. Metric, Activity log, Application Insights, and Log.
- Criteria – Criteria is a combination of Signal and Logic applied on a Target resource. Examples: * Percentage CPU > 70%; Server Response Time > 4 ms; and Result count of a log query > 100.
- Alert Name – A specific name for the alert rule configured by the user.
- Alert Description – A description for the alert rule configured by the user.
- Severity – The severity of the alert once the criteria specified in the alert rule is met. Severity can range from 0 to 4.
- Action – A specific action taken when the alert is fired.

### Create action groups

An action group is a collection of notification preferences defined by the owner of an Azure subscription. Azure Monitor and Service Health alerts use action groups to notify users that an alert has been triggered. Various alerts may use the same action group or different action groups depending on the user's requirements.

**Notifications** configure the method in which users will be notified when the action group triggers.
  - Email Azure Resource Manager role – Send email to the members of the subscription's role. Email will only be sent to Azure AD user members of the role. Email will not be sent to Azure AD groups or service principals.
  - Email/SMS message/Push/Voice - Specify any email, SMS, push, or voice actions.

**Actions** configure the method in which actions are performed when the action group triggers.

  - Automation runbook - An automation runbook is the ability to define, build, orchestrate, manage, and report on workflows that support system and network operational processes. A runbook workflow can potentially interact with all types of infrastructure elements, such as applications, databases, and hardware.
  - Azure Function – Azure functions is a serverless compute service that lets you run event-triggered code without having to explicitly provision or manage infrastructure.
  - ITSM – Connect Azure and a supported IT Service Management (ITSM) product/service. This requires an ITSM Connection.
  - Logic App – Logic apps connect your business-critical apps and services by automating your workflows.
  - Webhook – A webhook is a HTTPS or HTTP endpoint that allows external applications to communicate with your system.

## Log Analytics

Log Analytics is a service in that helps you collect and analyze data generated by resources in your cloud and on-premises environments.

Log queries help you to use the data collected in Azure Monitor Logs. A powerful query language allows you to join data from multiple tables, aggregate large sets of data, and perform complex operations with minimal code. Virtually any question can be answered and analysis performed as long as the supporting data has been collected, and you understand how to construct the right query.

Operations Management Suite collects data from all customers performing patches and uses that data to provide an average patching time for specific missing updates. This use of “crowd-sourced” data is unique to cloud systems, and is a great example of how Log Analytics can help meet strict SLAs.

Log Analytics helps to easily identify things like abnormal behavior from a specific account, users installing unapproved software, unexpected system reboots or shutdowns, evidence of security breaches, or specific problems in loosely coupled applications.

### Create a workspace

To get started with Log Analytics you need to add a workspace.

- Provide a name for the new Log Analytics workspace.
- Select a Subscription from the drop-down list.
- For Resource Group, select an existing resource group that contains one or more Azure virtual machines.
- Select the Location your VMs are deployed to.
- The workspace will automatically use the Per GB pricing plan.

### Visualize Log Analytics data

Log Analytics provides a query syntax to quickly retrieve and consolidate data in the repository. You can create and save Log Searches to directly analyze data in the portal. You can also create log searches to run automatically and create an alert.

### Structure Log Analytics queries

When you build a query, you start by determining which tables have the data that you're looking for. Each data source and solution stores its data in dedicated tables in the Log Analytics workspace. Documentation for each data source and solution includes the name of the data type that it creates and a description of each of its properties. Many queries will only require data from a single table, but others may use a variety of options to include data from multiple tables.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-log-analytics/media/query-tables-f3872e3a.png)

The basic structure of a query is a source table followed by a series of operators separated by a pipe character |. You can chain together multiple operators to refine the data and perform advanced functions.

Some common operators are:

- count - Returns the number of records in the input record set.


      StormEvents | count

-  limit - Return up to the specified number of rows.

        T | limit 5

- summarize - Produces a table that aggregates the content of the input table.

      T | summarize count(), avg(price) by fruit, supplier

- top - Returns the first N records sorted by the specified columns.

      T | top 5 by Name desc nulls last

- where - Filters a table to the subset of rows that satisfy a predicate.

      T | where fruit=="apple"

For more information, Azure Monitor log queries (https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/)


## Network Watcher

Network Watcher provides tools to monitor, diagnose, view metrics, and enable or disable logs for resources in an Azure virtual network. Network Watcher is a regional service that enables you to monitor and diagnose conditions at a network scenario level.

- Automate remote network monitoring with packet capture. Monitor and diagnose networking issues without logging in to your virtual machines (VMs) using Network Watcher. Trigger packet capture by setting alerts, and gain access to real-time performance information at the packet level. When you observe an issue, you can investigate in detail for better diagnoses.
- Gain insight into your network traffic using flow logs. Build a deeper understanding of your network traffic pattern using Network Security Group flow logs. Information provided by flow logs helps you gather data for compliance, auditing and monitoring your network security profile.
- Diagnose VPN connectivity issues. Network Watcher provides you the ability to diagnose your most common VPN Gateway and Connections issues. Allowing you, not only, to identify the issue but also to use the detailed logs created to help further investigate.

Verify IP Flow: Quickly diagnose connectivity issues from or to the internet and from or to the on-premises environment. For example, confirming if a security rule is blocking ingress or egress traffic to or from a virtual machine. IP flow verify is ideal for making sure security rules are being correctly applied. When used for troubleshooting, if IP flow verify doesn’t show a problem, you will need to explore other areas such as firewall restrictions.

Next Hop: To determine if traffic is being directed to the intended destination by showing the next hop. This will help determine if networking routing is correctly configured. Next hop also returns the route table associated with the next hop. If the route is defined as a user-defined route, that route is returned. Otherwise, next hop returns System Route. Depending on your situation the next hop could be Internet, Virtual Appliance, Virtual Network Gateway, VNet Local, VNet Peering, or None. None lets you know that while there may be a valid system route to the destination, there is no next hop to route the traffic to the destination. When you create a virtual network, Azure creates several default outbound routes for network traffic. The outbound traffic from all resources, such as VMs, deployed in a virtual network, are routed based on Azure's default routes. You might override Azure's default routes or create additional routes.

VPN Diagnostics: Troubleshoot gateways and connections. VPN Diagnostics returns a wealth of information. Summary information is available in the portal and more detailed information is provided in log files. The log files are stored in a storage account and include things like connection statistics, CPU and memory information, IKE security errors, packet drops, and buffers and events.

NSG Flow Logs: NSG Flow Logs maps IP traffic through a network security group. These capabilities can be used in security compliance and auditing. You can define a prescriptive set of security rules as a model for security governance in your organization. A periodic compliance audit can be implemented in a programmatic way by comparing the prescriptive rules with the effective rules for each of the VMs in your network.

Connection Troubleshoot. Azure Network Watcher Connection Troubleshoot is a more recent addition to the Network Watcher suite of networking tools and capabilities. Connection Troubleshoot enables you to troubleshoot network performance and connectivity issues in Azure.

### flow verify diagnostics

IP Flow Verify Purpose: Checks if a packet is allowed or denied to or from a virtual machine. For example, confirming if a security rule is blocking ingress or egress traffic to or from a virtual machine.

The IP Flow Verify capability enables you to specify a source and destination IPv4 address, port, protocol (TCP or UDP), and traffic direction (inbound or outbound). IP Flow Verify then tests the communication and informs you if the connection succeeds or fails. If the connection fails, IP Flow Verify identifies which security rule allowed or denied the communication. With this information, you can then resolve the problem.

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-network-watcher/media/flow-verify-d136d78d.png)

IP Flow Verify is ideal for making sure security rules are being correctly applied. When used for troubleshooting, if IP Flow Verify doesn’t show a problem, you will need to explore other areas such as firewall restrictions.

### next hop diagnostics

Next Hop Purpose: To determine if traffic is being directed to the intended destination. Next hop information will help determine if network routing is correctly configured.

When you create a virtual network, Azure creates several default outbound routes for network traffic. The outbound traffic from all resources, such as VMs, deployed in a virtual network, are routed based on Azure's default routes. You might override Azure's default routes or create additional routes.

Next Hop also returns the route table associated with the next hop. If the route is defined as a user-defined route, that route is returned. Otherwise, Next Hop returns the system route. Depending on your situation, the next hop could be the Internet, Virtual Appliance, Virtual Network Gateway, VNet Local, VNet Peering, or None. A returned value of None lets you know that there may be a valid system route to the destination, there is no next hop to route the traffic to the destination.

### Visualize the network topology

Network Watcher's Topology capability enables you to generate a visual diagram of the resources in a virtual network, and the relationships between the resources. The following picture shows an example topology diagram for a virtual network that has three subnets, two VMs, network interfaces, public IP addresses, network security groups, route tables, and the relationships between the resources:

![](https://learn.microsoft.com/en-us/training/wwl-azure/configure-network-watcher/media/monitor-visualization-1fb7bd5c.png)

The topology tool generates a graphical display of your Azure virtual network, its resources, its interconnections, and their relationships with each other.

To generate the topology, you need a Network Watcher instance in the same region as the virtual network.
___________________________________________

Blob Storage resources
Blob Storage offers three types of resources:

The storage account
A container in the storage account
A blob in a container
The following diagram shows the relationship between these resources.

![](..\Images\blobstorage.png)


### Storage accounts
A storage account provides a unique namespace in Azure for your data. Every object that you store in Azure Storage has an address that includes your unique account name. The combination of the account name and the Blob Storage endpoint forms the base address for the objects in your storage account.

### Containers
A container organizes a set of blobs, similar to a directory in a file system. A storage account can include an unlimited number of containers, and a container can store an unlimited number of blobs.

A container name must be a valid DNS name, as it forms part of the unique URI (Uniform resource identifier) used to address the container or its blobs. Follow these rules when naming a container:

Container names can be between 3 and 63 characters long.
Container names must start with a letter or number, and can contain only lowercase letters, numbers, and the dash (-) character.
Two or more consecutive dash characters aren't permitted in container names.
The URI for a container is similar to:

https://myaccount.blob.core.windows.net/mycontainer

### Blobs
Azure Storage supports three types of blobs:

Block blobs store text and binary data. Block blobs are made up of blocks of data that can be managed individually. Block blobs can store up to about 190.7 TiB.
Append blobs are made up of blocks like block blobs, but are optimized for append operations. Append blobs are ideal for scenarios such as logging data from virtual machines.
Page blobs store random access files up to 8 TiB in size. Page blobs store virtual hard drive (VHD) files and serve as disks for Azure virtual machines. For more information about page blobs, see Overview of Azure page blobs
