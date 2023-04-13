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
  - A source/destination chech flag
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


## Extending VPC address space


### VPC secondary CIDR blocks

1. You can add secondary VPC CIDR to existing VPC
2. CIDR block must not overlap with existing CIDR or peered VPC CIDR
3. If primary CIDR is from RFC1918 then you can not add secondary CIDR from other RFC1918 IP rangfes (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16)
4. CIDR block must not be same or larger than the CIDR range of routes in any of the VPC route tables
5. You can have total 5 IPV4 and 1 IPv6 CIDR block for VPC

![](..\Images\extendingvpc.png)

