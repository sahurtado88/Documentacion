# Istio

Istio Kubernetes es una red (o malla) de servicio que proporciona gestión de tráfico, aplicación de políticas de complimiento y recolección de métricas. Una malla de servicios (“Service mesh”) es una capa de infraestructura dedicada para gestionar la comunicación de servicio a servicio.

En Istio Kubernetes, esto se consigue configurando proxies basados en “Envoy”, que es añadido a los pods como container “sidecar”, e impone el flujo natural del tráfico al backend apropiado, mientras inhabilita a otros servicios que se comuniquen con este. Además, los servicios no se comunican directamente, sino que lo hacen a través de sus contenedores sidecar (“Envoy”). El responsable de este proceso es el “Pilot”

service Mesh: is an extra layer of software you deploy alongside your cluster

Istio sidecar injection

```
kubectl label namespace <deafult> istio-injection=enabled
```

Istio simplifies Envoy, istio understands Kubernetes