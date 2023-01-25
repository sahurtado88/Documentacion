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

cfn-response module help in sending responses to CloudFormation instead of writing your own code (Python / NodeJS) https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-lambda-function-code-cfnresponsemodule.html

Custom resource helper framework for Python simplifies writing custom resources by implementing best practices and abstractions https://github.com/aws-cloudformation/custom-resource-helper

You can create your own resources using Resource Types, which we’ll see later in the course! https://aws.amazon.com/blogs/mt/managing-resources-using-aws-cloudformation-resource-types/


EX: Lambda-backed custom resource delete object in s3 before delete s3 bucket

```
Parameters:
  S3BucketName:
    Type: String
    Description: "S3 bucket to create"
    AllowedPattern: "[a-zA-Z][a-zA-Z0-9_-]*"

Resources:
  SampleS3Bucket:
    Type: AWS::S3::Bucket
    Properties:
      BucketName: !Ref S3BucketName
    DeletionPolicy: Delete

  S3CustomResource:
    Type: Custom::S3CustomResource
    Properties:
      ServiceToken: !GetAtt AWSLambdaFunction.Arn
      bucket_name: !Ref SampleS3Bucket    ## Additional parameter here

  AWSLambdaFunction:
     Type: AWS::Lambda::Function
     Properties:
       Description: "Empty an S3 bucket!"
       FunctionName: !Sub '${AWS::StackName}-${AWS::Region}-lambda'
       Handler: index.handler
       Role: !GetAtt AWSLambdaExecutionRole.Arn
       Timeout: 360
       Runtime: python3.8
       Code:
         ZipFile: |
          import boto3
          import cfnresponse
          ### cfnresponse module help in sending responses to CloudFormation
          ### instead of writing your own code

          def handler(event, context):
              # Get request type
              the_event = event['RequestType']        
              print("The event is: ", str(the_event))

              response_data = {}
              s3 = boto3.client('s3')

              # Retrieve parameters (bucket name)
              bucket_name = event['ResourceProperties']['bucket_name']
              
              try:
                  if the_event == 'Delete':
                      print("Deleting S3 content...")
                      b_operator = boto3.resource('s3')
                      b_operator.Bucket(str(bucket_name)).objects.all().delete()

                  # Everything OK... send the signal back
                  print("Execution succesfull!")
                  cfnresponse.send(event, context, cfnresponse.SUCCESS, response_data)
              except Exception as e:
                  print("Execution failed...")
                  print(str(e))
                  response_data['Data'] = str(e)
                  cfnresponse.send(event, context, cfnresponse.FAILED, response_data)

  AWSLambdaExecutionRole:
     Type: AWS::IAM::Role
     Properties:
       AssumeRolePolicyDocument:
         Statement:
         - Action:
           - sts:AssumeRole
           Effect: Allow
           Principal:
             Service:
             - lambda.amazonaws.com
         Version: '2012-10-17'
       Path: "/"
       Policies:
       - PolicyDocument:
           Statement:
           - Action:
             - logs:CreateLogGroup
             - logs:CreateLogStream
             - logs:PutLogEvents
             Effect: Allow
             Resource: arn:aws:logs:*:*:*
           Version: '2012-10-17'
         PolicyName: !Sub ${AWS::StackName}-${AWS::Region}-AWSLambda-CW
       - PolicyDocument:
           Statement:
           - Action:
             - s3:PutObject
             - s3:DeleteObject
             - s3:List*
             Effect: Allow
             Resource:
             - !Sub arn:aws:s3:::${SampleS3Bucket}
             - !Sub arn:aws:s3:::${SampleS3Bucket}/*
           Version: '2012-10-17'
         PolicyName: !Sub ${AWS::StackName}-${AWS::Region}-AWSLambda-S3
       RoleName: !Sub ${AWS::StackName}-${AWS::Region}-AWSLambdaExecutionRole
```

## Wait Condition

- Make CloudFormation pause the creation of a stack and wait for a signal before it continues to create the stack

- For example, start the creation of another resource after an application on an EC2 instacne fully/partically configured

- Properties:
  - **Count** number of success signals requiered to continue stack creation (default 1)
  - **Timeout** time to wait for the number of signals ( Max 4320 second=12 hours)
  - **Handle** reference to AWS::CloudFormation::WaitConditionalHandle

- AWS::CloudFormation::WaitConditionalHandle 
  - A pre-signed URL enables you to send a signal (succes/failure) to WaitCondition

- For EC2 and ASG, recommended to use CreationPolicy

```
Resources:
  WaitConditionLogicalId:
    Type: AWS::CloudFormation::WaitCondition
    Properties:
      Count: Integer
      Handle: String
      Timeout: String
```

```
Resources:
  WaitConditionHandleLogicalId:
    Type: AWS::CloudFroamtion::WAitConditionHandle
    Properties:
```

### How to use a WaitCondition

- To signal the WaitCondition you use the WaitConditionHandle pre-signed URL
  - Using the cfn-signal helper script
  - Make an HTTP PUT request

```
Parameters:
  KeyName:
    Type: AWS::EC2::KeyPair::KeyName
    Description: Name of an existing EC2 KeyPair to enable SSH access to the instances
  SSHLocation:
    Type: String
    Description: The IP address range that can be used to SSH to the EC2 instances
    MinLength: '9'
    MaxLength: '18'
    Default: 0.0.0.0/0
    AllowedPattern: "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})/(\\d{1,2})"
    ConstraintDescription: must be a valid IP CIDR range of the form x.x.x.x/x.
  
  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  InstanceWaitHandle:
    Type: AWS::CloudFormation::WaitConditionHandle
  
  InstanceWaitCondition:
    Type: AWS::CloudFormation::WaitCondition
    DependsOn: MyEC2Instance
    Properties:
      Handle: !Ref InstanceWaitHandle
      Count: 1
      Timeout: "3600"
  
  MyEC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !Ref ImageId
      InstanceType: t2.micro
      KeyName: !Ref KeyName
      SecurityGroups:
      - !Ref InstanceSecurityGroup
      UserData:
        Fn::Base64:
          !Sub |
            #!/bin/bash -xe

            # Update to the latest packages
            yum update -y

            # Get the latest CloudFormation helper scripts
            yum install -y aws-cfn-bootstrap

            # Make your configuration here
            date > /tmp/datefile
            cat /tmp/datefile

            sleep 10s

            # Signal the status from instance
            /opt/aws/bin/cfn-signal -e $? --data "This is from the EC2 instance" --reason "Build process complete." '${InstanceWaitHandle}'

  InstanceSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable SSH access via port 22
      SecurityGroupIngress:
      - IpProtocol: tcp
        FromPort: 22
        ToPort: 22
        CidrIp: !Ref SSHLocation

  MySNSTopic:
    Type: AWS::SNS::Topic
    DependsOn: InstanceWaitCondition
    Properties:
      TopicName: DemoTopic
```

  ## Dynamic References

