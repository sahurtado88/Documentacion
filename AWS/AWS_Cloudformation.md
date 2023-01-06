# CLOUDFORMATION

## CloudForm,action Building block

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

```
Parameters:
  BucketName:
    Type: String

Resources:
  MyS3Bucket:
    Type: AWS::S3::Bucket
    Properties:
      BucketName: !Ref BucketName
    DeletionPolicy: Retain
    UpdateReplacePolicy: Retain
```

## Mappings

- Mapping are fixed variable within your cloudformation template
- They aare very handy to differenciate between different environments, region, AMi types, etc
- All the values are hardcoded within the template

```
Mappings:
  Mapping01:
    Key01:
      Name: Value01
    Key02:
      Name: Value02  
```
**Mappings** are great when you know in advance all the vlauies that can be taken and that they can be deduced from variables such as (region, availability Zone, AWS account, etc)

Use **parameters** when the values are really user specific

### Accesing Mapping Values (fn::FindInMap)

- We use Fn::FindInMap to return a named value from a specific key
- !FindInMap [ MapName, TopLevelKey, SecondLevelKey]

```
Parameters:
  EnvironmentName:
    Description: Environment Name
    Type: String
    AllowedValues: [development, production]
    ConstraintDescription: must be development or production

Mappings:
  AWSRegionArch2AMI:
    af-south-1:
      HVM64: ami-06db08e8636583118
    ap-east-1:
      HVM64: ami-0921e2da2f22f9617
    ap-northeast-1:
      HVM64: ami-06098fd00463352b6
    ap-northeast-2:
      HVM64: ami-07464b2b9929898f8
    ap-northeast-3:
      HVM64: ami-0b96303a469fa0678
    ap-south-1:
      HVM64: ami-0bcf5425cdc1d8a85
    ap-southeast-1:
      HVM64: ami-03ca998611da0fe12
    ap-southeast-2:
      HVM64: ami-06202e06492f46177
    ca-central-1:
      HVM64: ami-09934b230a2c41883
    eu-central-1:
      HVM64: ami-0db9040eb3ab74509
    eu-north-1:
      HVM64: ami-02baf2b4223a343e8
    eu-south-1:
      HVM64: ami-081e7f992eee19465
    eu-west-1:
      HVM64: ami-0ffea00000f287d30
    eu-west-2:
      HVM64: ami-0fbec3e0504ee1970
    eu-west-3:
      HVM64: ami-00dd995cb6f0a5219
    me-south-1:
      HVM64: ami-0502022ce8bfa56a9
    sa-east-1:
      HVM64: ami-0c27c96aaa148ba6d
    us-east-1:
      HVM64: ami-0742b4e673072066f
    us-east-2:
      HVM64: ami-05d72852800cbf29e
    us-west-1:
      HVM64: ami-0577b787189839998
    us-west-2:
      HVM64: ami-0518bb0e75d3619ca
  EnvironmentToInstanceType:
    development:
      instanceType: t2.micro
    # we want a bigger instance type in production
    production:
      instanceType: t2.small

Resources:
  EC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      InstanceType: !FindInMap [EnvironmentToInstanceType, !Ref 'EnvironmentName', instanceType]
      # Note we use the pseudo parameter AWS::Region
      ImageId: !FindInMap [AWSRegionArch2AMI, !Ref 'AWS::Region', HVM64]

```

## Outputs

- The outputs section declares optional output values that can import into other stacks (if you export them first)
- You can also view the outputs in the AWS console or in using the AWS CLI

```
Resources:
  # here we define a SSH security group that will be used in the entire company
  MyCompanyWideSSHSecurityGroup:
    # http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-security-group.html
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable SSH access via port 22
      SecurityGroupIngress:
        # we have a lot of rules because it's a perfect security group
        # finance team network
      - CidrIp: 10.0.48.0/24
        FromPort: 22
        IpProtocol: tcp
        ToPort: 22
        # marketing team network
      - CidrIp: 10.0.112.0/24
        FromPort: 22
        IpProtocol: tcp
        ToPort: 22
        # application team support network
      - CidrIp: 10.0.176.0/24
        FromPort: 22
        IpProtocol: tcp
        ToPort: 22

Outputs:
  StackSSHSecurityGroup:
    Description: The SSH Security Group for our Company
    Value: !Ref MyCompanyWideSSHSecurityGroup
    Export:
      Name: SSHSecurityGroup

```

### Cross Stack reference

- create a second template that leverages that security group
- for this we use the Fn::ImportValue function

```
Parameters:  
  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  MySecureInstance:
    # http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !Ref ImageId
      InstanceType: t2.micro
      SecurityGroups:
        # we reference the output here, using the Fn::ImportValue function
        - !ImportValue SSHSecurityGroup
```

## Conditions

- Conditions are used to control the creation of resources or outputs based on a condition
- the logical ID is for you to choose. It's how you name condition
- The intrinsic function (logical) can be any of the following
    - Fn::And
    - Fn::Equals
    - Fn::If
    - Fn::Not
    - Fn::Or


```
Conditions:
  CreateProdResources: !Equals [ !Ref EnvType, prod]

```

- Fn::GetAtt

Attributes are attached to any resource you create, to know the attributes of a resource look at is the documentation

