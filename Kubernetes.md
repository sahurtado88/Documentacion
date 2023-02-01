# Kubernetes

Open source container orchestration tool

developed by google
helps manage containerized applications in differen deployment environment

high availability or no dowtime

scalability or high performance

disaster recovery backuo and restore

## KUBERNETES ARCHITECTURE

- api server: entrypoint to K8s cluster, expose Kubernetes API

- controll manager: keeps track of whats happening in the cluster

- Scheduler: ensures pods placement

- etcd: kubernetes backing store, key value store for critical cluster info

NODE PROCESS

each node has multiple POD in it

3 processes must be installed on every node

Worker Node do the actual work

  - CONTAINER RUNTIME (for example docker)
  - KUBELET interact with both the container runtime and node, starts the pod with a container inside
  - KUBEPROXY forwards the request, allow network communications

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

## YAML in kubernetes

alway have 4 fields
- apiVersion: version create object (v1, apps/v1)
- kind: refers type of objects (pod, replicaset, deployment, service)
- metadata: is data about the object form or dictionary (name, labels) you can specify names or lables that k8s expect
- specs: aditional information to k8s esepcification depend on object (dictionary) - is a item in the list

is recommended two spaces to indent

**NODES**
Node=virtual or pysical machine

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
  label:
    app:nginx
    tier: frontend
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80
  - name: busybox
    image: busybox
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

### Service Types
- node port (range 30000-32767)
  - Accesible from outside cluster
  - Creates cluster wide port
  - nodexport exposed to all nodes in cluster
- clusterIP:
  - Default kind of service
  - Only accesible from within cluster
  - By default protocol is TCP
- load balancer
  - Cloud specific implementation
  - Accesible from outside cluster
  - Has DNS name
  - SSL termination, WAF integration, Access Logs, Health Check, etc


#### **ClusterIP**
A ClusterIP service is the default Kubernetes service. It gives you a service inside your cluster that other apps inside your cluster can access. There is no external access.

The YAML for a ClusterIP service looks like this:
```
apiVersion: v1
kind: Service
metadata:  
  name: my-internal-service
spec:
  selector:    
    app: my-app
  type: ClusterIP
  ports:  
  - name: http
    port: 80
    targetPort: 80
    protocol: TCP

```
If you can’t access a ClusterIP service from the internet, why am I talking about it? Turns out you can access it using the Kubernetes proxy!

Start the Kubernetes Proxy:
```
$ kubectl proxy --port=8080
```
Now, you can navigate through the Kubernetes API to access this service using this scheme:

http://localhost:8080/api/v1/proxy/namespaces/<NAMESPACE>/services/<SERVICE-NAME>:<PORT-NAME>/

So to access the service we defined above, you could use the following address:

http://localhost:8080/api/v1/proxy/namespaces/default/services/my-internal-service:http/

- When would you use this?
There are a few scenarios where you would use the Kubernetes proxy to access your services.

  Debugging your services, or connecting to them directly from your laptop for some reason

  Allowing internal traffic, displaying internal dashboards, etc.
  Because this method requires you to run kubectl as an authenticated user, you should NOT use this to expose your service to the internet or use it for production services.

#### NodePort
A NodePort service is the most primitive way to get external traffic directly to your service. NodePort, as the name implies, opens a specific port on all the Nodes (the VMs), and any traffic that is sent to this port is forwarded to the service.

The YAML for a NodePort service looks like this:
```
apiVersion: v1
kind: Service
metadata:  
  name: my-nodeport-service
spec:
  selector:    
    app: my-app
  type: NodePort
  ports:  
  - name: http
    port: 80
    targetPort: 80
    nodePort: 30036
    protocol: TCP
```

Basically, a NodePort service has two differences from a normal “ClusterIP” service. First, the type is “NodePort.” There is also an additional port called the nodePort that specifies which port to open on the nodes. If you don’t specify this port, it will pick a random port. Most of the time you should let Kubernetes choose the port; as 
thockin
 says, there are many caveats to what ports are available for you to use.

