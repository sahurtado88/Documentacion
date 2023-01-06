# AMAZON EKS

Amazon EKS is a managed Kubernetes service to run Kubernetes in the AWS cloud and on-premises data centers. In the cloud, Amazon EKS automatically manages the availability and scalability of the Kubernetes control plane nodes responsible for scheduling containers, managing application availability, storing cluster data, and other key tasks.

- Aws Manages Kubertnetes Control Plane
    - maintains High Availability - Multiple EC2 in multiple AZ
    - detects and replaces unhealthy Control Plane Instances
    - Scales control Plane
    - Maintain etcd
    - Provides Automated Version Upgrade and Patching
    - Supports Native and Upstreams Kubernetes
    - Integrated with AWS Ecosystem

## EKS data Plane

- Amazon EC2 Self Managed Node Groups
    - You mantain worker EC2
    - You orchestrate version upgrade, secure patching, AMI Rehydration, keeping pods up during upgrade
    - Can use custom AMI

- Amazon EC2 Managed Node Groups
    - AWS manages worker EC2
    - AWS provides AMI with security patches, version upgrade
    - AWS manages pod disruption during upgrade
    - Doesn't work with custom AMI

- AWS fargate
    - No workers EC2 whatoever
    - You define and deloy pod
    - Container + Serverless

## Spin Up Cluster

- AWS console
- Cloudformation
- AWS CLI
- EKSCTL

### EKSCTL

- CLI tool for creating cluster on EKS
- Easier than console
- Abstracts lot of stuff - VPC, subnet, SEc Group ,etc using cloudformation

command| Brief Description|
|-|-|
|eksctl create cluster| Create EKS Cluster with one nodegroup containing 2 m5.large nodes|
eksctl create cluster --name <name> --version 1.15 --node-type t3.micro --nodes 2 | Create EKS Cluster with k8 version 1.15 wit 2 t3.micro nodes
eksctl create cluster --name <name> --version 1.15 --nodegroup-name <nodegrpname> --node-type t3.micro --nodes 2 --managed | Create EKS cluster with managed node group
eksctl create cluster --name <name> --fargate | EKS Cluster with Fargate Profile


- Create, get, list and delete clusters
- Create, drain and delete nodegroups
- Scale a nodegroup
- Update a cluster
- Use custom AMIs
- Configure VPC Networking
- Configure access to API endpoints
- Support for GPU nodegroups
- Spot instances and mixed instances
- IAM Management and Add-on Policies
- List cluster Cloudformation stacks
- Install coredns
- Write kubeconfig file for a cluste