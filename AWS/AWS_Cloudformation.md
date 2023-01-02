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