```
Parameters:  
  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

  EnvType:
    Description: Environment type.
    Default: test
    Type: String
    AllowedValues:
      - prod
      - test
    ConstraintDescription: must specify prod or test.

Conditions:
  CreateProdResources: !Equals [ !Ref EnvType, prod ]

Resources:
  EC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !Ref ImageId
      InstanceType: t2.micro
      
  MountPoint:
    Type: AWS::EC2::VolumeAttachment
    Condition: CreateProdResources
    Properties:
      InstanceId:
        !Ref EC2Instance
      VolumeId:
        !Ref NewVolume
      Device: /dev/sdh

  NewVolume:
    Type: AWS::EC2::Volume
    Condition: CreateProdResources
    Properties:
      Size: 1
      AvailabilityZone:
        !GetAtt EC2Instance.AvailabilityZone

Outputs:
  VolumeId:
    Condition: CreateProdResources
    Value:
      !Ref NewVolume

```

## Rules

- Parameters section gives us ability to validate within a single parameter (Type, Min/Max lenght, Min/Max Value, AllowedValues, AllowedPattern)
- Rules used to perform parameter validation based on the values of other parameters (cross-parameter validation)
- For example ensure taht all subnets selected are within the same VPC

- Each rule consist of
    - **Rule Condition** (optional): determines when rule takes effect(assertions applied (only one per rule)
    - **Assertion**: describes what values are allowed for a particular parametyer. Can contain one or more asserts
- If you don't define a rule condition, the rule's assertions will take effect with every create/update operation

- supportes function to rules are:
    - AND
    - Contains
    - EachMemberEquals
    - EachMemberIn
    - Equals
    - If
    - Not
    - Or
    - RefAll
    - ValueOf
    - ValueOfAll

```
Parameters:
  InstanceType:
    Type: String
    Default: t2.small
    AllowedValues:
      - t2.nano
      - t2.micro
      - t2.small

  Environment:
    Type: String
    Default: dev
    AllowedValues:
      - dev
      - prod
      
  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Rules:
  ProdInstanceType:
    RuleCondition: !Equals 
      - !Ref Environment
      - prod
    Assertions:
      - Assert:
          !Equals [t2.small, !Ref InstanceType]
        AssertDescription: 'For a production environment, the instance type must be t2.small'

  DevInstanceType:
    RuleCondition: !Equals 
      - !Ref Environment
      - dev
    Assertions:
      # Assert with Or
      # - Assert:
      #     'Fn::Or':
      #       - !Equals [!Ref InstanceType, t2.nano]
      #       - !Equals [!Ref InstanceType, t2.micro]
      # Assert with Contains
      - Assert:
          'Fn::Contains':
            - - t2.nano
              - t2.micro
            - !Ref InstanceType
        AssertDescription: 'For a development environment, the instance type must be t2.nano or t2.micro'
  

Resources:
  MyEC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      InstanceType: !Ref InstanceType
      ImageId: !Ref ImageId

```
## Metadata

You can use  the optional metadata section to include arbitrary YAML that provide detail about the template or resource

```
Metadata:
  Instances:
    Description: "information about instances"
  Databases:
    Description: "Information about the databases"  
```

- There're 4 Metadata keys that hyave special meaning
    - AWS::CloudFormation::Designer: describes how the resource are laid out in your template. This is automatically added by CloudFormation Designer
    - AWS::CloudFormation::Interface:Define grouping and ordering of input parameters when ther're displayed in the AWS Console 
    - AWS::CloudFormation::Authentication:   Used to specify authentication creedentials for files or sources that you specify in AWS::CloudFormation::Init
    -AWS::CloudFormation::Init: define configuration task for cfn-init. It's the most powerful usage of the Metadata 

```

Parameters:
  InstanceType:
    Description: EC2 instance type.
    Type: String
    Default: t2.micro
    AllowedValues:
    - t2.micro
    - t2.small
    - t2.medium
    - m3.medium
    - m3.large
    - m3.xlarge
    - m3.2xlarge
  SubnetID:
    Description: Subnet ID
    Type: AWS::EC2::Subnet::Id
  SecurityGroupID:
    Description: Security Group
    Type: AWS::EC2::SecurityGroup::Id

Resources:
  MyEC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      AvailabilityZone: us-east-1a
      ImageId: ami-0742b4e673072066f
      InstanceType: !Ref InstanceType
      SecurityGroups:
        - !Ref SecurityGroupID
      SubnetId: !Ref SubnetID

Metadata:
  AWS::CloudFormation::Interface:
    ParameterGroups:
      - Label:
          default: "Network Configuration"
        Parameters:
          - SubnetID
          - SecurityGroupID
      - Label:
          default: "Amazon EC2 Configuration"
        Parameters:
          - InstanceType
    ParameterLabels:
      SubnetID:
        default: "Which subnet should this be deployed to?"

```

## EC2 User Data

- The important thing to pass is the entire script through the function Fn::Base64
- User data log is in /var/log/cloud-init-output.log

```
Parameters:
  KeyName:
    Description: Name of an existing EC2 key pair for SSH access to the EC2 instance.
    Type: AWS::EC2::KeyPair::KeyName

  SSHLocation:
    Description: The IP address range that can be used to SSH to the EC2 instances
    Type: String
    MinLength: '9'
    MaxLength: '18'
    Default: 0.0.0.0/0
    AllowedPattern: "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"
    ConstraintDescription: must be a valid IP CIDR range of the form x.x.x.x/x.

  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  WebServer:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !Ref ImageId
      InstanceType: t2.micro
      KeyName: !Ref KeyName
      SecurityGroups:
        - !Ref WebServerSecurityGroup
      UserData:
        Fn::Base64: |
           #!/bin/bash
           yum update -y
           amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
           yum install -y httpd mariadb-server
           systemctl start httpd
           systemctl enable httpd
           usermod -a -G apache ec2-user
           chown -R ec2-user:apache /var/www
           chmod 2775 /var/www
           find /var/www -type d -exec sudo chmod 2775 {} \;
           find /var/www -type f -exec sudo chmod 0664 {} \;
           echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

  WebServerSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: "Enable HTTP access via port 80 + SSH access"
      SecurityGroupIngress:
      - CidrIp: 0.0.0.0/0
        FromPort: 80
        IpProtocol: tcp
        ToPort: 80
      - CidrIp: !Ref SSHLocation
        FromPort: 22
        IpProtocol: tcp
        ToPort: 22

```

## Cloudformation Init Overview

- We have 4 python scripts, that come directly on Amazon Linux 2 AMI, or can be installed using yum on non-Amazon Linux AMIs
  - cfn-init: Used to retrieve and interpret the resource metadata, installing oackages, creating files and starting serivces
  - cfn-signal: A simple wrapper to signal with a CreationPolicy or WaitCondition, enabling you to synchronize other resources in the stack with the application being ready
  - cfn-get-metadata: A wrapper script making it easy to retrieve either all metadata defined for a resource or path to specific key or subtree of the resource metadata
  - cfn-hup: A daemon to check for updates to the metadata and execute custom hooks when the changes are detected
- usual flow: cfn-init, then cfn-signal, the optionally cfn-hup

## AWS::CloudFormation::init

- A config contains the following and is executed in that order
  - **Packages** used to download and install pre-packaged apps and components on Linux/Windows (ex MySQL, PHP, etc)
  - **Groups** defien user groups
  - **Users** define users, and which group they belong to
  - **Sources** download files and archives and place them on the EC2 instance
  - **Files** create files on the EC2 instance, using inline or can be pulled from a URL
  - **Commands**: run a series of commands
  - **Services**: launch a list of sysvinit 

- You can have multiple configs in your AWS::CloudFormation::Init
- You create configSets with multiple configs
- And you invoke configeSets from your EC2 user-data

```
Resources:
  MyInstance:
    Type: AWS::EC2::Instance
    Metadata:
      AWS::CLoudFormation::Init:
        config:
          packages:
           :
          groups:
          users:
          sources:
          files:
          commands:
          services:
    Properties:

```

### Packages

- You can install packages from the following repositories: apt, msi, python, rpm, rubygems and yum
- Packages are processed in the following order: rpm, yum/apt, and then rubygems and python
- You can specify a version, or no version (empty array - means latest)

```
rpm:
  epel: "http://download.fedoraproject.org/pub/epel/5/i358/epel-release-5-4.norach.rpm
yum:
  httpd: []
  php: []
  wordpress: []  
rubygems:
  chef:
    - "0.10.2"
```

### Group adn Users

- If you want to have multiple users and groups (with and optional gid) in your EC2 instance, you can do the following

```
groups:
  groupOne:{}
  groupTwo:
    gid: "45"

users:
  myUsers:
    groups:
      - "groupOne"
      - "groupTwo"
    uid: "50"
    homeDir: "/tmp"  

```

### Sources

- We can download whole compressed archives from the web and unpack them on the EC2 instance directly
- It's very handy if you have a set of standardized scripts for your EC2 instances that you store in S3 for example
- Or if you want to donwaload a whole GitHub project directly on your EC2 instance
- Supported formats: tar, tar+gzip, tar+bz2, zip

```
sources:
  /etc/myapp: "https://s3.amazonaws.com/mybuscket/myapp.tar.gz"
  /etc/puppet: "https://github.com/user1/cfn-demo/tarball/main"
```

### Files

- Files are very popwerful as you have full control over any content you want
- They can come from a specific URL or can be written inline

```
files:
  /tmp/setup.mysql:
    content: !Sub |
      CREATE DATABASE ${DBName};
      CREATE USER '${DBUsername}'@'localhost' IDENTIFIED BY '{DBPassword}';
      GRANT ALLOW ON ${DBName}.* TO '${DBUsername}'@'LOCALHOST';
      FLUSH PRIVILEGES;
    mode: "000644"
    owner: "root"
    group: "root"  
```

### AWS::CloudFormation::Authentication

- Used to specify authentication credentials for files or sources in AWS::CoudFormation::Init
- two types
  - **basic**: used when the source is a URL
  - **S3**: used when the source is an S3 bucket
- Prefer using Roles insted of access keys for EC2 instances!

```
AWS::CloudFormation::Authentication:
  testBasic:
    type: basic
    uris:
      - 'emaple.com/test'
    username: !Ref Username
    password: !Ref Password  
  testS3:
    type: S3
    buckets:
      - 'myS3Bucket'
    accesKeyId: !Ref AccesKeyId
    secretKey: !ref SecretAccesKey
    # Can be used instead of accesKeyId & secretKey
    # roleName: !Ref InstanceRole    
```

### FN::Sub (substitute function)

- Fn::Sub or !Sub as a shorthand, is used to substitute variables from a text. It's very handy function that will allow you to fully customize your templates
- For example, you can combine Fn::Sub with references or AWS Pseudo variables
- String must contains ${VaraiblName} and will substitute them

```
!Sub
  - String
  - {Var1Name: Var1Value, Var2Name: Var2Value}

!Sub String
```

### Commands

- You can run commands one at a time in the alphabetical order
- You can set a directory from which that command is run, environment variables
- You can provide a test to control wheter the command is executed or not (for example: if a file doesn't exist, run the download command)
- Example: call the echo command only if the file doesn't exist

```
commands:
  test:
    command: "echo \"$MAGIC\" > test.txt
    env:
      MAGIC: "I come from the environment !"
    cwd: "~"
    test: "test ! -e ~/test.txt"
    ignoreErrors. "false"  
```

### Services

- Launch a bunch of services at EC2 instance launch
- Ensure services are started when files changed, or packages are updated by cfn-init

```
services:
  sysvinit:
    nginx:
      enabled: "true"
      ensureRunning: "true"
      files:
        - "/etc/nginx/nginx.conf"
      sources:
        - "/var/www/html"
    php-fastcgi:
      enabled: "true"
      ensureRunning: "true"
      packages:
        yum:
          - "php"
          - "spawn-fcgi"
    postfix:
      enable: "false"
      ensureRunnign: "false"            
```

### CFN Init Scripts

- With the cfn-init script, it helps make complex EC2 configurations readable
- The EC2 instances will query the CloudFormation service to get init data
- Logs go to /var/log/cfn-init.log

### cfn-signal and wait conditions
- to know tht EC2 instance got propertly configure we use cfn-signal
- we run cfn-signal right after cfn-init
- tell CloudFormation service that the resource creation success/fail to keep on going or fail
- We need to define WaitCondition:
  - Block the template until it receives a signal from cfn-signal
  - We attach a CreationPolicy (also works on EC2, ASG)
  - We can define a Count > 1 (in case you need more than 1 signal) 

```
CreationPolicy:
  ResourceSignal:
    Timeout: PT5M
    Count: 1
```

### cfn-hup

- Can be used to tell your EC2 instance to look for Metadata changes every 15 minutes and apply the Metadata configurqtion again
- It's vey poerful but you really need to try it out to understand how it works
- It relies on a cfn-hup configuration, see /etc/cfn/cfn-hup.conf and /etc/cfn/hooks.d/cfn-auto-reloader.conf

```
AWSTemplateFormatVersion: '2010-09-09'
Description: AWS CloudFormation Sample Template for CFN Init
Parameters:
  KeyName:
    Description: Name of an existing EC2 KeyPair to enable SSH access to the instances
    Type: AWS::EC2::KeyPair::KeyName
    ConstraintDescription: must be the name of an existing EC2 KeyPair.

  SSHLocation:
    Description: The IP address range that can be used to SSH to the EC2 instances
    Type: String
    MinLength: '9'
    MaxLength: '18'
    Default: 0.0.0.0/0
    AllowedPattern: "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"
    ConstraintDescription: must be a valid IP CIDR range of the form x.x.x.x/x.

  MyS3BucketName:
    Description: Name of an existing bucket to download files from
    Type: String

  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  WebServerSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable HTTP access via port 80 and SSH access via port 22
      SecurityGroupIngress:
      - IpProtocol: tcp
        FromPort: 80
        ToPort: 80
        CidrIp: 0.0.0.0/0
      - IpProtocol: tcp
        FromPort: 22
        ToPort: 22
        CidrIp: !Ref SSHLocation

  WebServerHost:
    Type: AWS::EC2::Instance
    Metadata:
      Comment: Install a simple PHP application
      AWS::CloudFormation::Init:
        config:
          packages:
            yum:
              httpd: []
              php: []
          groups:
            apache: {}
          users:
            "apache":
              groups:
                - "apache"
          sources:
            "/home/ec2-user/aws-cli": "https://github.com/aws/aws-cli/tarball/master"
          files:
            "/tmp/cwlogs/apacheaccess.conf":
              content: !Sub |
                [general]
                state_file= /var/awslogs/agent-state
                [/var/log/httpd/access_log]
                file = /var/log/httpd/access_log
                log_group_name = ${AWS::StackName}
                log_stream_name = {instance_id}/apache.log
                datetime_format = %d/%b/%Y:%H:%M:%S
              mode: '000400'
              owner: apache
              group: apache
            "/var/www/html/index.php":
              content: !Sub |
                <?php
                echo '<h1>AWS CloudFormation sample PHP application for ${AWS::StackName}</h1>';
                ?>
              mode: '000644'
              owner: apache
              group: apache
            "/etc/cfn/cfn-hup.conf":
              content: !Sub |
                [main]
                stack=${AWS::StackId}
                region=${AWS::Region}
              mode: "000400"
              owner: "root"
              group: "root"
            "/etc/cfn/hooks.d/cfn-auto-reloader.conf":
              content: !Sub |
                [cfn-auto-reloader-hook]
                triggers=post.update
                path=Resources.WebServerHost.Metadata.AWS::CloudFormation::Init
                action=/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource WebServerHost --region ${AWS::Region}
              mode: "000400"
              owner: "root"
              group: "root"
            # Fetch a webpage from a private S3 bucket
            "/var/www/html/webpage.html":
              source: !Sub "https://${MyS3BucketName}.s3.${AWS::Region}.amazonaws.com/webpage.html"
              mode: '000644'
              owner: apache
              group: apache
              authentication: S3AccessCreds
          commands:
            test:
              command: "echo \"$MAGIC\" > test.txt"
              env:
                MAGIC: "I come from the environment!"
              cwd: "~"
          services:
            sysvinit:
              httpd:
                enabled: 'true'
                ensureRunning: 'true'
              postfix:
                enabled: 'false'
                ensureRunning: 'false'
              cfn-hup:
                enable: 'true'
                ensureRunning: 'true'
                files:
                  - "/etc/cfn/cfn-hup.conf"
                  - "/etc/cfn/hooks.d/cfn-auto-reloader.conf"
      AWS::CloudFormation::Authentication:
        # Define S3 access credentials
        S3AccessCreds:
          type: S3
          buckets:
            - !Sub ${MyS3BucketName}
          roleName: !Ref InstanceRole
    CreationPolicy:
      ResourceSignal:
        Timeout: PT15M
        
    Properties:
      ImageId: !Ref ImageId
      KeyName: !Ref KeyName
      InstanceType: t2.micro
      IamInstanceProfile: !Ref InstanceProfile # Reference Instance Profile
      SecurityGroups:
      - !Ref WebServerSecurityGroup
      UserData:
        Fn::Base64:
          !Sub |
            #!/bin/bash -xe
            
            # Get the latest CloudFormation helper scripts
            yum install -y aws-cfn-bootstrap
            
            # Start cfn-init
            /opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource WebServerHost --region ${AWS::Region}
            
            # cfn-init completed so signal success or not
            /opt/aws/bin/cfn-signal -e $? --stack ${AWS::StackName} --resource WebServerHost --region ${AWS::Region}
          

  InstanceRole:
    Type: AWS::IAM::Role
    Properties:
      AssumeRolePolicyDocument:
        Statement:
          - Action: 'sts:AssumeRole'
            Principal:
              Service: ec2.amazonaws.com
            Effect: Allow
            Sid: ''
      Policies:
        - PolicyName: AuthenticatedS3GetObjects
          PolicyDocument:
            Version: 2012-10-17
            Statement:
              - Action:
                  - 's3:GetObject'
                Resource: !Sub 'arn:aws:s3:::${MyS3BucketName}/*'
                Effect: Allow

  InstanceProfile:
    Type: AWS::IAM::InstanceProfile
    Properties:
      Path: /
      Roles:
        - !Ref InstanceRole

Outputs:
  InstanceId:
    Description: The instance ID of the web server
    Value:
      !Ref WebServerHost
  WebsiteURL:
    Value:
      !Sub 'http://${WebServerHost.PublicDnsName}'
    Description: URL for newly created LAMP stack
  PublicIP:
    Description: Public IP address of the web server
    Value:
      !GetAtt WebServerHost.PublicIp


```

### CreationPolicy

- Prevent resource's status from reaching CREATE_COMPLETE until cloudFormation receives either 
    - A specified number of success signals
    - Timeout period exceeded
- Use cfn-signal helper script to signal a resource
- Supported Resources:
  - AWS::EC2::Instance, AWS::CloudFormation::WaitCondition, AWS::AutoScaling::AutoScalingGroup, AWS::AppStream::Fleet


### CFN Init troubleshooting

- Ensure taht AMI you're using has the AWS CloudFormation helper scripts installed. If the AMI doesn't hinclude the helper scripts, you can also download them to your instance
- Verify that the cfn-init and cfn-signal command was succesfully run on the instance, you can view the logs, such as /var/log/cloud-init.log or /var/log/cfn-init.log to help you debug the instance lunch
- You can retrieve the logs by logging in to your instance, but you must disable rollback on failure or else AWS CloudFormation deletes the instance after your stack fails to create
- Verify the instance has a connection to the internet (through a NAT device if it's in a private sbnet or through an internet gateway if it's in a public subnet)
- for example run: curl -l https://aws.amazon.com

### User Data vs CloudFormation::Init vs Helper Scripts


- EC2 User data is an imperative way to provision/bootstrap the EC2 instance using Shell syntax

- AWS::CloudFormation::Init is a declarative way to provision/bootstrap the EC2 instance using YAML or JSON syntax

- AWS::CloudFormation::Init is useless if it’s NOT triggered by a script within the EC2 User Data

- Triggering AWS::CloudFormation::Init inside EC2 User Data is done by using cfn-init or cfn-hup

## Cloudformation Drift

- Cloudformation Drift is used to know if our resources have drifted by manual configuration changes
- detect drift on an entire stack or on individual resources within a stack
- We can resolve stack/resource drift by using resource import
- not al resources are supported yet


## Nested Stacks

- Nested stack are stack as part of other stacks
- They allow you to isolate repeated patterns common components in separate stack and call them from other stacks
- Nested stack are considered best prqactice
- To update a nested stack, always update the parent (root stack)
- Nested stacks can have stacks themselves

```
Parameters:
  ApplicationName:
    Description: The application name
    Type: String
  VPCId:
    Description: VPC to create the security group into
    Type: AWS::EC2::VPC::Id
  
Resources:
  SSHSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: !Sub Security group for ${ApplicationName}
      SecurityGroupIngress:
        - CidrIp: "10.0.0.0/25"
          FromPort: 22
          ToPort: 22
          IpProtocol: tcp
          Description: SSH for Engineering department
        - CidrIp: "192.168.0.0/25"
          FromPort: 22
          ToPort: 22
          IpProtocol: tcp
          Description: SSH for HR department
      VpcId: !Ref VPCId

Outputs:
  SSHGroupId:
    Value: !Ref SSHSecurityGroup
    Description: Id for the SSH Security Group
```

```
Parameters:
  VPCId:
    Description: VPC to create the security group and EC2 instance into
    Type: AWS::EC2::VPC::Id

  TemplateURL:
    Description: URL of the nested stack template
    Type: String

  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  SSHSecurityGroupStack:
    Type: AWS::CloudFormation::Stack
    Properties:
      TemplateURL: !Ref TemplateURL
      Parameters:
        ApplicationName: !Ref AWS::StackName
        VPCId: !Ref VPCId
      TimeoutInMinutes: 5


  EC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      InstanceType: t2.micro
      # Note we use the pseudo parameter AWS::Region
      ImageId: !Ref ImageId
      SecurityGroupIds:
        - !GetAtt SSHSecurityGroupStack.Outputs.SSHGroupId


```

### Nested Stacks Update

To update a nested stack
  - Ensure the updates nested stacks are uploaded onto S3 first
  - Then re-upload your root stack

### Nested stacks Delete

- Never delete or apply changes to the nested stack
- Always do changes from the top-level stack

### Nested Stacks vs Cross Stacks

- Cross Stacks
    - Helpful when stacks have different lifecycles
    - Use outputs export and Fn::ImportValue
    - When you need to pass export values to many stacks (VPC Id, etc)
- Nested Stacks
    - Helpful when components must be re-used
    - EX: re-use how to properly configure and Aplication Load Balancer
    - The nested stacks only is im,portant to the higher-level stack (it's not shared)   

Great nested stacks example at https://github.com/aws-samples/ecs-refarch-cloudformation/blob/master/master.yaml



### Exported Stack Output Values vs. Using Nested Stacks:

- If you have a central resource that is shared between many different other stacks, use Exported Stack Output Values

- If you need other stacks to be updated right away if a central resource is updated, use Exported Stack Output Values

- If the resources can be dedicated to one stack only and must be re-usable pieces of code, use Nested Stacks

- Note that you will need to update each Root stack manually in case of Nested stack updated

## Stack Sets

- Create, update or delete stacks across mulñtiple accounts and regions with a single operation/ template
- Administrator account to create StackSets
- Target accounts to create, update, delete stack instances from StackSets
- When you update a stack set, all associated stack instances are updated throughout all acounts and regions
- Regional setvoce
- Can be applied into all accounts of an AWS organization

### StackSet Operations
  - Create StackSet
    - Provide template + target account/region
  - Update StackSet
    - Update always affect all stacks (you can't selectively update some stacks in the StackSet but not others)
  - Delete Stacks
    - Delete stack and its resource from target accounts/regions
    - Delete Stack from your StackSet (the stack will continue to run independently)
    - Delete all stacks from your StackSet (prepare for StackSet deletion)
  - Delete StackSet
    - Must delete all stack instances within StackSet to delte it

### StackSet Deployment Option

- Deployment order
  - Order of regions where stacks are deployed
  - Operation performed one region at a time
- Maximum Concurrent Accounts
  - Max. number/percentage of target accounts per region to which you can deploy stacks at one time
- Failure Tolerance
  - Max number/percentage (targfet account per region) of stack operation failures that can occur before CloudFormation stop oeration in all regions
- Region Concurrency
  - Whether StackSet deployed into regions Sequential (default) or Parallel
- Retain Stacks
  - Used when deleting StackSet to keep stacks and their resources running when removed from StackSet

### Permission Models for Sackset

- Self-managed Permissions
  - Create the IAM roles (with established trusted relationship) in both administrator and target accounts
  - Deploy to any target account in which you have permissions to create IAM role
- Service-managed Permissions
  - Deploy to accounts managed by AWS Organizations
  - StackSets create the IAM roles on your behalf (enable trusted acces with AWS Organizartions)
  - Must enable all features in AWS Organizations
  - Ability to deploy to accounts added to your organization in the feature (Automatic Deployments)

### StackSet- Drift

- Performs drift detection on the stack associated with each stack instance in the StackSet
- If the current state of a resource in a stack varies from the expected state:
  - The stack considered drifted
  - And the stack instance that the stack associated with considered drifted
  - And the StackSet is considered drifted
- Drift detection identifies unmanaged changes (outside CloudFormation)
- Changes made through CloudFormation to a stack directly (not at the StackSet level), aren't considered drifted
- you can stop drift detection on a StackSet

## ChangeSets

- When you update a stack, you need to know what changes will happen before it applying them for greater confidence
- ChangeSets won't say if the updates will be successful
- For Nested Stacks, you see the changes across all stacks

## Stack Creation Failures

- If a cloudformation stack creation fails, you will get the status ROLLBACK_COMPLETE
- this means:
  - 1. CloudFormation tried to create some resources
  - 2. One resources creation failed
  - 3. CloudFormation rolled back the resources (ROLLBACK, DO_NOTHING)
  - 4. The stack is in fiailed created ROLLBACK_COMPLETE state
- To resolve the error, there's only one way: Delete the failed stack and create a new stack
- You can't update, validate or change-set on a created failed stack


## Rollback Triggers

- enables CloudFormatio to rollback stack create/update operation if that operation triggers CloudWatch Alarm
- Cloudformation monitors the specified CloudWatch alarms durin:
  - Stack create/update
  - The monitoring period (after all resources have been deployed) 0 to 180 minutes (default 0 minutes)
- If any of the alarms goes to the ALARM state, CloudFormation rolls back the entire stack operation
- If you set a monitoring time but doesn't specify aby rollback triggers, CloudFormation still waits the specified period before cleaning up old resources for update operations
- If you set a monitoring time of 0 minutes, Cloudformation still monitors the rollback triggers during stack create/update operation
- Up to 5 Cloudwatch alarms

## Continue rolling back update

- A stack goes into the UPDATE_ROLLBACK_FAILED state when CloudFormation can't roll back all changes during an update
- A resource can't return to its original state, causing the rollback to fail
- Ex: roll back to an old database instance that was deleted outside CloudFormation
- Solutions:
  - Fix the errors manually outside of CloudFormation and then continue update rollback the stack
  - Skip the resources that can't rollback succesfully (CloudFormation will mark the failed resources as UPDATE_COMPLETE)
- you can't update a stack in this state
- For nested stacks, rolling back the parent stack will attempt to roll back all the child stacks as well

## Stack Policy

- A JSON document that defines the update actions allowed on stack resources
- Prevent stack resources from being unintentionally updated/deleted during a stack update
- By default, all update action are allowed on all resources
- When enabled, all resources protected by default
- Action allowed (Update: modify, Update: replace, Update: Delete, Update:*)
- Principal supports only the wildcard (*)
- To update protected resources:
  - Create a temporary policy that overrides the stack policy
  - The override policy doesn't permanently change the stack policy
- Once created, can't be deleted (edit allow all update action on all resources)

## Stack termination protection

- To prevent accidental deletes of CLoudFormation stacks, use TerminationProtection
- Applied to any nested stacks
- Tighten your IAM policies (ex: explicit deny on some user groups)

## Cloudformation Service Role / Template Role

### Service Role

- IAM role that allows CloudFormation to create/update/delete stack resources on your behalf
- By default, CloudFormation uses a temporary sessions that it generates from users credentials
- use Cases
  - You want to achieve the last privilege principle
  - But you don't want to give the user all the requiered permissions to create the stack resources
- Give ability to users to create/update/delete the stack resources even if they don't have permissions to work with the resources in the stack

## Quick create links for Stacks

- Custom URL that used to launch CloudFormation stacks quickly from AWS Console
- Reduce the number of wizard pages and the amount of user input that's requeried
- For example: create multiple URL that specify different values for the same template
- CloudFormation ignores parameters:
  - That doesn't exist in the template
  - That defined with Noecho property set to true
 
 ## Continous Delivery with CodePipeline

 - Use CodePipeline to build a continous delivery workflows (building a pipeline for CloudFormation stacks)
 - Rapidly and reliably make changes to your AWS infraestructure
 - Automatically build and test changes to your CloudFormation templates before promoting them to production stacks
 - For example
  - Create a workflow that automatically builds a test stack when you submit a Cloudformation template to a code repository
  - After CloudFormation builds the test stack, you can test it and then decide wheter to push change to production stack

Pipelines
```
AWSTemplateFormatVersion: "2010-09-09"

Description: >
  AWS CloudFormation Sample Template Continuous Delivery: This template
  builds an AWS CodePipeline pipeline that implements a continuous delivery release
  process for AWS CloudFormation stacks. Submit a CloudFormation source artifact
  to an Amazon S3 location before building the pipeline. The pipeline uses the
  artifact to automatically create stacks and change sets.
  **WARNING** This template creates an Amazon EC2 instance. You will be billed
  for the AWS resources used when you create a stack using this template.

Parameters:
  PipelineName:
    Description: A name for pipeline
    Type: String
  S3Bucket:
    Description: The name of the S3 bucket that contains the source artifact, which must be in the same region as this stack
    Type: String
  SourceS3Key:
    Default: wordpress-single-instance.zip
    Description: The file name of the source artifact, such as myfolder/myartifact.zip
    Type: String
  TemplateFileName:
    Default: wordpress-single-instance.yaml
    Description: The file name of the WordPress template
    Type: String
  TestStackName:
    Default: Test-MyWordPressSite
    Description: A name for the test WordPress stack
    Type: String
  TestStackConfig:
    Default: test-stack-configuration.json
    Description: The configuration file name for the test WordPress stack
    Type: String
  ProdStackName:
    Default: Prod-MyWordPressSite
    Description: A name for the production WordPress stack
    Type: String
  ProdStackConfig:
    Default: prod-stack-configuration.json
    Description: The configuration file name for the production WordPress stack
    Type: String
  ChangeSetName:
    Default: UpdatePreview-MyWordPressSite
    Description: A name for the production WordPress stack change set
    Type: String
  Email:
    Description: The email address where CodePipeline sends pipeline notifications
    Type: String

Metadata:
  AWS::CloudFormation::Interface:
    ParameterGroups:
      - Label:
          default: "CodePipeline Settings"
        Parameters:
          - PipelineName
          - S3Bucket
          - SourceS3Key
          - Email
      - Label:
          default: "Test Stack Settings"
        Parameters:
          - TestStackName
          - TemplateFileName
          - TestStackConfig
      - Label:
          default: "Production Stack Settings"
        Parameters:
          - ChangeSetName
          - ProdStackName
          - ProdStackConfig

Resources:
  ArtifactStoreBucket:
    Type: AWS::S3::Bucket
    Properties:
      VersioningConfiguration:
        Status: Enabled

  CodePipelineSNSTopic:
    Type: AWS::SNS::Topic
    Properties:
      Subscription:
        - Endpoint: !Ref Email
          Protocol: email

  Pipeline:
    Type: AWS::CodePipeline::Pipeline
    Properties:
      ArtifactStore:
        Location: !Ref 'ArtifactStoreBucket'
        Type: S3
      DisableInboundStageTransitions: []
      Name: !Ref 'PipelineName'
      RoleArn: !GetAtt [PipelineRole, Arn]
      Stages:
        - Name: S3Source
          Actions:
            - Name: TemplateSource
              ActionTypeId:
                Category: Source
                Owner: AWS
                Provider: S3
                Version: '1'
              Configuration:
                S3Bucket: !Ref 'S3Bucket'
                S3ObjectKey: !Ref 'SourceS3Key'
              OutputArtifacts:
                - Name: TemplateSource
              RunOrder: 1
        - Name: TestStage
          Actions:
            - Name: CreateStack
              ActionTypeId:
                Category: Deploy
                Owner: AWS
                Provider: CloudFormation
                Version: '1'
              InputArtifacts:
                - Name: TemplateSource
              Configuration:
                ActionMode: REPLACE_ON_FAILURE
                RoleArn: !GetAtt [CFNRole, Arn]
                StackName: !Ref TestStackName
                TemplateConfiguration: !Sub "TemplateSource::${TestStackConfig}"
                TemplatePath: !Sub "TemplateSource::${TemplateFileName}"
              RunOrder: 1
            - Name: ApproveTestStack
              ActionTypeId:
                Category: Approval
                Owner: AWS
                Provider: Manual
                Version: '1'
              Configuration:
                NotificationArn: !Ref CodePipelineSNSTopic
                CustomData: !Sub 'Do you want to create a change set against the production stack and delete the ${TestStackName} stack?'
              RunOrder: 2
            - Name: DeleteTestStack
              ActionTypeId:
                Category: Deploy
                Owner: AWS
                Provider: CloudFormation
                Version: '1'
              Configuration:
                ActionMode: DELETE_ONLY
                RoleArn: !GetAtt [CFNRole, Arn]
                StackName: !Ref TestStackName
              RunOrder: 3
        - Name: ProdStage
          Actions:
            - Name: CreateChangeSet
              ActionTypeId:
                Category: Deploy
                Owner: AWS
                Provider: CloudFormation
                Version: '1'
              InputArtifacts:
                - Name: TemplateSource
              Configuration:
                ActionMode: CHANGE_SET_REPLACE
                RoleArn: !GetAtt [CFNRole, Arn]
                StackName: !Ref ProdStackName
                ChangeSetName: !Ref ChangeSetName
                TemplateConfiguration: !Sub "TemplateSource::${ProdStackConfig}"
                TemplatePath: !Sub "TemplateSource::${TemplateFileName}"
              RunOrder: 1
            - Name: ApproveChangeSet
              ActionTypeId:
                Category: Approval
                Owner: AWS
                Provider: Manual
                Version: '1'
              Configuration:
                NotificationArn: !Ref CodePipelineSNSTopic
                CustomData: !Sub 'A new change set was created for the ${ProdStackName} stack. Do you want to implement the changes?'
              RunOrder: 2
            - Name: ExecuteChangeSet
              ActionTypeId:
                Category: Deploy
                Owner: AWS
                Provider: CloudFormation
                Version: '1'
              Configuration:
                ActionMode: CHANGE_SET_EXECUTE
                ChangeSetName: !Ref ChangeSetName
                RoleArn: !GetAtt [CFNRole, Arn]
                StackName: !Ref ProdStackName
              RunOrder: 3
  CFNRole:
    Type: AWS::IAM::Role
    Properties:
      AssumeRolePolicyDocument:
        Statement:
        - Action: ['sts:AssumeRole']
          Effect: Allow
          Principal:
            Service: [cloudformation.amazonaws.com]
        Version: '2012-10-17'
      Path: /
      Policies:
        - PolicyName: CloudFormationRole
          PolicyDocument:
            Version: '2012-10-17'
            Statement:
              - Action:
                  - 'ec2:*'
                Effect: Allow
                Resource: '*'
              
  PipelineRole:
    Type: AWS::IAM::Role
    Properties:
      AssumeRolePolicyDocument:
        Statement:
        - Action: ['sts:AssumeRole']
          Effect: Allow
          Principal:
            Service: [codepipeline.amazonaws.com]
        Version: '2012-10-17'
      Path: /
      Policies:
        - PolicyName: CodePipelineAccess
          PolicyDocument:
            Version: '2012-10-17'
            Statement:
              - Action:
                - 's3:*'
                - 'cloudformation:CreateStack'
                - 'cloudformation:DescribeStacks'
                - 'cloudformation:DeleteStack'
                - 'cloudformation:UpdateStack'
                - 'cloudformation:CreateChangeSet'
                - 'cloudformation:ExecuteChangeSet'
                - 'cloudformation:DeleteChangeSet'
                - 'cloudformation:DescribeChangeSet'
                - 'cloudformation:SetStackPolicy'
                - 'iam:PassRole'
                - 'sns:Publish'
                Effect: Allow
                Resource: '*'
```

## Custom resource

- Enable you to write custom provision logic in templates that AWS CloudFormation runs anytime you create, update, delete stacks
- Defined in the template using AWS::CloudFormation::CustomResource or Custom::MyCustomResourceTypeName (recommended)
- two types:
  - Amazon SNS-backed Custom resources
  - AWS Lambda-backed Custom Resources
- Use cases:
  - An AWS resource is not covered yet (new service for example)
  - An on.premise resource
  - Running a Lambda function to empty an S3 bucket before being deleted
  - Fetch an AMI id 

- ServiceToken specifies where cloudformation send requests to, such as Lambda ARN or SNS ARN (requiered and must be in the same region)
- input data parameter (optional)