- Reference external values stored in SSM Parameter store and AWS secret Manager within CloudFormation templates
- CloudFormation retrieves the value of the specified reference during stack and change set operations
- For example: retrieve RDS DB Instance master password from AWS Secrets Manager
- Supports
  - ssm: for plain text values stored in SSM Parameter Store
  - ssm-secure: for secure string stored in SSM Parameter Store
  - secretsmanager: for secret values stroed in AWS Secrets Manager
- Up to 60 dynamics references in a template

- Dynamic refeence: ssm
  - Reference values stored in SSM parameter Store of type String and Stringlist
  - If no version specified, CloudFormation uses the latest version
  - Doesn't support public SSM parameters (eg Amazon Linux 2 AMI)

  '{{resolve:ssm:parameter-name:version}}'

  ```
  Resources:
    MyBucket:
      type: AWS::S3::Bucket
      Properties:
        AccessControl: '{{resolve:ssm:S3AccessControl:2}}'

  ```
- Dynamic Reference: ssm-secure
  - Reference values stored in SSM Parameter Store of Type SecureString
  - for example: passwords, license keys, etc
  - CloudFormation never stores the actual parameter value
  - If no version specified, CloudFormation uses the latest version
  - Only use with supported resources

```
  Resources:
    MyIAMUser:
      type: AWS::IAM::User
      Properties:
        UserName: 'MyUserName'
        LoginProfile
          Password: '{{resolve:ssm-secure:IAMUserPassword:10}}'
```

- Dynamic Reference: Secretmanager
  - Retrieve entire secrets or secrets values stored in AWS Secrets Manager
  - for example: database credentials, password, 3rd party API Keys, etc
  - To update a secret, you must update the resource containing the secretmanager dynamic reference (one of the resource properties)
  - format '{{resolve:secretmanager:secret-id:secret-string:json-key:version-stage:version-id}}'

```
  Resources:
    MyRDSInstance:
      type: AWS::RDS::DBInstance
      Properties:
        DBName: MyRDSInstance
        AllocatedStorage: 20
        DBInstanceClass: db.t2.micro
        Engine: mysql
        MasterUsername: '{{resolve:secretmanager:MyRDSSecret:SecretString:username}}'
        MasterUserPassword: '{{resolve:secretmanager:MyRDSSecret:SecretString:password}}'

```
Example 3 types
```
Parameters:
  KeyName:
    Type: AWS::EC2::KeyPair::KeyName
    Description: Name of an existing EC2 KeyPair to enable SSH access to the instances
  ImageId: # Public SSM Paramater
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  MyEC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: !Ref ImageId
      KeyName: !Ref KeyName
      # ssm dynamic reference
      InstanceType: '{{resolve:ssm:/ec2/instanceType:1}}'

  MyIAMUser:
    Type: AWS::IAM::User
    Properties:
      UserName: 'sample-user'
      LoginProfile:
        # ssm-secure dynamic reference (latest version)
        Password: '{{resolve:ssm-secure:/iam/userPassword}}'

  MyDBInstance:
    Type: AWS::RDS::DBInstance
    Properties:
      DBInstanceClass: db.t2.micro
      Engine: mysql
      AllocatedStorage: "20"
      VPCSecurityGroups:
      - !GetAtt [DBEC2SecurityGroup, GroupId]
      # secretsmanager dynamic reference
      MasterUsername: '{{resolve:secretsmanager:MyRDSSecret:SecretString:username}}'
      MasterUserPassword: '{{resolve:secretsmanager:MyRDSSecret:SecretString:password}}'
  
  DBEC2SecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: 'Allow access from anywhwere to database'
      SecurityGroupIngress:
      - IpProtocol: tcp
        FromPort: 3306
        ToPort: 3306
        CidrIp: "0.0.0.0/0"

```

## UpdatePolicy

- Specify how CloudFormation handles updates to the following resources
  - APPStream::Fleet
  - AutoScaling::AutoScalingGroup (3 updates policies)
    - AutoScalingRollingUpdate
        - Specify whter CloudFormation update instances that are in an ASG in batches or all at once
        - During stack update rollback operation, CloudFormation uses the UpdatePolicy in the old template before the current stack update operation

    - AutoScalingReplacingUpdate
        - Specify whether CloudFormation replaces an ASG with a new one or replaces the instances in the ASG
        - CloudFormation retains the old ASG until it finishes creating the new one
        - It update fails, CloudFormation rollback to the old ASG and deletes the new ASG
    - AutoScalingScheduledAction
      - Specify how CloudFormation handles updates for the group size properties (MinSize, MaxSize, DesiredCapacity) of an ASG that has scheduled action
      - With scheduled actions, the group size properties of an ASG can change at any time
      - During stack update, CloudFormation always sets the group size property values of your ASG to values defined in ASG resource, even scheduled action is in effect
      - Usage: to prevent CloudFormation from changing group size property values when you have scheduled action in effect, unless you modify the values in your template
  - ElastiCache::ReplicationGroup
  - ElasticSearch::Domain
  - Lambda::Alias

