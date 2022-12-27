## AWS Well-Architected

The AWS Well-Architected Framework describes key concepts, design principles, and architectural best practices for designing and running workloads in the cloud. By answering a few foundational questions, learn how well your architecture aligns with cloud best practices and gain guidance for making improvements.

### Operational Excellence Pillar

The operational excellence pillar focuses on running and monitoring systems, and continually improving processes and procedures. Key topics include automating changes, responding to events, and defining standards to manage daily operations.


### Security Pillar

The security pillar focuses on protecting information and systems. Key topics include confidentiality and integrity of data, managing user permissions, and establishing controls to detect security events.


### Reliability Pillar

The reliability pillar focuses on workloads performing their intended functions and how to recover quickly from failure to meet demands. Key topics include distributed system design, recovery planning, and adapting to changing requirements.

### Performance Efficiency Pillar

The performance efficiency pillar focuses on structured and streamlined allocation of IT and computing resources. Key topics include selecting resource types and sizes optimized for workload requirements, monitoring performance, and maintaining efficiency as business needs evolve.

### Cost Optimization Pillar

The cost optimization pillar focuses on avoiding unnecessary costs. Key topics include understanding spending over time and controlling fund allocation, selecting resources of the right type and quantity, and scaling to meet business needs without overspending.


### Sustainability Pillar

The sustainability pillar focuses on minimizing the environmental impacts of running cloud workloads. Key topics include a shared responsibility model for sustainability, understanding impact, and maximizing utilization to minimize required resources and reduce downstream impacts. 

## RPO VS RTO

**Recovery Point Objective (RPO)** generally refers to the amount of data that can be lost within a period most relevant to a business, before significant harm occurs, from the point of a critical event to the most preceding backup.
Los RPO calculan cuándo sus datos estuvieron disponibles por última vez

**Recovery Time Objective (RTO)** often refers to the quantity of time that an application, system and/or process, can be down for without causing significant damage to the business as well as the time spent restoring the application and its data.

Los RTO representan la cantidad de tiempo que una aplicación puede estar inactiva sin resultar en un daño significativo para el negocio y el tiempo que el sistema necesita para recuperarse.

## AWS CLI


## ROUTE 53

Choosing a routing policy
PDF
Kindle
RSS

When you create a record, you choose a routing policy, which determines how Amazon Route 53 responds to queries:

    Simple routing policy – Use for a single resource that performs a given function for your domain, for example, a web server that serves content for the example.com website.

    Failover routing policy – Use when you want to configure active-passive failover.

    Geolocation routing policy – Use when you want to route traffic based on the location of your users.

    Geoproximity routing policy – Use when you want to route traffic based on the location of your resources and, optionally, shift traffic from resources in one location to resources in another.

    Latency routing policy – Use when you have resources in multiple AWS Regions and you want to route traffic to the Region that provides the best latency with less round-trip time.

    Multivalue answer routing policy – Use when you want Route 53 to respond to DNS queries with up to eight healthy records selected at random.

    Weighted routing policy – Use to route traffic to multiple resources in proportions that you specify

    # AWS


## EC2 INSTANCES

is like a virtual machine

### EC2 PRICING OPTIONS

- *ON DEMAND*
    - short term
    - flexible
    - testing

- *RESERVED* 
 - predictable usage
 - specific capacity requirements
 - pay up front (one or three years)

 - there are 3 types 
    - standar RI 
    - Convertible RI
    - scheduled RI

- *SPOT*
    - application that have flexible start and end times 
    - aplication that are only feasible at very low computes price 
    - used for a urgent need for a large amount of additional computing capacity
- *DEDICATED*
    - Compliance regulatory requeriments that  may no support multi tenant virtualization
    - Licensing

### EC2 INSTANCE TYPES

## GENERAL PURPOUSE
T y M 

## COMPUTE OPTIMIZED
C

## FPGA INSTANCES
F

## GPU INSTANCES
G

## MACHINE LEARNING
inf

## MEMORY OPTIMIZED
R

## STORAGE OPTIMIZED
D, I, H

## EBS Elastic Block Storage

[https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html]

Highly available and scalable storage volumes that you can attach to your EC2 instances


### General purpose SSD (gp2)

