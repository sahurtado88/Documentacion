# Kubernetes

Open source container orchestration tool

developed by google
helps manage containerized applications in differen deployment environment

high availability or no dowtime

scalability or high performance

disaster recovery backuo and restore

## KUBERNETES ARCHITECTURE

- api server: entrypoint to K8s cluster

- controll manager: keeps track of whats happening in the cluster

- Scheduler: ensures pods placement

- etcd: kubernetes backing store

NODE PROCESS

each node has multiple POD in it

3 processes must be installed on every node

    -Worker Node do the actual work

    CONTAINER RUNTIME (for exmple docker)
    KUBELET interact with both the container runtime and node, starts the pod with a container inside
    KUBEPROXY forwards the request

MASTER NODES

  4 processes run on every master node

  - API SERVER is like a cluster gateway queries and updates acts as a gatekeeper for authentication
  
  - SCHEDULER where to put the POD A scheduler watches for newly created Pods that have no Node assigned. For every Pod that the scheduler discovers, the scheduler becomes responsible for finding the best Node for that Pod to run on. The scheduler reaches this placement decision taking into account the scheduling principles described below.
  
  - CONTROLLER MANAGER in Kubernetes, a controller is a control loop that watches the shared state of the cluster through the apiserver and makes changes attempting to move the current state towards the desired state. Examples of controllers that ship with Kubernetes today are the replication controller, endpoints controller, namespace controller, and serviceaccounts controller. 
  detects cluster state changes

  - ETCD etcd is a consistent and highly-available key value store used as Kubernetes' backing store for all cluster data.
  cluster brain, cluster changes get stored in the key value store
  application data is not stored in ETCD

  when we have 2 master nodes de api server is load balance and etcd is distributed storage across all master nodes

EXAMPLE CLUSTER SET UP

master have less resource 

2 MASTER NODES
3 WORKER NODES

ADD NEW MASTER/ NODE SERVER

1- get new bare server
2- install all the master/worker node process
3- add it to the cluster



**NODES**
NOde=virtual or pysical machine

Kubernetes runs your workload by placing containers into Pods to run on Nodes. A node may be a virtual or physical machine, depending on the cluster. Each node is managed by the control plane and contains the services necessary to run Pods.

Typically you have several nodes in a cluster; in a learning or resource-limited environment, you might have only one node.

The components on a node include the kubelet, a container runtime, and the kube-proxy.
```
{
  "kind": "Node",
  "apiVersion": "v1",
  "metadata": {
    "name": "10.240.79.157",
    "labels": {
      "name": "my-first-k8s-node"
    }
  }
}
```

**POD**


Pods are the smallest deployable units of computing that you can create and manage in Kubernetes.

Abstraction over container

usually 1 application per POD 

pods are ephemeral

A Pod (as in a pod of whales or pea pod) is a group of one or more containers, with shared storage and network resources, and a specification for how to run the containers. A Pod's contents are always co-located and co-scheduled, and run in a shared context. A Pod models an application-specific "logical host": it contains one or more application containers which are relatively tightly coupled. In non-cloud contexts, applications executed on the same physical or virtual machine are analogous to cloud applications executed on the same logical host.

The shared context of a Pod is a set of Linux namespaces, cgroups, and potentially other facets of isolation - the same things that isolate a Docker container. Within a Pod's context, the individual applications may have further sub-isolations applied.

In terms of Docker concepts, a Pod is similar to a group of Docker containers with shared namespaces and shared filesystem volumes.


```
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80
```


**NAMESPACES**
In Kubernetes, namespaces provides a mechanism for isolating groups of resources within a single cluster. Names of resources need to be unique within a namespace, but not across namespaces. Namespace-based scoping is applicable only for namespaced objects (e.g. Deployments, Services, etc) and not for cluster-wide objects (e.g. StorageClass, Nodes, PersistentVolumes, etc).

-Organise resources in namespaces
-virtual cluster inside a cluster