Rolling
```
AWSTemplateFormatVersion: 2010-09-09

Parameters:
  VpcId:
    Type: 'AWS::EC2::VPC::Id'
    Description: VpcId of your existing Virtual Private Cloud (VPC)
    ConstraintDescription: must be the VPC Id of an existing Virtual Private Cloud.

  Subnets:
    Type: 'List<AWS::EC2::Subnet::Id>'
    Description: The list of SubnetIds in your Virtual Private Cloud (VPC)
    ConstraintDescription: >-
      must be a list of at least two existing subnets associated with at least
      two different availability zones. They should be residing in the selected
      Virtual Private Cloud.

  InstanceType:
    Type: String
    Default: t2.micro
    AllowedValues:
      - t1.micro
      - t2.nano
      - t2.micro
      - t2.small
      - t2.medium
    Description: WebServer EC2 instance type
    ConstraintDescription: must be a valid EC2 instance type.

  KeyName:
    Type: 'AWS::EC2::KeyPair::KeyName'
    Description: Name of an existing EC2 KeyPair to enable SSH access to the instances
    ConstraintDescription: must be the name of an existing EC2 KeyPair.

  SSHLocation:
    Type: String
    MinLength: '9'
    MaxLength: '18'
    Default: 0.0.0.0/0
    AllowedPattern: '(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})/(\d{1,2})'
    Description: The IP address range that can be used to SSH to the EC2 instances
    ConstraintDescription: must be a valid IP CIDR range of the form x.x.x.x/x.

  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  WebServerGroup:
    Type: AWS::AutoScaling::AutoScalingGroup
    CreationPolicy:
      ResourceSignal:
        Timeout: PT15M
        Count: 2
    UpdatePolicy:
      AutoScalingRollingUpdate:
        MaxBatchSize: 1
        MinInstancesInService: 1
        PauseTime: PT15M
        WaitOnResourceSignals: true
    Properties:
      VPCZoneIdentifier: !Ref Subnets
      LaunchConfigurationName: !Ref LaunchConfig
      MinSize: "2"
      MaxSize: "4"
      TargetGroupARNs:
        - !Ref ALBTargetGroup

  LaunchConfig:
    Type: AWS::AutoScaling::LaunchConfiguration
    Metadata:
      Comment: Install a simple application
      AWS::CloudFormation::Init:
        config:
          packages:
            yum:
              httpd: []
          files:
            '/var/www/html/index.html':
              content: | 
                <h1>Congratulations, you have successfully launched the AWS CloudFormation sample.</h1>
                <h2>Version: 1.0</h2>
              mode: '000644'
              owner: root
              group: root
            '/etc/cfn/cfn-hup.conf':
              content: !Sub |
                [main]
                stack=${AWS::StackId}
                region=${AWS::Region}
              mode: '000400'
              owner: root
              group: root
            '/etc/cfn/hooks.d/cfn-auto-reloader.conf':
              content: !Sub |
                [cfn-auto-reloader-hook]
                triggers=post.update
                path=Resources.LaunchConfig.Metadata.AWS::CloudFormation::Init
                action=/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfig --region ${AWS::Region}
              mode: '000400'
              owner: root
              group: root
          services:
            sysvinit:
              httpd:
                enabled: 'true'
                ensureRunning: 'true'
              cfn-hup:
                enabled: 'true'
                ensureRunning: 'true'
                files:
                  - /etc/cfn/cfn-hup.conf
                  - /etc/cfn/hooks.d/cfn-auto-reloader.conf
    Properties:
      KeyName: !Ref KeyName
      ImageId: !Ref ImageId
      InstanceType: !Ref InstanceType
      SecurityGroups:
        - !Ref InstanceSecurityGroup
      UserData:
        Fn::Base64: !Sub |
          #!/bin/bash -xe
          # Get the latest CloudFormation helper scripts
          yum install -y aws-cfn-bootstrap

          # Start cfn-init
          /opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfig --region ${AWS::Region}
          
          # All done so signal success
          /opt/aws/bin/cfn-signal -e $? --stack ${AWS::StackName} --resource WebServerGroup --region ${AWS::Region}

  ApplicationLoadBalancer:
    Type: AWS::ElasticLoadBalancingV2::LoadBalancer
    Properties:
      Subnets: !Ref Subnets
      SecurityGroups:
        - !Ref ALBSecurityGroup

  ALBListener:
    Type: AWS::ElasticLoadBalancingV2::Listener
    Properties:
      DefaultActions:
        - Type: forward
          TargetGroupArn: !Ref ALBTargetGroup
      LoadBalancerArn: !Ref ApplicationLoadBalancer
      Port: 80
      Protocol: HTTP

  ALBTargetGroup:
    Type: AWS::ElasticLoadBalancingV2::TargetGroup
    Properties:
      HealthCheckIntervalSeconds: 30
      HealthCheckTimeoutSeconds: 5
      HealthyThresholdCount: 3
      Port: 80
      Protocol: HTTP
      UnhealthyThresholdCount: 5
      VpcId: !Ref VpcId
  
  ALBSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable HTTP access on the configured port
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 80
          ToPort: 80
          CidrIp: 0.0.0.0/0
      VpcId: !Ref VpcId

  InstanceSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable SSH access and HTTP access on the configured port
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 22
          ToPort: 22
          CidrIp: !Ref SSHLocation
        - IpProtocol: tcp
          FromPort: 80
          ToPort: 80
          CidrIp: 0.0.0.0/0
      VpcId: !Ref VpcId

Outputs:
  URL:
    Description: URL of the website
    Value: !Join ['', ['http://', !GetAtt [ApplicationLoadBalancer, DNSName]]]
```

Rolling update

```
AWSTemplateFormatVersion: 2010-09-09

Parameters:
  VpcId:
    Type: 'AWS::EC2::VPC::Id'
    Description: VpcId of your existing Virtual Private Cloud (VPC)
    ConstraintDescription: must be the VPC Id of an existing Virtual Private Cloud.

  Subnets:
    Type: 'List<AWS::EC2::Subnet::Id>'
    Description: The list of SubnetIds in your Virtual Private Cloud (VPC)
    ConstraintDescription: >-
      must be a list of at least two existing subnets associated with at least
      two different availability zones. They should be residing in the selected
      Virtual Private Cloud.

  InstanceType:
    Type: String
    Default: t2.micro
    AllowedValues:
      - t1.micro
      - t2.nano
      - t2.micro
      - t2.small
      - t2.medium
    Description: WebServer EC2 instance type
    ConstraintDescription: must be a valid EC2 instance type.

  KeyName:
    Type: 'AWS::EC2::KeyPair::KeyName'
    Description: Name of an existing EC2 KeyPair to enable SSH access to the instances
    ConstraintDescription: must be the name of an existing EC2 KeyPair.

  SSHLocation:
    Type: String
    MinLength: '9'
    MaxLength: '18'
    Default: 0.0.0.0/0
    AllowedPattern: '(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})/(\d{1,2})'
    Description: The IP address range that can be used to SSH to the EC2 instances
    ConstraintDescription: must be a valid IP CIDR range of the form x.x.x.x/x.

  ImageId:
    Type: AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>
    Default: /aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2

Resources:
  WebServerGroup:
    Type: AWS::AutoScaling::AutoScalingGroup
    CreationPolicy:
      ResourceSignal:
        Timeout: PT15M
        Count: 2
    UpdatePolicy:
      AutoScalingRollingUpdate:
        MaxBatchSize: 1
        MinInstancesInService: 1
        PauseTime: PT15M
        WaitOnResourceSignals: true
    Properties:
      VPCZoneIdentifier: !Ref Subnets
      LaunchConfigurationName: !Ref LaunchConfigUpdated
      MinSize: "2"
      MaxSize: "4"
      TargetGroupARNs:
        - !Ref ALBTargetGroup

  LaunchConfigUpdated:
    Type: AWS::AutoScaling::LaunchConfiguration
    Metadata:
      Comment: Install a simple application
      AWS::CloudFormation::Init:
        config:
          packages:
            yum:
              httpd: []
          files:
            '/var/www/html/index.html':
              content: | 
                <h1>Congratulations, you have successfully launched the AWS CloudFormation sample.</h1>
                <h2>Version: 2.0</h2>
              mode: '000644'
              owner: root
              group: root
            '/etc/cfn/cfn-hup.conf':
              content: !Sub |
                [main]
                stack=${AWS::StackId}
                region=${AWS::Region}
              mode: '000400'
              owner: root
              group: root
            '/etc/cfn/hooks.d/cfn-auto-reloader.conf':
              content: !Sub |
                [cfn-auto-reloader-hook]
                triggers=post.update
                path=Resources.LaunchConfigUpdated.Metadata.AWS::CloudFormation::Init
                action=/opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfigUpdated --region ${AWS::Region}
              mode: '000400'
              owner: root
              group: root
          services:
            sysvinit:
              httpd:
                enabled: 'true'
                ensureRunning: 'true'
              cfn-hup:
                enabled: 'true'
                ensureRunning: 'true'
                files:
                  - /etc/cfn/cfn-hup.conf
                  - /etc/cfn/hooks.d/cfn-auto-reloader.conf
    Properties:
      KeyName: !Ref KeyName
      ImageId: !Ref ImageId 
      InstanceType: !Ref InstanceType
      SecurityGroups:
        - !Ref InstanceSecurityGroup
      UserData:
        Fn::Base64: !Sub |
          #!/bin/bash -xe
          # Get the latest CloudFormation helper scripts
          yum install -y aws-cfn-bootstrap

          # Start cfn-init
          /opt/aws/bin/cfn-init -v --stack ${AWS::StackName} --resource LaunchConfigUpdated --region ${AWS::Region}
          
          /opt/aws/bin/cfn-signal -e $? --stack ${AWS::StackName} --resource WebServerGroup --region ${AWS::Region}

  ApplicationLoadBalancer:
    Type: AWS::ElasticLoadBalancingV2::LoadBalancer
    Properties:
      Subnets: !Ref Subnets
      SecurityGroups:
        - !Ref ALBSecurityGroup

  ALBListener:
    Type: AWS::ElasticLoadBalancingV2::Listener
    Properties:
      DefaultActions:
        - Type: forward
          TargetGroupArn: !Ref ALBTargetGroup
      LoadBalancerArn: !Ref ApplicationLoadBalancer
      Port: 80
      Protocol: HTTP

  ALBTargetGroup:
    Type: AWS::ElasticLoadBalancingV2::TargetGroup
    Properties:
      HealthCheckIntervalSeconds: 30
      HealthCheckTimeoutSeconds: 5
      HealthyThresholdCount: 3
      Port: 80
      Protocol: HTTP
      UnhealthyThresholdCount: 5
      VpcId: !Ref VpcId
  
  ALBSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable HTTP access on the configured port
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 80
          ToPort: 80
          CidrIp: 0.0.0.0/0
      VpcId: !Ref VpcId

  InstanceSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable SSH access and HTTP access on the configured port
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 22
          ToPort: 22
          CidrIp: !Ref SSHLocation
        - IpProtocol: tcp
          FromPort: 80
          ToPort: 80
          CidrIp: 0.0.0.0/0
      VpcId: !Ref VpcId

Outputs:
  URL:
    Description: URL of the website
    Value: !Join ['', ['http://', !GetAtt [ApplicationLoadBalancer, DNSName]]]
```