-  3 IOP per GiB up to maximum of  16000 IOPS per volume
- gp2 volumes smaller tan 1TB can burst up to 3000 IOPS
- Good for boot volumes or development and test applications which are not latency sensitive

### General purpose SSD (gp3)

- baseline of 3000 IOPS for any volume size (1-16 GB)
- Delivering up to 16000 IOPs
- 20% cheaper than gp2
-  Good for boot volumes or development and test applications which are not latency sensitive

### provisioned IOPS SSD (io1)

- the high performance option and the most expenisve
- up to 64000 IOPS per volume 50 IOPS per GiB
- Use if you need more than 16000 IOPS
- Design for I/O intensive app large database, and latency sensitive workloads
- the most expensive
- durability up to 99.9%

### provisioned IOPS SSD (io2)

- latest generation
- Higher durability an more IOPS
- the same price as io1
- 500 IOPS per GiB
- Up to 64000 IOPS
- 99.999% durability instead of up to 99.9%
- Design for I/O intensive app large database, and latency sensitive workloads, app which need high levels of durability

### Provisiones IOPS SSD io2 Block Express
- SAN (storage area network) in the cloud highest performance, sub milisecon latency
- Uses EBs bloc express arquitechture
- 4x throughtput, IOPS, and capacity of regular io2 volumes
- Up to 64 TB, 256000 IOPS per volume 99.999% durability
- Great for the largest most critical , high performance app like SAP HANA, ORACLE, MS SQL Server, IBM DB2

### Throughput Optimez HDD (st1)

- Low cos HDD volume
- Baseline throughput of 40MB/s per TB
- Ability to burst up  to 250MB/s per TB
- Maximum througput of 500 MB/s per volume
- Frecuently-accessed, throughput-intensive workloads
- BIG data, data warehouse, ETL, and log processing
- A cost effective way to store mountains of data infrecuent access
- cannot be a boot volume

### COLD HDD (SC1)

- more cheaper
- Baseline througput of 12 MB/s per TB
- Ability to burst up to 80MB/s per TB
- Max throughput of 250 MB/s per volume
- A good choice for colder data requiring fewer scans per day
- Good fro applications that need the lowest cost and performance is not a factor
- cannot be a boot volume

## IOPS VS THROUGHPUT

### IOPS

- Measures the number of read and write operation per second
- import metric for quick transactions, low latency apps, transactional workloads
- the ability to action reads and writes very quickly
- Choose provisiones IOPS SSD (io1 or io2)


### THROUGHPUT

- Measure the number of bits read or written per second (MB/s)
- important metric for large datasets, large I/o sizes, complex queries
- the ability to deal with large datasets
- Choose throughput optimized HDD (st1)

## LOAD BALANCER

a load balancer distributes network traffic across a group of servers

### APLICATION LOAD BALANCER

- HTTP y HTTPS
- operates at layer 7 application layer and are application-aware



### NETWORK LOAD BALANCER

- TCP and high performance
- operates at layer 4
- most exepnsive

### CALSSIC LOAD BALANCER (legacy)

HTTP/HTTPS and TCP
- x-forwarded-for header and sticky sessions

### GATEWAY LOAD BALANCER

- Allows you to load balance workloads for third party appliances running in AWs such as
    - Virtual appliances purchased using AWS marketplace
    - Virtual firewall from companies like Fortinet, Palo Alto, Juniper, CISCO
    - IDS/IPS system from companies like CheckPoint, Trend Micro, etc

### COMMON LOAD BALANCER ERROR

- ERROR 504 gateway timeout
    - the target failed to respond
    - the ELB could not establish a connection to the target
    - Your app is having issues
    - Identfy where the app is failing and fix the problem

## ROUTE 53

Is amazon's DNS service
Allows you to map domain name that you own to:
    - EC2 instances
    - Load Balancer
    - S3 Buckets


## NOTES
 - roles are preferred from security perspective
 - avoid hard coding your credentials
 - policies control a roles's permissions
 - You can update a policy attahed to a role an it take inmediate effect
 - YOu can attach or detach roles to running EC2 instances without hving to stop or terminate

 ## RDS

 ### When would we use and RDS database?

 - RDS is generally used for online transaction processing (OLTP) workloads