- When would you use this?
  There are many downsides to this method:

  You can only have one service per port
  You can only use ports 30000–32767
  If your Node/VM IP address change, you need to deal with that
  For these reasons, I don’t recommend using this method in production to directly expose your service. If you are running a service that doesn’t have to be always available, or you are very cost sensitive, this method will work for you. A good example of such an application is a demo app or something temporary.

#### LoadBalancer
A LoadBalancer service is the standard way to expose a service to the internet. On GKE, this will spin up a Network Load Balancer that will give you a single IP address that will forward all traffic to your service.

- When would you use this?
  If you want to directly expose a service, this is the default method. All traffic on the port you specify will be forwarded to the service. There is no filtering, no routing, etc. This means you can send almost any kind of traffic to it, like HTTP, TCP, UDP, Websockets, gRPC, or whatever.

  The big downside is that each service you expose with a LoadBalancer will get its own IP address, and you have to pay for a LoadBalancer per exposed service, which can get expensive!

#### Ingress
Unlike all the above examples, Ingress is actually NOT a type of service. Instead, it sits in front of multiple services and act as a “smart router” or entrypoint into your cluster.

You can do a lot of different things with an Ingress, and there are many types of Ingress controllers that have different capabilities.

The default GKE ingress controller will spin up a HTTP(S) Load Balancer for you. This will let you do both path based and subdomain based routing to backend services. For example, you can send everything on foo.yourdomain.com to the foo service, and everything under the yourdomain.com/bar/ path to the bar service.

The YAML for a Ingress object on GKE with a L7 HTTP Load Balancer might look like this:
```
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: my-ingress
spec:
  backend:
    serviceName: other
    servicePort: 8080
  rules:
  - host: foo.mydomain.com
    http:
      paths:
      - backend:
          serviceName: foo
          servicePort: 8080
  - host: mydomain.com
    http:
      paths:
      - path: /bar/*
        backend:
          serviceName: bar
          servicePort: 8080
```
- When would you use this?
Ingress is probably the most powerful way to expose your services, but can also be the most complicated. There are many types of Ingress controllers, from the Google Cloud Load Balancer, Nginx, Contour, Istio, and more. There are also plugins for Ingress controllers, like the cert-manager, that can automatically provision SSL certificates for your services.

  Ingress is the most useful if you want to expose multiple services under the same IP address, and these services all use the same L7 protocol (typically HTTP). You only pay for one load balancer if you are using the native GCP integration, and because Ingress is “smart” you can get a lot of features out of the box (like SSL, Auth, Routing, etc)


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

kubectl create -f daemon-set-definition.yaml

kubectl get daemonsets

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

scale replica set
- chenge replicaset yaml and run kubectl replace -f replicaset.yanl
- kubectl scale --replicas=6 -f replicaset.yaml
- kubectl scale --replicas=6 replicaset myapp-replicaset

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


## Commands 

What is Kubernetes?

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

kubectl get pods --all-namespaces

$ kubectl exec -it [pod name] -- bin/bash or -- bin/sh inside the container

$ kubectl apply -f https://k8s.io/examples/controllers/nginx-deployment.yaml
$ kubectl apply -f [filename]

kubectl apply create or update

kubectl delete -f [filename]

kubectl replace --froce -f nginx.yaml  delte and replace pod nginx in this case

kubectl get pods --selector app=App1

kubectl get all --selector env=prod --no-headers | wc -l exact number of object with  env=rod

kubectl get all --selector env=prod,bu=finance,tier=frontend

kubectl describe node Node-Name | grep Taint see the taints aplied in the node

kubectl taint node node-name key-values:taint-effect  | apply a taint to a node

kubectl taint nodes controlplane node-role.kubernetes.io/control-plane:NoSchedule-  remove the taint on controlplane

kubectl label nodes <node-name> <label-key>=<label-value>