4 namespaces per default
*KUBERNETES-DASHBOARD only with minikube
 
  1 KUBE SYSTEM do not create or modify in kube system system processes master and kubectl processes
  1 KUBE PUBLIC public accesible data a configmap which contains cluster information
  3 KUBE NODE LEASE heartbeats of node each node has associated lease object in namespace, determines the availability of a node
  4 DEFAULT  resource you create are located here



resource grouped in Namespaces you don't use namespaces if small projects or less tha 10 users

conflict many teams same application

resource sharing: staging and development

resouce sharing Blue/green Deployment

acces and resource limits on namespaces

--------------------------
you cant acces most of resources from another namespaces

each namespaces must defines own CongfigMaps ans Secrets

services can uses from another namespaces

volumes and node live globally in a cluster you can isolate them

namespace can defines in metadata in configuration file yaml
 or in  apply $ kubectl apply -f [filename] --namespace=[namespacecreated]

 Change active namespaces with kubens other app  kubectx



**SERVICES**

permanent IP addrees can attach to a POD

lifecylce of POD and service not connected

An abstract way to expose an application running on a set of Pods as a network service.

With Kubernetes you don't need to modify your application to use an unfamiliar service discovery mechanism. Kubernetes gives Pods their own IP addresses and a single DNS name for a set of Pods, and can load-balance across them.
```
apiVersion: v1
kind: Service
metadata:
  name: my-service
spec:
  selector:
    app: MyApp
  ports:
    - protocol: TCP
      port: 80
      targetPort: 9376
```
This specification creates a new Service object named "my-service", which targets TCP port 9376 on any Pod with the app=MyApp label.

existe internal Service and external service

external service open de ip and port 

the configuration of external service need in specs type:load blanacer and the third port nodePort in ports section
```
apiVersion: v1
kind: Service
metadata:
  name: mongo-express-service
spec:
  selector:
    app: mongo-express
  type: LoadBalancer  
  ports:
  - port: 8081
    targetPort: 8081
    nodePort: 30000
```


**STATEFULSET**

for stateful apps like databases

StatefulSet is the workload API object used to manage stateful applications.

Manages the deployment and scaling of a set of Pods, and provides guarantees about the ordering and uniqueness of these Pods.

Like a Deployment, a StatefulSet manages Pods that are based on an identical container spec. Unlike a Deployment, a StatefulSet maintains a sticky identity for each of their Pods. These pods are created from the same spec, but are not interchangeable: each has a persistent identifier that it maintains across any rescheduling.

If you want to use storage volumes to provide persistence for your workload, you can use a StatefulSet as part of the solution. Although individual Pods in a StatefulSet are susceptible to failure, the persistent Pod identifiers make it easier to match existing volumes to the new Pods that replace any that have failed

DB are often hosted outside of K8 cluster because statefulset is more complicated to do



**DEPLOYMENT**
 
DB can't be replicated via Deployment shared same storage and give some data inconsistences

Deployment is for stateLESS

blueprint for pods, abstraction of pods

A Deployment provides declarative updates for Pods and ReplicaSets.

You describe a desired state in a Deployment, and the Deployment Controller changes the actual state to the desired state at a controlled rate. You can define Deployments to create new ReplicaSets, or to remove existing Deployments and adopt all their resources with new Deployments.
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80

```

**DAEMONSETS**
A DaemonSet ensures that all (or some) Nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected. Deleting a DaemonSet will clean up the Pods it created.

Some typical uses of a DaemonSet are:

    running a cluster storage daemon on every node
    running a logs collection daemon on every node
    running a node monitoring daemon on every node

```
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: fluentd-elasticsearch
  namespace: kube-system
  labels:
    k8s-app: fluentd-logging
