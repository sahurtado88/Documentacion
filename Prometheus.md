# Prometheus

is an open source system monitoring and alerting toolkit with an active ecosystem

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