```
## CONFIGURATION FILE ##

each configuration file has 3 parts

1. Metadata : name
2. Specification attribute of "spec" are specific to the kind
3. Status automatically generates and adde by kubernetes desired state and actual state

store the config file with your code or own git repository

deployment manages a replicaset and reĺica set manages a POD and pod is abstarction of containers

LABELS AND SELECTOR

metadata part contains the labels and specs part contains the selectors

continer port has match with target port of the service

## Deployment strategy

- recreate (application down)
- rolling update (default deployment strategy)



### TIPS
Tip of the day: if you want to improve the speed  that application takes to start in any kubernetes cluster not hosted in cloud you can set up the following flags in the kubelet
--serialize-image-pulls (by default true which means all images are downloaded one after another)
--image-pull-progress-deadline (by default unset which mean there is not timeout configured)
if you want to set a max limit in the qty of images downloaded at the same time you can set at docker daemon
max-concurrent-downloads
this doesn't applied for cloud environment since this setting are already enabled by default , for example in the amazon eks ami image :
https://github.com/awslabs/amazon-eks-ami/blob/master/files/docker-daemon.json
https://github.com/awslabs/amazon-eks-ami/blob/master/files/kubelet-config.json

# Certified Kubernetes Administrator (CKA) Udemy Course

## Cluster Arquitecture

### Worker  NODES

3 processes must be installed on every node

Worker Node do the actual work

  - CONTAINER RUNTIME (for example docker)
  - KUBELET interact with both the container runtime and node, starts the pod with a container inside
    - register node, create pods, monitor node and pods
  - KUBEPROXY forwards the request, allow network communications

### MASTER NODES

  4 processes run on every master node

  - API SERVER is like a cluster gateway queries and updates acts as a gatekeeper for authentication
   - API SERVER is  responsible for ( Authenticate User, Validate request, retrieve data, Update ETCD, scheduler and kubelet)
  
  - SCHEDULER where to put the POD A scheduler watches for newly created Pods that have no Node assigned. For every Pod that the scheduler discovers, the scheduler becomes responsible for finding the best Node for that Pod to run on. The scheduler reaches this placement decision taking into account the scheduling principles described below.
    - filter nodes
    - rank nodes
  
  - CONTROLLER MANAGER in Kubernetes, a controller is a control loop that watches the shared state of the cluster through the apiserver and makes changes attempting to move the current state towards the desired state. Examples of controllers that ship with Kubernetes today are the replication controller, endpoints controller, namespace controller, and serviceaccounts controller. 
  detects cluster state changes

  - ETCD etcd is a consistent and highly-available key value store used as Kubernetes' backing store for all cluster data.
    - cluster brain, cluster changes get stored in the key value store
    - ETCD port  listens 2379
    - application data is not stored in ETCD

## Scheduling

### Manual scheduling

add node name in pod definition if dont have scheduler

```
apiVersion: v1
kind: Pod
metadata:
  name: ngnix
  labels:
    name: nginx
spec:
  containers:
  -  name: nginx
     image: nginx
     ports:
       -  containerPort: 8080
  nodeName: node02     
```
binding object mimic shceduler does

```
apiVersion: v1
kind: binding
metadata:
  name: nginx
target:
  apiVersion: v1
  kind: Node
  name: node02  

```

### Label and selectors

Labels are properties attach to each item, selector help to filters this items
annotation are use for other purpouse, detail, version, etc

### Taints and Tolerations

Node affinity is a property of Pods that attracts them to a set of nodes (either as a preference or a hard requirement). Taints are the opposite -- they allow a node to repel a set of pods.

Tolerations are applied to pods. Tolerations allow the scheduler to schedule pods with matching taints. Tolerations allow scheduling but don't guarantee scheduling: the scheduler also evaluates other parameters as part of its function.

Taints and tolerations work together to ensure that pods are not scheduled onto inappropriate nodes. One or more taints are applied to a node; this marks that the node should not accept any pods that do not tolerate the taints.


taint are set on node and tolerations are set on pods

```
kubectl taint nodes node-name key-values:taint-effect