spec:
  selector:
    matchLabels:
      name: fluentd-elasticsearch
  template:
    metadata:
      labels:
        name: fluentd-elasticsearch
    spec:
      tolerations:
      # this toleration is to have the daemonset runnable on master nodes
      # remove it if your masters can't run pods
      - key: node-role.kubernetes.io/master
        operator: Exists
        effect: NoSchedule
      containers:
      - name: fluentd-elasticsearch
        image: quay.io/fluentd_elasticsearch/fluentd:v2.5.2
        resources:
          limits:
            memory: 200Mi
          requests:
            cpu: 100m
            memory: 200Mi
        volumeMounts:
        - name: varlog
          mountPath: /var/log
        - name: varlibdockercontainers
          mountPath: /var/lib/docker/containers
          readOnly: true
      terminationGracePeriodSeconds: 30
      volumes:
      - name: varlog
        hostPath:
          path: /var/log
      - name: varlibdockercontainers
        hostPath:
          path: /var/lib/docker/containers
```

**EVENTS**



**LOGS**

**VOLUMES**

attach phisycal hard disk coiuld be local or remote


**REPLICASET**
A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time. As such, it is often used to guarantee the availability of a specified number of identical Pods
```
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: frontend
  labels:
    app: guestbook
    tier: frontend
spec:
  # modify replicas according to your case
  replicas: 3
  selector:
    matchLabels:
      tier: frontend
  template:
    metadata:
      labels:
        tier: frontend
    spec:
      containers:
      - name: php-redis
        image: gcr.io/google_samples/gb-frontend:v3
```
A ReplicaSet ensures that a specified number of pod replicas are running at any given time. However, a Deployment is a higher-level concept that manages ReplicaSets and provides declarative updates to Pods along with a lot of other useful features. Therefore, we recommend using Deployments instead of directly using ReplicaSets, unless you require custom update orchestration or don't require updates at all.

This actually means that you may never need to manipulate ReplicaSet objects: use a Deployment instead, and define your application in the spec section

**ROLES**

**SECRETS**
used to store secret data like credentials, certificates

reference Secret in Deployment /POD

A Secret is an object that contains a small amount of sensitive data such as a password, a token, or a key. Such information might otherwise be put in a Pod specification or in a container image. Using a Secret means that you don't need to include confidential data in your application code.




**ConfigMaps**

external configuration of your application like DB_URL

A ConfigMap is an API object used to store non-confidential data in key-value pairs. Pods can consume ConfigMaps as environment variables, command-line arguments, or as configuration files in a volume.

A ConfigMap allows you to decouple environment-specific configuration from your container images, so that your applications are easily portable.

A ConfigMap is not designed to hold large chunks of data. The data stored in a ConfigMap cannot exceed 1 MiB. If you need to store settings that are larger than this limit, you may want to consider mounting a volume or use a separate database or file service.
```
apiVersion: v1
kind: ConfigMap
metadata:
  name: game-demo
data:
  # property-like keys; each key maps to a simple value
  player_initial_lives: "3"
  ui_properties_file_name: "user-interface.properties"

  # file-like keys
  game.properties: |
    enemy.types=aliens,monsters
    player.maximum-lives=5    
  user-interface.properties: |
    color.good=purple
    color.bad=yellow
    allow.textmode=true    

```

**INGRESS**

An API object that manages external access to the services in a cluster, typically HTTP.

Ingress may provide load balancing, SSL termination and name-based virtual hosting.

You must have an Ingress controller to satisfy an Ingress. Only creating an Ingress resource has no effect.

You may need to deploy an Ingress controller such as ingress-nginx. You can choose from a number of Ingress controllers.

Ideally, all Ingress controllers should fit the reference specification. In reality, the various Ingress controllers operate slightly differently.

INGRESS CONTROLLER pod
  evaluates all the rules
  manages redirections
  entrypoint to cluster
  many third partu impementations K8s NGINX Ingress ControllerapiVersion: v1
kind: Service
metadata:
  name: mongo-express-service
spec:
  selector:
    app: mongo-express
  type: LoadBalancer  
  ports:
  - port: 8081
    targetPort: 8081
    nodePort: 30000


**PERSISTENT VOLUMES**


What is Kubernetes?
http://linuxacademy.com

Kubernetes is a platform for managingcontainerized
workloads.Kubernetes orchestrates computing,
networkingand storage to provide a seamless portability
across infrastructure providers.

Nodes
```
$ kubectl get nodes
$ kubectl get nodes -o wide
$ kubectl describe nodes
$ kubectl get nodes -o yaml
$ kubectl get nodes --selector =[label _name]
$ kubectl top nodes [ node_name]
$ kubectl get nodes -o jsonpath='{.items[*].statusaddresses[?(@.type==" External IP")].address}'
```

Pods
```
$ kubectl get pod
$ kubectl get pod -o wide
$ kubectl describe pod
$ kubectl get pod --show-labels
$ kubectl get pod -l app=nginx
$ kubectl get pod -o yaml
$ kubectl get pod [pod_name] -o yaml --export
$ kubectl get pod [pod_name] -o yaml --export > nameoffile.yaml
$ kubectl get pod --field -selectorstatus.phase=Running
$ kubectl describe pod [podname]
```
Namespaces
```
$ kubectl get namespaces
$ kubectl get ns -o yaml
$ kubectl describe ns

