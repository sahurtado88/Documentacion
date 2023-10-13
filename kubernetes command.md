- Kubectl top node

list all running nodes and their resource utilization (CPU and memory)

- kubectl top pod
- kubectl top pod -all-namespaces

list all running pods and their resource utilization

- kubectl logs [pod name]
- kubectl logs- f [] ver logs de manera foreground
- kubectl logs [POD name] [-c CONTAINER name] [--follow] [flags]

- kubectl exec []
- kubectl exec -it [container name] -- /bin/bash
execute command inside container