### RDS TYPES

    - SQL SERVER
    - POSTGRESQL
    - ORACLE
    - MARIA DB
    - AURORA (MYSQL y POSTGRESQL)
    - MYSQL

 multi aZ
 failover capability
 automated backups

 ### difference betwee OLTP (Online transaction Processing) and OLAP (Online analytics Processing)

 - OLTP Processes from transactions in real time (payment, booking, banking transactions)
 - OLAP processes complex queries to analyze historical data, OLAP is about data analysis using large amount of data

TO OLAP RDS not suitable for analyzing large amount of data. Use datawarehouse like REdShift

### MULTIAZ

- An exact copy of your prodcution DB in another availability zone
- Used for disaster recovery
- In the event of a failure RDS will automatically failover to the stand by instance

### READ REPLICAS

- A read only copy oy your primary DB in the same AZ, cross AZ or cross region
- Used to increase or scale read performance
- Great for read heavy workloads and takes off the load off your primary DB for read only workloads

### RDS BACKUP AND SNAPSHOT

- database snapshot manual ad hoc and user initiaded it provides a snapshoy storage volume attached to the DB instance

- automated backup enable by default, it creates daily backups or snapshots that run during a backup window that you define. Transaction logs are used to replay transactions
 point in time recovery  retention period of 1 to 35 days
 retetion period

 the restore version of databasee will always be a new RDS instance with a new DNS endpoint no matter if was backup o snapshot

 ### ENCYPTION

 - encryption at rest KMS AES-256 encryption
    includes all DB storage

  - you can't enable encryption on an unencrypted RDS DB instance

  for encrypt unencrypted DB first is necessary make an snapshot then create an encrypted snapshot to the unecrypted snapshot and the encrypted DB from de encrypted snapshot

  ## ELASTICACHE

-  in memory cache (key value)
-  improve database performance
- great for read heavy database workloads: caching the results of I/O intensive database queries Also for storing sessions data for distributed applications

- there are 2 types elsticcahce MEMCAHCED and REDIS

### MEMCACHED

- great for basic object caching
- scales hotiontally, but there is no persistence, multi-AZ or failover
-good choice if you just want basic caching and you want your caching model to be as simple as possible

### REDIS

- A more sophisticated solution with enterprise feature like persistence, replication, multi  AZ and failover
- Support storing and ranking data (for gaming leaderboard) and complex data types like lists and hashes

Elastic cache not help in heavy write load or OLAP queries (redshift)

## SYSTEM MANAGER PARAMETER STORE

Parameter store store confidential info password,database connection string, licenses code, et


## S3

simple storage service provide secure, durable, highly- scalable obect store

cannot  use to run to OS or database

object up to 5 TB in size

S3 bucket name is globally unique

