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

## Prometheus as a Systemd Service

- Prometheus user
    ```
    sudo useradd -r -s /bin/false prometheus
    ```

- New directories
    - sudo mkdir /prom_data
    - sudo mkdir /etc/prometheus
    - sudo chown prometheus:prometheus /prom_data
- Extract and move files
    - cd prometheus*
    - mv console* , prometheus.yml /etc/prometheus
    - sudo chown -R prometheus:prometheus /etc/prometheus
- Move binaries
    - sudo mv prom* /usr/local/bin
    - sudo chown prometheus:prometheus /usr/local/bin/prom* 
- Create service file
    - sudo vim /etc/systemd/system/<service_name>.service

```
[Unit]
Description=Prometheus
Wants=network-online.target
After=neteork-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple

ExecStart=/usr/local/bin/prometheus \
  --config.file /etc/prometheus/prometheus.yml \
  --storage.tsdb.path /prom_data \
  --web.console.templates=/etc/prometheus/consoles \
  --web.console.libraries=/etc/prometheus/console_libraries \
  --web.enable-lifecycle


[Install]
WantedBy=multi-user.target

```

## Node Exporter as a Systemd Service

- Nodeexporter user

  sudo useradd -r -s /bin/false nodeexporter
- move binaries
    - sudo mv node* /usr/local/bin
    - sudo chown nodeexporter:nodeexporter /usr/local/bin/node*
- create service file
    - sudo vim /etc/systemd/system/\<service_name>.service

```
[Unit]
Description=NodeExporter
Wants=network-online.target
After=network-online.target

[Service]
User=nodeexporter
Group=nodeexporter
Type=simple

ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target
```

sudo systemctl daemon-reload
sudo systemctl start nodeexporter
sudo systemctl status nodeexporter

## Prometheus as a Docker Service


## Metrics

### Prometheus Metrics Format

- Summary: Tracks the size and number of events
    - values must be non negative
    - used to track latency
    - obsrve()
- Gauge: Can go both up and down
    - essentially a snapshot of the current state
    - inc(), dec(), set()
- Counter: Goes up and resets when the process resets
    - Needed to track rates
    - track how often a specific code path is executed
    - inc()  

- Histagram: track the size and number of events with buckets
    - Used to tracks the size and number of events with buckets
    - bucket = counter set

### Service types

- Online-serving systems: Has a human or other service waitin on a response
    - key Metrics
        - Request
        - Errors
        - Duration
- Offline-serving systems: Has no response requests- usaually pipelines
    - Key metrics:
        - Utilization
        - Saturation
        - Errors
- Batch jobs:Run on a regular schedule, use the push gateway
    - key metrics:
        - Total run duration
        - Duration per Stage
        - Job success Timestamp

### Metric Name Structure

- Do
    - Format: library_name_unit_suffix
    - snake_case
    - Be specific e.g cron_job_duration
    - Start with a letter
    - Use base units w/ no prefix. Prometheus uses base units
- Don'ts
    - Use names already in use e.g process
    - Use official suffixes: _total, _count, _sum, _bucket
    - start with an underscore or use colons

### Limitations to monitoring metrics

- There's a poinnt where operational and resource cost outweigh the benefits of instrumentions

RESOURCE COST(%)= Metric INSTANCES /SERVER Threshold *100

- Cardinality is the amount of metrics that you have

![](./Images/cardinality.png)

## Infraestrucutre Monitoring

There are a number of libraries and servers which help in exporting existing metrics from third-party systems as Prometheus metrics. This is useful for cases where it is not feasible to instrument a given system with Prometheus metrics directly (for example, HAProxy or Linux system stats).

Exporters job is to basically translte or act like proxy between promethesus sytem an third party system

[exporters prometheus](https://prometheus.io/docs/instrumenting/exporters/)

### WMI Exporter Monitoring Windows Systems

https://github.com/prometheus-community/windows_exporter

Configure the Prometheus WMI exporter to collect Windows system metrics.

The Prometheus WMI exporter runs as a Windows service. You configure the metrics that you want to monitor by enabling collectors.

### Docker Engine Metrics

Prometheus is an open-source systems monitoring and alerting toolkit. You can configure Docker as a Prometheus target. This topic shows you how to configure Docker, set up Prometheus to run as a Docker container, and monitor your Docker instance using Prometheus.

Currently, you can only monitor Docker itself. You cannot currently monitor your application using the Docker target.

To configure the Docker daemon as a Prometheus target, you need to specify the metrics-address. The best way to do this is via the daemon.json, which is located at one of the following locations by default. If the file does not exist, create it.

Linux: /etc/docker/daemon.json
Windows Server: C:\ProgramData\docker\config\daemon.json
Docker Desktop for Mac / Docker Desktop for Windows: Click the Docker icon in the toolbar, select Settings, then select Docker Engine.
If the file is currently empty, paste the following:

{
  "metrics-addr" : "127.0.0.1:9323"
}

If the file is not empty, add the new key, making sure that the resulting file is valid JSON. Be careful that every line ends with a comma (,) except for the last line.

Save the file, or in the case of Docker Desktop for Mac or Docker Desktop for Windows, save the configuration. Restart Docker.

Docker now exposes Prometheus-compatible metrics on port 9323.

[https://docs.docker.com/config/daemon/prometheus/ ](https://docs.docker.com/config/daemon/prometheus/)


__________________

DEV/QA/STAG

Si deseas realizar dos consultas distintas, una con count() y otra con sum() en Prometheus, puedes combinarlas en una sola consulta utilizando operadores y agrupadores. Aquí tienes un ejemplo genérico:


    sum(metrico_total) by (etiqueta_comun) + count(metrico_distinto) by (etiqueta_comun)
En este ejemplo:

metrico_total y metrico_distinto son métricas diferentes que podrían representar diferentes tipos de datos.
etiqueta_comun es una etiqueta que ambas métricas comparten y por la cual deseas agrupar los resultados.
Asegúrate de reemplazar metrico_total y metrico_distinto con las métricas reales que estás utilizando y ajusta etiqueta_comun según las etiquetas compartidas que quieras usar para agrupar.

Aquí hay un ejemplo más concreto utilizando métricas de Kubernetes:


    sum(container_cpu_usage_seconds_total) by (namespace) + count(kube_pod_info) by (namespace)
    
En este caso, la consulta suma el tiempo total de CPU utilizado por los contenedores y cuenta el número de pods, ambos agrupados por el espacio de nombres (namespace).

Ajusta las consultas según tus necesidades específicas y las métricas que estés utilizando en tu entorno.