kubectl taint nodes node01 app=blue :NoSchedule

```
**Taint effects:**
- NoSchedule:

 The Kubernetes scheduler will only allow scheduling pods that have tolerations for the tainted nodes.
- PreferNoSchedule

The Kubernetes scheduler will try to avoid scheduling pods that don’t have tolerations for the tainted nodes.
- NoExecute

Kubernetes will evict the running pods from the nodes if the pods don’t have tolerations for the tainted nodes.

**Tolerations - PODS**

```
apiVersion:
kind: Pod
metadata:
  name: myapp-pod
spec:
  containers:
  - name: nginx-container
  image: nginx

  tolerations:
  - key: "app"
  operator: "Equal"
  value: "blue"
  effect: "NoSchedule  
```

toleration not implify that node only be deploy in taint node for thath task your need node affinity

### Node Selectors

label Nodes
```
kubectl lable nodes <node-name> <label-key>=<label-value>

kubectl label node node-1 size=Large

```

now the node is labeled yo can use this to selector in pod


```
apiVersion:
kind: Pod
metadata:
  name: myapp-pod
spec:
  containers:
  - name: data-processor
  image: data-processor
  nodeSelector:
    size: Large
 
```

Node selector Limitations you only one label dont have OR  NOT in the logic

### Node Affinity

Node affinity is conceptually similar to nodeSelector, allowing you to constrain which nodes your Pod can be scheduled on based on node labels. There are two types of node affinity:

- requiredDuringSchedulingIgnoredDuringExecution: The scheduler can't schedule the Pod unless the rule is met. This functions like nodeSelector, but with a more expressive syntax.
- preferredDuringSchedulingIgnoredDuringExecution: The scheduler tries to find a node that meets the rule. If a matching node is not available, the scheduler still schedules the Pod.
Note: In the preceding types, IgnoredDuringExecution means that if the node labels change after Kubernetes schedules the Pod, the Pod continues to run.

You can specify node affinities using the .spec.affinity.nodeAffinity field in your Pod spec.

You can use the operator field to specify a logical operator for Kubernetes to use when interpreting the rules. You can use In, NotIn, Exists, DoesNotExist, Gt and Lt.

NotIn and DoesNotExist allow you to define node anti-affinity behavior. Alternatively, you can use node taints to repel Pods from specific nodes.

```
apiVersion: v1
kind: Pod
metadata:
  name: with-node-affinity
spec:
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
        - matchExpressions:
          - key: topology.kubernetes.io/zone
            operator: In
            values:
            - antarctica-east1
            - antarctica-west1
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 1
        preference:
          matchExpressions:
          - key: another-node-label-key
            operator: In
            values:
            - another-node-label-value
  containers:
  - name: with-node-affinity
    image: registry.k8s.io/pause:2.0

```

### Resource requeriments limits

by default the limits of CPU is 1vCPU and 512 Mi

Throttle

terminate

What is OOMKilled (exit code 137) The OOMKilled error, also indicated by exit code 137, means that a container or pod was terminated because they used more memory than allowed. OOM stands for “Out Of Memory”. Kubernetes allows pods to limit the resources their containers are allowed to utilize on the host machine.

CPU throttling is an approach to automatically slow down the CPU so as to consume fewer resources, and is a side effect of setting resource usage limits. Whenever an application is running close to the maximum CPU utilization that it’s permitted, it is throttled. This cuts down the CPU cycles and slows down the response rate.

When a pod is created the containers are assigned a default CPU request of .5 and memory of 256Mi". For the POD to pick up those defaults you must have first set those as default values for request and limit by creating a LimitRange in that namespace.

```
apiVersion: v1
kind: LimitRange
metadata:
  name: mem-limit-range
spec:
  limits:
  - default:
      memory: 512Mi
    defaultRequest:
      memory: 256Mi
    type: Container
```
```
apiVersion: v1
kind: LimitRange
metadata:
  name: cpu-limit-range