kubectl creare namespaces {NAMESPACE}
```
Deployments
```
$ kubectl create deployment NAME --image=image [--dry-run] [options]
$ kubectl edit deployment [NAME]
$ kubectl get deployment
$ kubectl describe deployment
$ kubectl get deployment [NAME] -o wide
$ kubectl get deployment [NAME] -o yaml
$ kubectl delete deployment [NAME]
```
Services
```
$ kubectl get service
$ kubectl describe service [SERVICENAME]
$ kubectl get service [SERVICENAME] -o wide
$ kubectl get service [SERVICENAME] -o yaml
$ kubectl get service --show-labels
```
DaemonSets
```
$ kubectl get ds
$ kubectl get ds --all-namespaces
$ kubectl describe ds [daemonset _name] - n
[namespace_name]
$ kubectl get ds [ds_name] -n [ ns_name] -o yaml
```
Events
```
$ kubectl get events
$ kubectl get events -n kube-system
$ kubectl get events -w
```
Logs
```
$ kubectl logs [pod_name]
$ kubectl logs --since=1h [ pod_name]
$ kubectl logs --tail=20 [ pod_name]
$ kubectl logs -f -c [container _name] [pod_name]
$ kubectl logs [ pod_name] > pod.log
```
Service Accounts
```
$ kubectl get sa
$ kubectl get sa -o yaml
$ kubectl get serviceaccount s default -o yaml > . /sa.yaml
$ kubectl replace serviceaccount default -f. /sa.yaml
```
ReplicaSets
```
$ kubectl get replicaset
$ kubectl describe replicaset
$ kubectl get replicaset -o wide
$ kubectl get replicaset -o yaml
Roles
$ kubectl get roles --all-namespaces
$ kubectl get roles --all-namespaces -o yaml
Secrets
$ kubectl get secret
$ kubectl get secret --all -namespaces
$ kubectl get secret -o yaml
ConfigMaps
$ kubectl get cm
$ kubectl get cm --all -namespaces
$ kubectl get cm --all -namespaces -o yaml
Ingress
$ kubectl get ing
$ kubectl get ing --all -namespaces
PersistentVolume
$ kubectl get pv
$ kubectl describe pv
PersistentVolumeClaim
$ kubectl get pvc
$ kubectl describe pvc 

kubectl get all | grep LABEL

$ kubectl exec -it [pod name] -- bin/bash or -- bin/sh inside the container

$ kubectl apply -f https://k8s.io/examples/controllers/nginx-deployment.yaml
$ kubectl apply -f [filename]

kubectl apply create or update

kubectl delete -f [filename]
```
## CONFIGURATION FILE ##

each configuration file has 3 parts

1. Metadata : name
2. Specification attribute of "spec" are specific to the kind
3. Status automatically generates and adde by kubernetes desired state and actual state

store the config file with your code or own git repository

deployment manages a replicaset and re??ica set manages a POD and pod is abstarction of containers

LABELS AND SELECTOR

metadata part contains the labels and specs part contains the selectors

continer port has match with target port of the service