## CloudFormation Registry

- Contains private and public extensions (Resource types and Modules)
- Extensions are artifacts that arguments the funcionality of CloudFormation resources and properties
- Extension registered in CloudFormation Registry
- Extension can be written by Amazon, APN Partners, Marketplace sellers and the community
- Extensions types
  - Private extensions: you created or shared with you
  - Public extensions: provided by AWS (ex AWS::DynamoDB::Table)
- Use cloudformation CLI to create extension

### ResopurceTypes

- Model and provisions resources using cloudformation
- For example, create a custom resource that doesn't exist in CloudFormation
- It should follow the structure Organization::Service::Resource
- Resource type package consists of
  - JSON schema that defines your type
  - Handlers that perform the required action(create, update, delete, read, list)
- Step to create
  1. Model: create and validate schema that serves as the definition of your resource type
  2. Develop: write a handler that defines five core operations (Create, Update, Delete, List, Read) on your resource type, and test locally
  3. Register: register the resource type with cloudformation so that it can be used in yur cloudformation templates
- Write handlers in (Python, Java, Typescript, Go)


#### Custom Resource vs Custom types

||Custom Resource| Custom Types|
|-|-|-|
|Operations|Create, Update, delete|Create, Update, Delete, Read, List|
|Languages|Any languages that lambda supports|Python, java, go, typescript|
|Location of execution|Logic and code managed and executed in your account (lambda function| Logic and code managed and executed by AWS|
|Billing|Lambda function invocation|Handler operation/months|
|CloudFormation Registry|No|Yes|
|Integration with drift detection|No|Yes|
|Integration with changesets |No|Yes|

## Modules

- package resources and their configurations for use across stack templates
- uses cases:
  - keep resource configurations aligned with best practices
  - use code written by experts
- Module contains
  - template section: resources, outputs, ...
  - Module parameters: input custom values to your module
- It should follow the structure
Organization::Service::Resource::MODULE
- Registered in CloudFrormation registry as private extensions
- Modules are versioned and can contain nested modules

### Module parameters

- Enables you to input custom values to your module from the template/module that contains it
- Defined the same as template parameters
- You can pass template (parent) parameters to module parameters
- You can't perform constraint checking (e.g AllowedPattern, AllowedValues, ...) on modules Parameters

### Reference Resources in a Module

- Resources in a module can be referenced by logical names
- The fully qualified logicla name
  - ModuleLogicalName.ResourceLogicalName
- Use GetAtt and ref intrinsic functions to acces property values as usual

in AWS cloudShell

mkdir s3-module
cfn init
m for module
name MyCompany::S3::Bucket::MODULE
s3-module/fragments Created
ls fragments
rm fragments/sample.json
nano s3-bucket.yaml
  sudo yum install -y nano if nano editor doesn't exists
paste s3-bucket

```
AWSTemplateFormatVersion: 2010-09-09
Description: Create a S3 bucket that follows MyCompany's standards
Parameters:
  KMSKeyAlias:
    Description: >-
      The alias for your KMS key. If you will leave this field empty KMS key
      alias won't be created along the key.
    Type: String
    AllowedPattern: '^(?!aws)([a-zA-Z0-9\-\_\/]){1,32}$|^$'
    MinLength: 0
    MaxLength: 32
    ConstraintDescription: >-
      KMS key alias must be at least 1 and no more than 32 characters long, can
      contain lowercase and uppercase letters, numbers, hyphens, underscores and
      forward slashes and cannot begin with aws.
  ReadOnlyArn:
    Description: >-
      Provide ARN of an existing Principal (role) that will be granted with read
      only access to the S3 bucket (e.g.
      'arn:aws:iam::123456789xxx:role/myS3ROrole'). If not specified, access
      will be granted to current AWS account:root only. CF deployment will fail
      and rollback for non-existing ARN.
    Type: String
    Default: ''
    AllowedPattern: >-
      ^(arn:aws:iam::\d{12}:role(\/|\/[\w\!\"\#\$\%\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\`\{\|\}\~]{1,510}\/)[\w\+\=\,\.\@\-]{1,64})$|^$
    ConstraintDescription: >-
      IAM role ARN must start with arn:aws:iam::<12-digit AWS account
      number>:role/[<path>/]<name of role>. The name of role must be at least 1
      and no more than 64 characters long, can contain lowercase letters,
      uppercase letters, numbers, plus (+), equal (=), comma (,), period (.), at
      (@), underscore (_), and hyphen (-). Path is optional and must not exceed
      510 characters.
  ReadWriteArn:
    Description: >-
      Provide ARN of an existing Principal (role) that will be granted with read
      and write access to the S3 bucket (e.g.
      'arn:aws:iam::123456789xxx:role/myS3RWrole'). If not specified, access
      will be granted to current AWS account:root only. CF deployment will fail
      and rollback for non-existing ARN.
    Type: String
    Default: ''
    AllowedPattern: >-
      ^(arn:aws:iam::\d{12}:role(\/|\/[\w\!\"\#\$\%\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\\\]\^\`\{\|\}\~]{1,510}\/)[\w\+\=\,\.\@\-]{1,64})$|^$
    ConstraintDescription: >-
      IAM role ARN must start with arn:aws:iam::<12-digit AWS account
      number>:role/[<path>/]<name of role>. The name of role must be at least 1
      and no more than 64 characters long, can contain lowercase letters,
      uppercase letters, numbers, plus (+), equal (=), comma (,), period (.), at
      (@), underscore (_), and hyphen (-). Path is optional and must not exceed
      510 characters.

Resources:
  KmsKey:
    Type: AWS::KMS::Key
    DeletionPolicy: Delete
    UpdateReplacePolicy: Delete
    Properties:
      Enabled: true
      EnableKeyRotation: true
      KeyPolicy:
        Version: 2012-10-17
        Statement:
          - Sid: 'Give AWS account:root full control over the KMS key'
            Effect: Allow
            Principal:
              AWS: !Sub 'arn:aws:iam::${AWS::AccountId}:root'
            Action:
              - 'kms:*'
            Resource: '*'
          - Sid: 'Give ReadOnlyRole access to use KMS key for decryption'
            Effect: Allow
            Principal:
              AWS: !Ref ReadOnlyArn
            Action:
              - 'kms:Decrypt'
              - 'kms:DescribeKey'
            Resource: '*'
          - Sid: 'Give the ReadWriteRole access to use KMS key for encryption and decryption'
            Effect: Allow
            Principal:
              AWS: !Ref ReadWriteArn
            Action:
              - 'kms:Encrypt'
              - 'kms:Decrypt'
              - 'kms:ReEncrypt'
              - 'kms:GenerateDataKey*'
              - 'kms:DescribeKey'
            Resource: '*'

  KmsKeyAlias:
    Type: AWS::KMS::Alias
    Properties:
      AliasName: !Sub 'alias/${KMSKeyAlias}'
      TargetKeyId: !Ref KmsKey

  Bucket:
    Type: AWS::S3::Bucket
    Properties:
      AccessControl: BucketOwnerFullControl
      BucketEncryption:
        ServerSideEncryptionConfiguration:
          - ServerSideEncryptionByDefault:
              KMSMasterKeyID: !Ref KmsKey
              SSEAlgorithm: 'aws:kms'
      BucketName: !Sub '${AWS::StackName}-${AWS::AccountId}-${AWS::Region}'
      PublicAccessBlockConfiguration:
        BlockPublicAcls: true
        IgnorePublicAcls: true
        BlockPublicPolicy: true
        RestrictPublicBuckets: true

  BucketPolicy:
    Type: AWS::S3::BucketPolicy
    Properties:
      Bucket: !Ref Bucket
      PolicyDocument:
        Version: 2012-10-17
        Statement:
          - Sid: DenyIncorrectEncryptionHeader
            Effect: Deny
            Principal: '*'
            Action: 's3:PutObject'
            Resource: !Sub 'arn:aws:s3:::${Bucket}/*'
            Condition:
              StringEquals:
                's3:x-amz-server-side-encryption': AES256
          - Sid: DenyPublicReadACL
            Effect: Deny
            Principal: '*'
            Action:
              - 's3:PutObject'
              - 's3:PutObjectAcl'
            Resource: !Sub 'arn:aws:s3:::${Bucket}/*'
            Condition:
              StringEquals:
                's3:x-amz-acl':
                  - public-read
                  - public-read-write
                  - authenticated-read
          - Sid: DenyPublicReadGrant
            Effect: Deny
            Principal: '*'
            Action:
              - 's3:PutObject'
              - 's3:PutObjectAcl'
            Resource: !Sub 'arn:aws:s3:::${Bucket}/*'
            Condition:
              StringLike:
                's3:x-amz-grant-read':
                  - '*http://acs.amazonaws.com/groups/global/AllUsers*'
                  - '*http://acs.amazonaws.com/groups/global/AuthenticatedUsers*'
          - Sid: DenyNonHttpsConnections
            Effect: Deny
            Principal: '*'
            Action:
              - 's3:PutObject'
              - 's3:GetObject'
            Resource: !Sub 'arn:aws:s3:::${Bucket}/*'
            Condition:
              Bool:
                'aws:SecureTransport': false
          - Sid: 'Give ReadOnlyRole access to get objects from bucket and list bucket'
            Effect: Allow
            Principal:
              AWS: !Ref ReadOnlyArn
            Action:
              - 's3:GetObject'
              - 's3:GetObjectTagging'
              - 's3:ListBucket'
            Resource:
              - !Sub 'arn:aws:s3:::${Bucket}'
              - !Sub 'arn:aws:s3:::${Bucket}/*'
          - Sid: 'Give the ReadWriteRole access to get and put objects from and to bucket and list bucket and multipart uploads'
            Effect: Allow
            Principal:
              AWS: !Ref ReadWriteArn
            Action:
              - 's3:DeleteObject'
              - 's3:DeleteObjectTagging'
              - 's3:GetObject'
              - 's3:GetObjectTagging'
              - 's3:ListBucket'
              - 's3:PutObject'
              - 's3:PutObjectTagging'
            Resource:
              - !Sub 'arn:aws:s3:::${Bucket}'
              - !Sub 'arn:aws:s3:::${Bucket}/*'

Outputs:
  BucketArn:
    Description: ARN of the bucket created.
    Value: !GetAtt Bucket.Arn
  BucketName:
    Description: Name of the bucket created.
    Value: !Ref Bucket
  KmsKeyAlias:
    Description: Alias of SSE-KMS Customer Managed Key used to encrypt S3 bucket content.
    Value: !Ref KmsKeyAlias
  KmsKeyArn:
    Description: ARN of SSE-KMS Customer Managed Key used to encrypt S3 bucket content.
    Value: !GetAtt KmsKey.Arn

```

in fragmetns directory

cfn submit -v (Create Module Cloudformation Registry)


```
AWSTemplateFormatVersion: '2010-09-09'
Description: "Create a Firehose stream that writes to S3"

Resources:
  FirehoseDestination: # Module logical name
    Type: MyCompany::S3::Bucket::MODULE
    Properties:
      KMSKeyAlias: !Sub "${AWS::StackName}"
      ReadWriteArn: !GetAtt FirehoseRole.Arn
      ReadOnlyArn: !Sub 'arn:aws:iam::${AWS::AccountId}:root'

  FirehoseRole:
    Type: AWS::IAM::Role
    Properties:
      AssumeRolePolicyDocument:
        Version: '2012-10-17'
        Statement:
          - Sid: AssumeRole1
            Effect: Allow
            Principal:
              Service: firehose.amazonaws.com
            Action: 'sts:AssumeRole'

  FirehosePolicy:
    Type: AWS::IAM::Policy
    Properties:
      PolicyName: "ReadWrite"
      PolicyDocument:
        Version: '2012-10-17'
        Statement:
          - Sid: "KmsEncryptionDecryption"
            Effect: Allow
            Action:
              - 'kms:Decrypt'
              - 'kms:GenerateDataKey'
            Resource: !GetAtt FirehoseDestinationKmsKey.Arn # Get KmsKey Arn inside our module
            Condition:
              StringEquals:
                kms:ViaService: !Sub 's3:${AWS::Region}.amazonaws.com'
              StringLike:
                kms:EncryptionContext:aws:s3:arn: !Sub '${FirehoseDestinationBucket.Arn}/*' # Get Bucket Arn inside our module
          - Sid: FirehoseAccess
            Effect: Allow
            Action:
            - kinesis:DescribeStream
            - kinesis:GetShardIterator
            - kinesis:GetRecords
            - kinesis:ListShards
            Resource: !GetAtt Firehose.Arn
          - Sid: "S3ListBucket"
            Effect: Allow
            Action:
              - 's3:ListBucket'
              - 's3:ListBucketByTags'
              - 's3:ListBucketMultipartUploads'
              - 's3:GetBucketLocation'
            Resource: !GetAtt FirehoseDestinationBucket.Arn # Get Bucket Arn inside our module
          - Sid: "S3GetPutDeleteObject"
            Effect: Allow
            Action:
              - 's3:DeleteObject'
              - 's3:DeleteObjectTagging'
              - 's3:GetObject'
              - 's3:GetObjectTagging'
              - 's3:PutObject'
              - 's3:PutObjectTagging'
            Resource: !Sub '${FirehoseDestinationBucket.Arn}/*' # Get Bucket Arn inside our module
      Roles: 
      - !Ref FirehoseRole

  Firehose:
    Type: AWS::KinesisFirehose::DeliveryStream
    Properties:
      DeliveryStreamName: !Sub "${AWS::StackName}"
      DeliveryStreamType: DirectPut
      S3DestinationConfiguration:
        BucketARN: !GetAtt FirehoseDestinationBucket.Arn # Get Bucket Arn inside our module
        RoleARN: !GetAtt FirehoseRole.Arn
        EncryptionConfiguration:
          KMSEncryptionConfig:
            AWSKMSKeyARN: !GetAtt FirehoseDestinationKmsKey.Arn # Get KmsKey Arn inside our module
```

## Resource import

- Import existing resource into existing/new stacks
- You don't need to delete and re-create the resources as part of a cloudformation stack
- During impor operation, you will need
  - A template that describes the entire stack (original stack resource and target resource to import)
  - A unique identifier for each target resource (ex BucketName for S3 bucket)
- Each resource to import must have a DeletionPolicy attribute (any value) and identifier
- Can't import the same resource into multiple stacks
- CloudFormation performs the following validations
  - The resource to import exists
  - Properties and configuration values adhere to the resource schema
  - the resource's requeried properties are specified
  - the resource to import doesn't belong to another stack
- CloudFormation doesn't check that the template configuration matches the actual configuration
- Recommended to run drift detection on imported resources after import operation
- Use cases:
  - Create a new stack from existing resources
  - Import existing resources into existing stack
  - Move resources between stacks
  - Remove resource from a stack
  - Remediate a detected drift
  - Moving nested stack from parent stack and import it into another parent stack
  - Nesting an existing stack

in create stack menu choose import
updtae stack s3 and dynamos
```
Resources:
  ImportedTable:
    Type: AWS::DynamoDB::Table
    DeletionPolicy: Retain
    Properties:
      BillingMode: PAY_PER_REQUEST
      AttributeDefinitions:
        - AttributeName: id
          AttributeType: S
      KeySchema:
        - AttributeName: id
          KeyType: HASH

  ImportedBucket:
    Type: AWS::S3::Bucket
    DeletionPolicy: Retain
  
  ImportedInstance:
    Type: AWS::EC2::Instance
    DeletionPolicy: Retain
    Properties:
      ImageId: ami-043097594a7df80ec
      InstanceType: t2.micro
```

## AWS SAM

- SAM = Serverless Application Model
- Framework for developing and deploying serverless applications
- All the configuration is YAML code
- Generate complex CloudFormation from simple AM YAML file
- Supports anything from CloudFormation: Outputs, Maping, Parameters, Resources
- Only two commands to deply to AWS
- SAM can use CodeDeploy to deploy Lambda functions
- SAM can help you to run lambda, API Gateway, DynamoDB locally

## AWS Cloud Development Kit (CDK)

- Define your cloud infraestructure using a familiar language:
  - JavaScript/TypeScript, Python, Java and .NET
- Contains high level components called constructs
- The code is "compiled" into a CloudFormation template (JSON/YAML)
- You can therefore deploy infraestructure and application runtime code together
  - Great for Lambda functions
  - Great for docker containers in ECS/EKS
- Can import/migrate a ClpudFormation template into/to AWS CDK

## CloudFormation Macros

- Perform custom processing on CloudFormation templates (ex. find-and-replace, transformations, ...)
- For example AWS::Serverless which takes an entire template written in SAM syntax and transforms it into a compliant CloudFormation template
- To define a Macro, you need:
  - Lambda function: perform the template processing (snippet or entire template)
  - A resource of type AWS::CloudFormation::Macro ( Create stack containing this resource)
- You can process
  - The entire template (reference the Macro in the Transform section in the template)
  - A sippet of a template (reference the mMacro  in Fn::Transform)
- CloudFormation generates a ChangeSet that includes the processed template

- You can't use a Macro in the same template you're registering it in
- You can't include Macros within Macros
- Macros are not supported in Stacksets
- Macros are evaluated in order, processed from deepest to shallowest ( top-level Macros are executed last)


```
AWSTemplateFormatVersion: 2010-09-09
Description: >
  Count Macro
  A simple iterator for creating multipleidentical resources

Resources:
  Macro:
    Type: AWS::CloudFormation::Macro
    Properties:
      Name: Count
      FunctionName: !GetAtt CountMacroFunction.Arn
  
  CountMacroFunction:
    Type: AWS::Lambda::Function
    Properties:
      Handler: index.handler
      Runtime: python3.8
      Timeout: 360
      Role: !GetAtt AWSLambdaExecutionRole.Arn
      Code:
        ZipFile: |
          import copy
          import json

          def process_template(template, parameters):
            new_template = copy.deepcopy(template)
            status = 'success'

            for name, resource in template['Resources'].items():
              if 'Count' in resource:

                # Check if the value of Count is referenced to a parameter passed in the template
                try:
                  refValue = new_template['Resources'][name]['Count'].pop('Ref')
                  # Convert referenced parameter to an integer value
                  count = int(parameters[refValue])
                  # Remove the Count property from this resource
                  new_template['Resources'][name].pop('Count')
                
                except AttributeError:
                  # Use numeric Count value
                  count = new_template['Resources'][name].pop('Count')
                
                print("Found 'Count' property with value {} in '{}' resource...multiplying!".format(count, name))

                # Remove the original resource from the template but take a local copy of it
                resourceToMultiply = new_template['Resources'].pop(name)

                # Create a new block of the resource muliplied with names ending in the iterator and the placeholders substituted
                resourcesAfterMultiplication = multiply(name, resourceToMultiply, count)

                if not set(resourcesAfterMultiplication.keys()) & set(new_template['Resources'].keys()):
                  new_template['Resources'].update(resourcesAfterMultiplication)
                else:
                  status = 'failed'
                  return status, template
              
              else:
                print("Did not find 'Count' property in '{}' resource...Nothing to do!".format(name))
            
            return status, new_template
        
          def update_placeholder(resource_structure, iteration):

            # Convert the json into a string
            resourceString = json.dumps(resource_structure)

            # Count the number of times the placeholder is found in the string
            placeHolderCount = resourceString.count('%d')

            # If the placeholder is found then replace it
            if placeHolderCount > 0:
              print ("Found {} occurrences of decimal placeholder in JSON, replacing with iterator value {}".format(placeHolderCount, iteration))

              # Make a list of the values that we will use to replace the decimal placeholders - the values will all be the same
              placeHolderReplacementValues = [iteration] * placeHolderCount

              # Replace the decimal placeholders using the list - the syntax below expands the list
              resourceString = resourceString % (*placeHolderReplacementValues,)

              # Convert the string back to JSON and return it
              return json.loads(resourceString)

            else:
              print("No occurrences of decimal placeholder found in JSON, therefore nothing will be replaced")
              return resource_structure
          
          def multiply(resource_name, resource_structure, count):
            resources = {}

            # Loop according to the number of times we want to multiply, creating a new resource each time
            for iteration in range(1, (count + 1)):
              print("Multiplying '{}', iteration count {}".format(resource_name, iteration))
              multipliedResourceStructure = update_placeholder(resource_structure, iteration)
              resources[resource_name + str(iteration)] = multipliedResourceStructure
            
            return resources
          
          def handler(event, context):
            result = process_template(event['fragment'], event['templateParameterValues'])

            return {
              'requestId': event['requestId'],
              'status': result[0],
              'fragment': result[1]
            }

  AWSLambdaExecutionRole:
     Type: AWS::IAM::Role
     Properties:
       AssumeRolePolicyDocument:
         Statement:
         - Action:
           - sts:AssumeRole
           Effect: Allow
           Principal:
             Service:
             - lambda.amazonaws.com
         Version: '2012-10-17'
       Path: "/"
       Policies:
       - PolicyDocument:
           Statement:
           - Action:
             - logs:CreateLogGroup
             - logs:CreateLogStream
             - logs:PutLogEvents
             Effect: Allow
             Resource: arn:aws:logs:*:*:*
           Version: '2012-10-17'
         PolicyName: !Sub ${AWS::StackName}-${AWS::Region}-AWSLambda-CW
       RoleName: !Sub ${AWS::StackName}-${AWS::Region}-AWSLambdaExecutionRole
```

```
Transform: Count

Resources:
  MyBucket:
    Type: AWS::S3::Bucket
    Count: 3
    Properties:
      Tags:
        - Key: TestKey
          Value: my bucket %d
```

## Public roadmap coverage
https://github.com/aws-cloudformation/cloudformation-coverage-roadmap

## using the AWS CLI


```
#!/usr/bin/env bash

# see http://docs.aws.amazon.com/cli/latest/userguide/installing.html
# AWS CLI installation depends on OS

# we create the cloudformation template
aws cloudformation create-stack --stack-name example-cli-stack --template-body file://0-sample-template.yaml --parameters file://0-parameters.json

# some options:
# [--template-url <value>]
# [--disable-rollback | --no-disable-rollback]
# [--rollback-configuration <value>]
# [--timeout-in-minutes <value>]
# [--notification-arns <value>]
# [--capabilities <value>]
# [--resource-types <value>]
# [--role-arn <value>]
# [--on-failure <value>]
# [--stack-policy-body <value>]
# [--stack-policy-url <value>]
# [--tags <value>]
# [--client-request-token <value>]
# [--enable-termination-protection | --no-enable-termination-protection]
# [--cli-input-json | --cli-input-yaml]
# [--generate-cli-skeleton <value>]

aws cloudformation delete-stack --stack-name example-cli-stack
```

template
```
Metadata: 
  License: Apache-2.0
AWSTemplateFormatVersion: '2010-09-09'
Description: 'AWS CloudFormation Sample Template Sample template EIP_With_Association:
  This template shows how to associate an Elastic IP address with an Amazon EC2 instance
  - you can use this same technique to associate an EC2 instance with an Elastic IP
  Address that is not created inside the template by replacing the EIP reference in
  the AWS::EC2::EIPAssoication resource type with the IP address of the external EIP.
  **WARNING** This template creates an Amazon EC2 instance and an Elastic IP Address.
  You will be billed for the AWS resources used if you create a stack from this template.'
Parameters:
  InstanceType:
    Description: WebServer EC2 instance type
    Type: String
    Default: t3.small
    AllowedValues: [t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge,
      t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge,
      m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge,
      m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge,
      c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge,
      g3.8xlarge,
      r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge,
      i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge,
      d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge]
    ConstraintDescription: must be a valid EC2 instance type.
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
    AllowedPattern: (\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})/(\d{1,2})
    ConstraintDescription: must be a valid IP CIDR range of the form x.x.x.x/x.
  LatestAmiId:
    Type:  'AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>'
    Default: '/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2'
Resources:
  EC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      UserData: !Base64
        Fn::Join:
        - ''
        - [IPAddress=, !Ref 'IPAddress']
      InstanceType: !Ref 'InstanceType'
      SecurityGroups: [!Ref 'InstanceSecurityGroup']
      KeyName: !Ref 'KeyName'
      ImageId: !Ref 'LatestAmiId'
  InstanceSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Enable SSH access
      SecurityGroupIngress:
      - IpProtocol: tcp
        FromPort: 22
        ToPort: 22
        CidrIp: !Ref 'SSHLocation'
  IPAddress:
    Type: AWS::EC2::EIP
  IPAssoc:
    Type: AWS::EC2::EIPAssociation
    Properties:
      InstanceId: !Ref 'EC2Instance'
      EIP: !Ref 'IPAddress'
Outputs:
  InstanceId:
    Description: InstanceId of the newly created EC2 instance
    Value: !Ref 'EC2Instance'
  InstanceIPAddress:
    Description: IP address of the newly created EC2 instance
    Value: !Ref 'IPAddress'
```

parameters
```
[
  {
    "ParameterKey": "InstanceType",
    "ParameterValue": "t2.micro"
  },
  {
    "ParameterKey": "KeyName",
    "ParameterValue": "DemoKeyPair"
  },
  {
    "ParameterKey": "SSHLocation",
    "ParameterValue": "0.0.0.0/0"
  }
]
```

## Advanced Concepts & 3rd Party Tools
Former2
Former2 allows you to generate IaC (ex. CloudFormation templates) from existing resources https://github.com/iann0036/former2

Everything happens in the browser (it’s a client-side web app)

Requires IAM keys with ReadOnlyAccess

The following outputs are currently supported:

CloudFormation templates

Terraform

Troposphere

CDK (Cfn Primitives) – TypeScript, Python, C#, Java

CDK for Terraform – TypeScript

Pulumi – TypeScript

Diagram – an embedded version of draw.io


TaskCat
A tool that automates the testing of CloudFormation templates https://github.com/aws-quickstart/taskcat

Deploys your template in multiple AWS Regions simultaneously

Generates a report with a pass/fail result for each Region

You provide

AWS Regions and the number of AZs you want to include in the test

Template parameters’ values



cfn-nag
A tool that looks for patterns in CloudFormation templates that may indicate insecure infrastructure https://github.com/stelligent/cfn_nag

Examples:

IAM rule and Security Group rules that are too permissive (wildcards)

Access logs and Encryption that aren’t enabled

Password literals



CloudFormation cheatsheet
Summarizes the usage of !Ref and !GetAtt with CloudFormation resources https://theburningmonk.com/cloudformation-ref-and-getatt-cheatsheet/



aws-cfn-template-flip
A tool that converts CloudFormation templates between JSON and YAML formats https://github.com/awslabs/aws-cfn-template-flip



cfn-diagram
A tool to visualize CloudFormation/SAM/CDK templates as diagrams https://github.com/mhlabs/cfn-diagram

Generates https://draw.io and HTML diagrams

Select only the resources you want (filter by resource type/name)

Different layouts

Supports JSON and YAML



cfn-format
A tool that reads a CloudFormation template and outputs a cleanly-formatted copy adhering to CloudFormation standards https://github.com/awslabs/aws-cloudformation-template-formatter



awesome-cloudformation
Reference list for open-source projects related to CloudFormation: https://github.com/aws-cloudformation/awesome-cloudformation


## Template Validation
You can validate your CloudFormation template to catch syntax and semantic errors, before CloudFormation creates any resources

- CloudFormation Console automatically validates the template after you specify input parameters

- AWS CLI CloudFormation validate-template command

cfn-lint: https://github.com/aws-cloudformation/cfn-lint

- Validate CloudFormation templates JSON/YAML against resource specification (properties and their values)

cfn-guard: https://github.com/aws-cloudformation/cloudformation-guard

- Validate CloudFormation templates for compliance to organization policy guidelines

- You define your own rules

- Example: ensure users always create encrypted S3 buckets

- Can be used as part of CI/CD pipeline

## Intrinsic Functions References

- Fn::Ref
  - the Fn::Ref function can be leveraged to reference
    - Parameters => returns the value of the parameter
    - resources => returns the physical ID of the underlying resource (ex: EC2 ID)
  - The shorthand for this in YAML is !Ref

- Fn::GetATT
  - Attributes are attached to any resources you create
  - To know the attributes of your resources, the best place to look at is the documentation
  - For example: the AZ of an EC2 machine

- Fn::FindInMap
  - We use FN::FindInMap to return a named value from a specifik key
  - !FindInMap [MapName, TopLevelKey, SecondLevelKey]

- Fn::ImportValue
  - Import values that are exported in other stacks
  - For this, we use the FN::ImportValue function

- Fn::Join
  - Join vlaues with a delimiter
  - Ex: !join [":",[a,b,c]] recult in a:b:c

- Fn::Base64
  - Convert String to it's Base64 representation
  - !base64 ValueToEncode
  - Example: pass encoded data to EC2 Instance's UserData property

- Fn::Cidr
  - Returns an array of CIDR address blocks
  - Parameters:
    - ipBlock: CIDR address block to be split
    - count: number of CIDRs to generate (I-256)
    - cidrBits: number of subnet bits of the CIDR, inverse of subnet mask (32 - subnet_mask)
    - Ex !Cidr ['192.168.0.0/24', 6,5] generates 6 CIDR with a subnet mask "/27"(32-5=27) from a CIDR with subnet mask "/24"
- Fn::GetAZs
  - Retunrns an array of Availability Zones in a region in alphabtical order !GetAZs

- Fn::Select
   - returns a single object from an array of objects by index
   - !Select [index, listofObjects]
   - Ex !Select["1", ["apples", "grapes", "oranges"]] returns grapes

- Fn::Split
  - Split a String into set of String Values
  - !Split [delimiter, souurceString]
  - EX !Split ["|", "a|b|c"] returns ["a","b", "c"]

- FN::Transform
  - Specifies a Cloudformation Macro to perform custom processing on the template

## AWS CLoudformation Best Practices

- Layered arqchitecture (horizontal layers) vs service-oriented architecture (vertical layers)
- Use cross-stack references (example, to reference a VPC or subnet)
- Make sure teh template is environment agnostic so you can do dev/test/prod and cross regions/accounts
- Used nested stacks to reuse common template patterns
- Do not embed credentials into CloudFormaqtion templates (use Parameters with Noecho or Dynamic references)
- Use cfn-init (and latest version of the helper scripts)
- Validate templates
- Use scpecifis parameters types and constraints
- Don't do anything manual on the elements of the stack- that can cause a state mismatch
- Verify changes with changesSets (and avoid disasters)
- Use Stack policies to prevent critical components from being deleted after create (exapmple your must valuable RDSdatabase)


## Template Snippets and Samples
A list of template snippets, samples and examples you can use

https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/CHAP_TemplateQuickRef.html

https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-sample-templates.html

https://github.com/awslabs/aws-cloudformation-templates
