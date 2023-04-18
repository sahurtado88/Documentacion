# Prometheus

Is an open source system monitoring and alerting toolkit with an active ecosystem

uses a multidimensional dat amodel with time series data identified by metric name and key/value pairs

EX: http_request_total {method="get"}

- uses a very simple query language "PromQL"
- no reliance on distributed storage; single server nodes are autonomous

## Architecture of prometheus server

![](https://prometheus.io/assets/architecture.png)

The Prometheus ecosystem consists of multiple components, many of which are optional:

- the main Prometheus server which scrapes and stores time series data
- client libraries for instrumenting application code
- a push gateway for supporting short-lived jobs
- special-purpose exporters for services like HAProxy, StatsD, Graphite, etc.
- an alertmanager to handle alerts
- various support tools

Most Prometheus components are written in Go, making them easy to build and deploy as static binaries.

![](./Images/5stagesofmetricsmonitoring.png)

![](./Images/pushvspull.png)

## Dimensional Data model
```
<aggregators> <functions> metric_name{key="value", ...}

```

## Overview of the prometheus service package

- **Console_libraries** prometheus expresion browser
- **Consoles** prometheus expresion browser
- **./tsdb** tool interact with time series
- **./promt** run queries from command line
- **prometheus.yml** configurations of prometheus
- **./prometheus**

```
./prometheus --storage.tsdb.retention.time=13d --config.file="./prometheus.yml" &
```

## Node exporter

La herramienta de node exporter en Prometheus también es conocida como Prometheus Node Exporter y una de sus características principales es que puede ser implementada en los procesos para obtener métricas de los nodos e información del sistema.

Además de esto, la opción de node exporter en Prometheus se encarga de ofrecer información útil para supervisar el rendimiento de un servidor o de un nodo.

```
kill -HUP %numero proceso prometheus para cargar nueva configuracion
```
