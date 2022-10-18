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