### S3 storage classes

 - S3 Standard 
    High availability and durability (99.99% availability, 99.999999999% durability 11's 9)
    frequently accesed data
      big data nalytics, gamming app, mobile, content distribution

 - S3 standard infrequen acces S3-IA
  designed for infrequently accesed data
  long terms storage, backups and disaster recovery
   minimum storage duration 30 days
   (99.99% availability, 99.999999999% durability 11's 9)

 -  S3 IA one zone
    cost 20% less than regular S# IA
    great for long lived, infrequently accesed, non critical data
    minimum storage duration 30 days
    (99.5% availability, 99.999999999% durability 11's 9)

 - Glacier
    Glacier is very cheap storage
    optimized for data is very infrequent accesed
    90 day minimum
    retrieval times rnage from 1 minute to 12 hours
    (99.99% availability, 99.999999999% durability 11's 9)

 - Glacier deep arhcive
    archives rarely accecesd data
    retrieval time of 12 hours
    180 days minimum
    (99.99% availability, 99.999999999% durability 11's 9)

 - S3 intellignet tiering
    automatically moves your data to the most cost-effective tier based on how frequently you access each object
    (99.9% availability, 99.999999999% durability 11's 9)

### Securing S3 buckets

BUCKET POLICIES
- bucket policies applied at bucket leves
- not individula objects
- groups of files which need to be accesed by the same people

BUCKET ACL ACCESS CONTROL LIST
- applied at an object level
- we can define which accounts or groups are granted acces and also the type of access
-  fine grained control

S3 ACCES LOGS
every time a user makes a reuqest to upload, read or delete a file logs written 


## CLOUDFORMATION

### CloudForm,ation Buildign block

Templates components:

1.  AWSTemplateFormatVersion: identifies the capabilities of the template("2010-09-09")
2. Description: comments about the template
3. Transform: specifies one or more Macros that used to process the template
4. Metadata
5. Resources: your AWS resources declared in the template (MANDATORY)
6. Parameters: the dynamic inputs for your template
7. Mapping: the static variables for your template
8. Outputs: reference to what has been created
9. Conditionals: List of conditions to perform resource creation
10. Rules: validate a parameter duric stack creation/update

parameters can be used anywhere in a template, except:
- AWSTemplateFormatVersion
- Description
- Transform
- Mappings

how to reference a parameter?
- the Fn::Ref
La función intrínseca Ref devuelve el valor del parámetro o el recurso especificado 

La sintaxis del nombre de función completo:
en YAML

        Ref: logicalName
La sintaxis de la forma abreviada:

        !Ref logicalName

- SSM (Sistem manager) Parameter Type

The AWS::SSM::Parameter resource creates an SSM parameter in AWS Systems Manager Parameter Store.

Depends on

- DeletionPolicy
Control what happens when the CloudFormation template is deleted or when a resource is removed directly from a CloudFormation template
    - Retain: Specify on resources to preserve/ backup in case of Cloudformation deletes
    - snapshot
    - delete defaul behavior
- UpdateReplacePolicy
Control what happens to a resource if you update a property whose update behavior is replacement
    - Delete (default behavior)  delete the old resource and creates a new one with a new physical ID
    - Retain keeps the reource (it is removed from cloudformations scope)
    - Snapshot



# Advanced networking Speciality


## VPC (Virtul Private Cloud) Fundamentals

- A virtual network dedicated to your AWS account
- Private address space
- VPC region level scope


### VPC Adressing

- A CIDR has two components:
    - Tha base ip (XX.XX.XX.XX)
    - The subnet mask or prefix (/26)
- Ths base IP represents and IP contained in the range
- The subnet mask defines how many bits can change in the IP
- More big is PREFIX more smaller the network
- The more small network have prefix equal 28 (16 host)

- For example 10.10.0.0/16

    IP range= 10.10.0.0 
    Prefix=16

    Total number of host addresses (IPS) in given network= 2^(32-Prefix)

    Hence in given example: the total number of host addresses= 2^(32-16)=2^16=65536

    

**NOTE**
 |PREFIX|IP CHANGE|Tootal number of host addresses|
 |-|-|-|
 /32| no IP number can change|0
 /24| last IP number can change| 256
 /16| last IP two numbers can change| 65.536
 /8| last IP three numberas can change| 16.777.216
 0| All IP numbers can change|  4.294.967.296

Private IP can Only allow certain values
 - 10.0.0.0-10.255.255.255 (10.0.0.0/8) in big networks, in AWS min MASK allowed is 16 and max MASK is 28
 - 172.16.0.0 - 172.31.255.255 (172.16.0.0/12) defaul vpc included in this range  
 - 192.168.0.0 - 192.168.3255.255 (192.168.0.0/16) example home networks  

 ### Internet Gateway

 An internet gateway is a horizontally scaled, redundant, and highly available VPC component that allows communication between your VPC and the internet.

An internet gateway enables resources in your public subnets (such as EC2 instances) to connect to the internet if the resource has a public IPv4 address or an IPv6 address.

To enable access to or from the internet for instances in a subnet in a VPC using an internet gateway, you must do the following.

- Create an internet gateway and attach it to your VPC.

- Add a route to your subnet's route table that directs internet-bound traffic to the internet gateway. (0.0.0.0/0 - intenetgateway.id)

- Ensure that instances in your subnet have a public IPv4 address or an IPv6 address.

- Ensure that your network access control lists and security group rules allow the desired internet traffic to flow to and from your instance.

### Route Tables 

- Contains rules to route the traffica in/out of subnets/VPC
- Main route tablee at VPC level
- Custom toute table at subnet level
- Each route table contains default immutable local route for VPC
- If no custom route table is defined, then new subnets are associated with Main route table
- We can modify main route table

### Subnets

- Public subnet
  - Has route for internet
  - Instance with public IP can communicate to internet
  - EX: NAT, web servers, Load balancer

- AWS reserves 5 Ips address (first 4 and las IP address) in each subnet
- These 5 IP's are note available for use and cannot be assigned to an instance   
- EX if CIDR block 10.0.0.0/24, reserved IP are:
  - 10.0.0.0 Network Address
  - 10.0.0.1 Reserved by AWS for the VPS router
  - 10.0.0.2 Reserved by AWS for mapping to Amazon-provided DNS
  - 10.0.0.3 Reserved by AWS for future use
  - 10.0.0.255 Network broadcast address. AWS does not support broadcast in a VPC, therefore the address is reserved

### IP Addresses

|Feature|Private|Public|Eleasti|
|-|-|-|-|
Communication| comunnication within VPC| Can communicate over internet| Can communicate over internet
Address range| Gets IP address from subnet range ex: 10.2000.0.1| Gets IP addres from Amazon pool within region| Get IP address from Amazon pool within region|
Instance restart behavior| Once assigned cannot be changed|Change over instance restart| Do not change over instance restart. Can be removed anytime
Releasing IP|Released when instance is terminated|Released to POOL when instance is stopped or terminated| Not release. Remains in yopur account(billed)
Automatic assigment| Receives private ip on launch on EC2 instance| Receives public ip on launch on EC2 instance in "public ip addressing attribute" is set to true for subnet| Have to explicity allocate and attach EIP to EC2 instancee. Can be reattached to other EC2
Examples| Application servers, databases| Web servers, load Balancers, Websites| Web server, Load balancers, Websites
|

#### IPv6 Addresses

- AWS VPC also support IPv6 addresses
- Ipv6 address is 128 bits in size with 8 blocks of 16 bits each
- IPv6 addresses are public and globally unique, and allows resources to communicate with the internet
- VPC can operate in dual stack mode where VPC resource can communicate over IPv4, or IPv6, or both
- IPv6 address persists when you stop and start your instance, and is released when you terminate your instance

#### IPv4 vs IPv6

|IPv4| IPv6|
|-|-|
Default and required for all VPCs; cannot be removed.| Opt-in only
The VPC/Subnet CIDR block size can be from /16 to /28. |The VPC CIDR block size is fixed at /56. Subnet block is fixed at /64
You can choose the private IPv4 CIDR block for your VPC| IPv6 CIDR block is allocated to VPC from Amazon's pool  of IPv6 addresses. We cannot select the range.
Supports both Private and Public IPs |No distinction between public and private IP addresses. IPv6 addresses are public.
An instance receives an Amazon-provided private DNS hostname that corresponds to its private/Public IPv4 address|Amazon-provided DNS hostnames are not supported.
Supported for AWS Site-to-Site VPN connections and customer gateways, NAT devices, and VPC endpoints|Not supported for AWS Site-to-Site VPN connections and customer gateways, NAT devices, and VPC endpoints.

### Elastic Network Interfaces (ENI)

- Logical component in a VPC that represents 
a virtual network card
- The ENI can have the following attributes:
  - Primary private IPv4, one or more secondary 
IPv4
  - One Elastic IP (IPv4) per private IPv4
  -  One Public IPv4
  -  One or more security groups
  - A MAC address 
- You can create ENI independently and 
attach them on the fly (move them) on EC2 
instances for failover
- Bound to a specific availability zone (AZ)

#### ENI Uses cases

- Creating management Network
- Creating a dual home instance
- High avalibility solution bty attaching ENI to hot standby instance in case of failure

### VPC Firewall 

#### Security Group

- Security Groups are the fundamental of network security in AWS
- They control how traffic is allowed into or out of our EC2 
Machines.
- It is the most fundamental skill to learn to troubleshoot networking issues

- They regulate: 
  - Access to Ports
  - Authorised IP ranges  IPv4 and IPv6
  - Control of inbound network (from other to the instance) 
  - Control of outbound network (from the instance to other)
- Security groups are stateful
- You can reference another Security group as source

- Can be attached to multiple instances
- Locked down to a Region / VPC combination
- Does live “outside” the EC2 – if traffic is blocked the EC2 instance won’t see it
- If your application is not accessible (time out), then it’s a security group issue
- If your application gives a “connection refused“ error, then it’s an application 
error or it’s not yet in running state
- All inbound traffic is blocked by default
- All outbound traffic is authorised by default



#### Network Acces Control list (NACL)

- Works at Subnet level – Hence automatically applied to all instances
-  Stateless – We need to explicitly open outbound traffic
- Contains both Allow and Deny rules
-  Rules are evaluated in the order of rule number
-  Default NACL allows all inbound and outbound traffic
- NACL are a great way of blocking a specific IP at the subnet leve

#### Network ACLs vs Security Group

|Security Group|Network ACL|
|-|-|
Operates at the instance level	|Operates at the subnet level
Supports allow rules only|	Supports allow rules and deny rules
Stateful: Return traffic is allowed, regardless of the rules	|Stateless: Return traffic must be explicitly allowed by rules
We evaluate all rules before deciding whether to allow traffic	|We evaluate rules in order, starting with the lowest numbered rule, when deciding whether to allow traffic
Applies to an instance only if it is associated with the instance|Applies to all instances deployed in the associated subnet (providing an additional layer of defense if security group rules are too permissive)



### Ephemeral port

An ephemeral port is a communications endpoint (port) of a transport layer protocol of the Internet protocol suite that is used for only a short period of time for the duration of a communication session. Such short-lived ports are allocated automatically within a predefined range of port numbers by the IP stack software of a computer operating system. 

Many Linux kernels use the port range 32768–65535.

Microsoft Windows operating systems through Windows XP use the range 1025–5000 as ephemeral ports by default.

### Nat Gateway

A NAT gateway is a Network Address Translation (NAT) service. You can use a NAT gateway so that instances in a private subnet can connect to services outside your VPC but external services cannot initiate a connection with those instances.
always be deploy in public subnet
- uses por 1024-65535 for outbound connection

Steps to create NAt Gateway
- create a nat gateway in your vpc must select public subnet
- EIP: Create a new  EIP
- add a route in private subnet for internet traffica and route through NAT gateway
  - Destination: 0.0.0./0 target: natgateway

### NAt Instance
- NAT EC2 can be launched using Amazon linux Nat AMI
- Disable Source/Destination check on instance
- Allocate EIP

Setup your own NAT on EC2 (NAT Instance)
-  Must be in Public Subnet
- Must have Public or Elastic IP
- Should be launched using AWS provided
NAT AMIs
- Disable Source/Destination Check
- Update Private subnet route tables.
- For internet traffic set target as NAT
Instance ID


### Nat Gateway vs NAT Instance

Attribute| NAT Gateway| NAT Instance|
|-|-|-|
Availability| Highly available within AZ. Create a NAT Gateway in each Availability Zone to ensure zone-independent architecture. |Use a script to manage failover between instances.
Bandwidth| Can scale up to 45 Gbps.| Depends on the bandwidth of the instance type.
Maintenance |Managed by AWS. You do not need to perform any maintenance.| Managed by you, for example, by installing software updates or operating system patches on the instance.
Performance| Software is optimized for handling NAT traffic.|A generic Amazon Linux AMI that's configured to perform NAT.|
Cost |Charged depending on the number of NAT Gateways you use, duration of usage, and amount of data that you send through the NAT Gateways.|Charged depending on the number of NAT Instances that you use,duration of usage, and instance type and size.
Type and size| Uniform offering; you don’t need to decide on the type or size.|Choose a suitable instance type and size, according to your predicted workload.|
Public IP addresses|Choose the Elastic IP address to associate with a NAT Gateway at creation.|Use an Elastic IP address or a public IP address with a NAT Instance.|
Security groups| Cannot be associated with a NAT Gateway. You canassociate security groups with your resources behind the NAT Gateway to control inbound and outbound traffic.|Associate with your NAT Instance and the resources behind your NAT Instance to control inbound and outbound traffic.
Port forwarding| Not supported.| Manually customize the configuration to support port forwarding.
Bastion servers| Not supported. |Use as a bastion server




