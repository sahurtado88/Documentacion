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

- **Self-managed:** You bring your own servers and have more control of the server. You have to manage it yourself though. So people also call this unmanaged.
- **Managed Node Groups:** AWS manages the servers for you. You just have to specify some configurations of server instance types.
- **AWS Fargate:** AWS manages even more of the server for you. You don't even have to think about instance types. Just tell EKS how much RAM and CPU you need and that's it.

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
- Write kubeconfig file for a cluster

### Kubectl

- CLI for running commands against a cluster on K8s resources
- Communicate via cluster API Server
- Works for any K8s cluster- EKS, K8s on EC2, GKE, AKS, etc

#### Kubectl Commands Syntax

![Descripción de la imagen](..\Images\kubectl_commands_syntax.png)

Command |Brief Description
|-|-|
kubectl apply -f ./manifest-file.yaml |Create resources based on manifest. Declarative Way! Best Way!
kubectl get nodes |List all node info
kubectl get services |List all services 
kubectl get pods -o wide |List pods with more details
kubectl get pod my-pod -o yaml |Get a pod's YAML
kubectl get deployment my-dep |List a particular deployment
kubectl exec -it podname -- /bin/bash |Get a shell to the running Containe

## Pod limit in a Node

- Max number of allowed pods depend on EC2 instance type


## EKS Managed Groups

- Create and manage EC2 workers for you
- Amazon releases AMIs with bug fix, security patches fro EKS worker nodes
    - or bring your own custom AMI
- Automated deployment of updated AMIs with security patches, CVEs
    - No app downtime
    - No overhead of user managed orchestration
    - Auto Scaling group is used behind the scenes

## Helm and charts

- Helm is package manager for Kubernetes
- Helm packages are called Charts
- Helm Charts help define, install, and upgrade 
complex Kubernetes application
- Helm Charts can be versioned, shared, and 
published
- Helm Charts can accept input parameter
    - kubectl need template engine to do this (Kustomize, jinja etc.)
- Popular packages already available

## EKS logging

- EKS Control Plane Logging
    - K8 api
    - audit
    - authenticator
    - ControlManager
    - scheduler
- EKS Worker Nodes Logging
    - System logs from kubelet, kube-proxy, or dockerd
    - Application logs from application containers    

### Log are written

- Containerized application writes to stdout and stderr
- System logs go to systemd
- Container redirect logs to /var/log/containers/*.log files

![Descripción de la imagen](..\Images\Logs_kubernetes.png)

## Kubernetes Dashboard

- Web-based kubernetes used  interface
- Overview of applications and resources running on cluster
- create and modify resources
- Is not use in prod environment

## Monitoring using Prometheus

- Monito Kubernetes cluster
- Query times series data to generate graphs, tables
- create alerts
- Open source

## Graphs using grafana

- Visualize metrics
- Works out of the box with prometheus
- Create alerts
- Open source