spec:
  limits:
  - default:
      cpu: 1
    defaultRequest:
      cpu: 0.5
    type: Container
```


### Edit a POD
Remember, you CANNOT edit specifications of an existing POD other than the below.

- spec.containers[*].image
- spec.initContainers[*].image
- spec.activeDeadlineSeconds
- spec.tolerations

For example you cannot edit the environment variables, service accounts, resource limits (all of which we will discuss later) of a running pod. But if you really want to, you have 2 options:

1. Run the kubectl edit pod <pod name> command.  This will open the pod specification in an editor (vi editor). Then edit the required properties. When you try to save it, you will be denied. This is because you are attempting to edit a field on the pod that is not editable.


A copy of the file with your changes is saved in a temporary location as shown above.

You can then delete the existing pod by running the command:

kubectl delete pod webapp



Then create a new pod with your changes using the temporary file

kubectl create -f /tmp/kubectl-edit-ccvrq.yaml



2. The second option is to extract the pod definition in YAML format to a file using the command

kubectl get pod webapp -o yaml > my-new-pod.yaml

Then make the changes to the exported file using an editor (vi editor). Save the changes

vi my-new-pod.yaml

Then delete the existing pod

kubectl delete pod webapp

Then create a new pod with the edited file

kubectl create -f my-new-pod.yaml



### Edit Deployments
With Deployments you can easily edit any field/property of the POD template. Since the pod template is a child of the deployment specification,  with every change the deployment will automatically delete and create a new pod with the new changes. So if you are asked to edit a property of a POD part of a deployment you may do that simply by running the command

kubectl edit deployment my-deployment

The status OOMKilled indicates that it is failing because the pod ran out of memory. Identify the memory limit set on the POD.

### Static Pods

Static Pods are managed directly by the kubelet daemon on a specific node, without the API server observing them. Unlike Pods that are managed by the control plane (for example, a Deployment); instead, the kubelet watches each static Pod (and restarts it if it fails).

Static Pods are always bound to one Kubelet on a specific node.

The kubelet automatically tries to create a mirror Pod on the Kubernetes API server for each static Pod. This means that the Pods running on a node are visible on the API server, but cannot be controlled from there. The Pod names will be suffixed with the node hostname with a leading hyphen.

https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/

Use case
- controller-manager, apiserver in master node

### static POD vs Daemos Set

|Static POD| DaemonSet|
|-|-|
|Created by kubelet| created by Kube-Api server (DaemonSet Controller|
|Deploy Control plane component as Satatic pod| Deploy monitoring agents, logging agents and nodes|
| both are Ignore by the kube-Scheduler|

Create a static pod named static-busybox that uses the busybox image and the command sleep 1000:

kubectl run --restart=Never --image=busybox static-busybox --dry-run=client -o yaml --command -- sleep 1000 > /etc/kubernetes/manifests/static-busybox.yaml

Edit the image on the static pod to use busybox:1.28.4

kubectl run --restart=Never --image=busybox:1.28.4 static-busybox --dry-run=client -o yaml --command -- sleep 1000 > /etc/kubernetes/manifests/static-busybox.yaml

### Delete static pod

If you don't know the IP of the node, run the kubectl get nodes -o wide command and identify the IP.
Then, SSH to the node using that IP. For static pod manifest path look at the file /var/lib/kubelet/config.yaml on node01

First, let's identify the node in which the pod called static-greenbox is created. To do this, run:

kubectl get pods --all-namespaces -o wide  | grep static-greenbox

From the result of this command, we can see that the pod is running on node01.


Next, SSH to node01 and identify the path configured for static pods in this node.
Important: The path need not be /etc/kubernetes/manifests. Make sure to check the path configured in the kubelet configuration file.

ssh node01

ps -ef |  grep /usr/bin/kubelet



grep -i staticpod /var/lib/kubelet/config.yaml

Here the staticPodPath is /etc/just-to-mess-with-you


Navigate to this directory and delete the YAML file:

 rm -rf greenbox.yaml