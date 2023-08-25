# HELM

Helm is an application package manager for Kubernetes that you use to standardize and simplify the deployment of cloud-native applications on Kubernetes.

Helm is a package manager for Kubernetes that combines all your application's resources and deployment information into a single deployment package.

Helm uses four components to manage application deployments on a Kubernetes cluster.

![](https://docs.microsoft.com/en-us/learn/modules/aks-app-package-management-using-helm/media/2-helm-components.svg)

![](./Images/helmcomponents.png)

- **A Helm client**

The Helm client is a client installed binary responsible for creating and submitting the manifest files required to deploy a Kubernetes application. The client is responsible for the interaction between the user and the Kubernetes cluster.

The Helm client is available for all major operating systems and is installed on your client PC. In Azure, the Helm client is pre-installed in the Cloud Shell and supports all security, identity, and authorization features of Kubernetes.

- **Helm charts**

A Helm chart is a templated deployment package that describe a related set of Kubernetes resources. It contains all the information required to build and deploy the manifest files for an application to run on a Kubernetes cluster.

A Helm chart consists of several files and folders to describe the chart. Some of the components are required, and some are optional. What you choose to include is based on the apps configuration requirements. Here is a list of files and folders with the required items in bold.

|File / Folder	|Description|
|-|-|
|**Chart.yaml**|A YAML file containing the information about the chart.|
|**values.yaml**|	The default configuration values for the chart.|
|**templates/**|	A folder that contains the deployment templates for the chart.|
|LICENSE|	A plain text file that contains the license for the chart.|
|README.md	|A markdown file that contains instructions on how to use the chart.|
|values.schema.json**|	A schema file for applying structure on the values.yaml file.|
|charts/	|A folder that contains all the subcharts to the main chart.|
|crds/	|Custom Resource Definitions.|
|templates/Notes.txt|	A text file that contains template usage notes|

- **Helm releases**

A Helm release is the application or group of applications deployed using a chart. Each time you install a chart, a new instance of an application is created on the cluster. Each instance has a release name that allows you to interact with the specific application instance.


- **Helm repositories**

A Helm repository is a dedicated HTTP server that stores information on Helm charts. The server serves a file that describes charts and where to download each chart.

The Helm project hosts many public charts, and many repositories exist from which you can reuse charts. Helm repositories simplify the discoverability and reusability of Helm packages.

## The benefits of using Helm
Helm introduces a number of benefits that simplify application deployment and improves productivity in the development and deployment lifecycle of cloud-native applications. With Helm, you have application releases that are:

- Repeatable

- Reliable

- Manageable in multiple and complex environments

- Reusable across different development teams.

## How does Helm process a chart?
The Helm client implements a Go language-based template engine that parses all available files in a chart's folders. The template engine creates Kubernetes manifest files by combining the templates in the chart's templates/ folder with the values from the Chart.yaml and values.yaml files.

Once the manifest files are available, the client can install, upgrade, and delete the application defined in the generated manifest files.

## How to define a Chart.yaml file
The Chart.yaml is one of the required files in a Helm chart definition and provides information about the chart. The contents of the file consists of three required and various optional fields.

The three required fields are:

The apiVersion . This value is the chart API version to use. You set the version to v2 for Charts that use Helm 3.

The name of the chart.

The version of the chart. The version number uses semantic versioning 2.0.0 and follows the MAJOR.MINOR.PATCH version number notation.

Here is an example of a basic Chart.yaml file:

```

apiVersion: v2
name: webapp
description: A Helm chart for Kubernetes

# A chart can be either an 'application' or a 'library' chart.
#
# Application charts are a collection of templates that can be packaged into versioned archives
# to be deployed.
#
# Library charts provide useful utilities or functions for the chart developer. They're included as
# a dependency of application charts to inject those utilities and functions into the rendering
# pipeline. Library charts do not define any templates and therefore, cannot be deployed.
type: application

# This is the chart version. This version number should be incremented each time you make changes
# to the chart and its templates, including the app version.
version: 0.1.0

# This is the version number of the application being deployed. This version number should be
# incremented each time you make changes to the application.
appVersion: 1.0.0

```

## How to define a chart template
A Helm Chart template is a file describes different deployment type manifest files. Chart templates are written in the Go template language and provides additional template functions to automate the creation of Kubernetes object manifest files.

Template files are stored in the templates/ folder of a chart and processed by the template engine to create the final object manifest.

For example, the development team uses the following deployment manifest file to deploy the drone tracking website.
 
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: webapp
  labels:
    app: dronetracker
    service: webapp
spec:
  replicas: 1
  selector:
    matchLabels:
      service: webapp
  template:
    metadata:
      labels:
        app: dronetracker
        service: webapp
    spec:
      containers:
        - name: webapp
          image: my-acr-registry.azurecr.io/webapp:linux-v1
          imagePullPolicy: Always
          resources:
            requests:
              cpu: 100m
              memory: 128Mi
            limits:
              cpu: 250m
              memory: 256Mi
          ports:
            - name: http
              containerPort: 80
              protocol: TCP
```

For example, the development team wants to allow for install time configuration values. The container registry, docker release tag, and Kubernetes pull policy should be configurable in the template. To allow for this configuration, you can modify the existing manifest file with the following example template syntax.

```
apiVersion: apps/v1
kind: Deployment
metadata:
  ...
spec:
  ...
  template:
    ...
    spec:
      containers:
        - name: webapp
          image: {{ .Values.registry }}/webapp:{{ .Values.dockerTag }}
          imagePullPolicy: {{ .Values.pullPolicy }}
          resources:
          ...
          ports:
            ...
```

Notice the use of the {{.Values.<property\>}} syntax. The syntax allows you to create placeholders for each custom value.

The process of creating Helm charts by hand is tedious. An easy way to create a Helm chart is to use the helm create command to create a new Helm chart. You then customize the autogenerated files to match your application's requirements.


## How to define a values.yaml file
You use chart values to customize the configuration of a Helm chart. Chart values can either be predefined or supplied by the user at the time of deploying the chart.

A **predefined** value is a case-sensitive value that is predefined in the context of a Helm Chart and can't be changed by a user. Keep in mind that you can only reference well-known fields. You can think of predefined values as constants to use in the templates you create.

A **supplied** value allows you to process arbitrary values in the chart template. The values.yaml file defines these values.

In the example, the development team allows for three configurable values. A container registry name, a docker release tag, and a Kubernetes pull policy.

```
apiVersion: apps/v1
kind: Deployment
    ...
      containers:
        - name: webapp
          image: {{.Values.registry}}/webapp:{{.Values.dockerTag}}
          imagePullPolicy: {{.Values.pullPolicy}}
          resources:
          ...
```

Here is an example of the values.yaml file

```
apiVersion: v2
name: webapp
description: A Helm chart for Kubernetes
...
registry: "my-acr-registry.azurecr.io"
dockerTag: "linux-v1"
pullPolicy: "Always"

```

Once the template engine applies the values, the final result will look like this example:

```
apiVersion: apps/v1
kind: Deployment
   ...
     containers:
       - name: webapp
         image: my-acr-registry.azurecr.io/webapp:linux-v1
         imagePullPolicy: Always
         resources:
         ...
```

## How to use a Helm repository
A Helm repository is a dedicated HTTP server that stores information on Helm charts. You configure Helm repositories with the Helm client for it to install charts from a repository using the helm repo add command.

Information about charts available on a repository is cached on the client host. You'll need to periodically update the cache manually to fetch the repository's latest information by running the helm repo update command.

The helm search repo command allows you to search for charts on all locally added Helm repositories

## How to test a Helm chart
Helm provides an option for you to generate the manifest files that the template engine creates from the chart. This feature allows you to test the chart before a release by combining two additional parameters. These parameters are --dry-run and debug.

The --dry-run parameter makes sure that the installation is simulated, and the --debug parameter enables verbose output. 

## How to install a Helm chart
You use the helm install command to install a chart. A Helm chart can be installed from any of the following locations.

- Chart folder

helm install my-drone-webapp ./drone-webapp

- A packaged .tgz tar archive chart

helm install my-drone-webapp ./drone-webapp.tgz

- A Helm repository 

helm install my-release azure-marketplace/aspnet-core

## How to use functions and pipelines in a template
The Helm template language defines functions that you use to transform values from the values.yaml file. The syntax for a function follows the {{ functionName arg1 arg2 ... }} structure. Let's look at the quote function as an example to see this syntax in use.

```
{{ quote .Values.ingress.enabled }}
```

You use pipelines when more than one function needs to act on a value. A pipeline allows you to send a value, or the result of a function, to another function.

```
{{ .Values.ingress.enabled | upper | quote }}
```

## How to use conditional flow control in a template

Conditional flow control allows you to decide the structure or data included in the generated manifest file. For example, you may want to include different values based on the deployment target or control if a manifest file is generated.

The if / else block is such a control flow structure and conforms to the following layout.

```
{{- if .Values.ingress.enabled -}}
apiVersion: extensions/v1
kind: Ingress
metadata:
  name: ...
  labels:
    ...
  annotations:
    ...
spec:
  rules:
    ...
{{- end }}

```

Notice the use of the - character as part of the start {{- and the end -}} sequence of the statement. The - character instructs the parser to remove whitespace characters. {{- removes whitespace at the start of a line and -}} at the end of a line, including the newline character.

## How to iterate through a collection of values in a template

YAML allows you to define collections of items and use individual items as values in your templates. Accessing items in a collection is possible using an indexer. However, the Helm template language supports the iteration of a collection of values using the range operator.

```
ingress:
  enabled: true
  extraHosts:
    - name: host1.local
      path: /
    - name: host2.local
      path: /
    - name: host3.local
      path: /
```
```
{{- if .Values.ingress.enabled -}}
apiVersion: extensions/v1
kind: Ingress
metadata:
  ...
spec:
  rules:
    ...
    {{- range .Values.ingress.extraHosts }}
    - host: {{ .name }}
      http:
        paths:
          - path: {{ .path }}
            ...
    {{- end }}
  ...
{{- end }}
```

## How to define chart dependencies

The helm dependency command allows you to manage dependencies included from a Helm repository. The command uses metadata defined in the dependencies section of your chart's values file. You specify the name, version number, and the repository from where to install the sub chart. Here is an extract of a values.yaml file that has a MongoDB chart listed as a dependency.

```
apiVersion: v2
name: my-app
description: A Helm chart for Kubernetes
...
dependencies:
  - name: mongodb
    version: 10.27.2
    repository: https://marketplace.azurecr.io/helm/v1/repo

```

Once the dependency metadata is defined, you run the helm dependency build command to fetch the tar packaged chart. The chart build command downloads the chart into the charts/ folder.

## How to upgrade a Helm release

Helm allows upgrading existing releases as a delta of all the changes that apply to the chart and its dependencies.

Instead of uninstalling the current release, you'll use the helm upgrade command to upgrade the existing Helm release. Here is an example of what the command may look like when run.

```
helm upgrade my-app ./app-chart
```

## How to roll back a Helm release

Helm allows the rollback of an existing Helm release to a previously installed release. Recall from earlier, Helm tracks release information of all releases of a Helm chart.

You use the helm rollback command to roll back to a specific Helm release revision. This command uses two parameters. The first parameter identifies the name of the release, and the second identifies the release revision number. Here is an example of the command.

```
helm rollback my-app 2

```

## HELM command

- Add repo

helm repo add NAME URL repo

helm repo add bitnami https://chart.bitnami.com/bitnami

- repo list

helm repo list

- searh in repo

helm search repo NOMBREAPP

helm search repo apache

Buscar diferente a la ultima version

helm search repo mysql --version

- remove repo

helm repo remove NAME

helm repo remove bitnami


- dry run

--dry-run debbuging mode

helm uninstall myserver --keep-history paraque se pueda realizar rollback

helm history mywebserver historia de versiones

helm rollback webservice 3 para hacer rolback a la version 3


helm upgrade --instal mywebserver bitnami/apache  crear o hacerun upgrade depende si existe o no

helm install bitnami/apache --generate-name crea n nombre aleatorio

helm install bitnami/apache --generate-name  --name-template "mywebserver-{{randAlpha 7 | lower}} crearnombre con un template

## WAIT AND TIMEOUT

helm install mywbserver bitnmi/apache --wait --timeout 5m10s   5 minutos es el wait por defecto

## ATOMIC INSTALL

helm install mywebserver bitnami/apache --atomic --timeout 7m12s devueve a un rollback de un despliegue exitoso

## FOrceful Upgrades

helm up

## clean up

helm upgrademywebserver bitnami/apache --cleanup-on-failure

## create chart

helm create firstchart

### STRUCTURE OF THE CHART
Chart.yaml metadata
chart folder dependencias
templates folder all the templates to render manifest kubernetes
values.yaml contain all the values

## iChart.yaml

aqui esta la metadata  son obligatorios la apiVersion, name and version the rest is optional

helm lint

helm lint firstchart

________________________

## Inicializar un Repositorio de Helm Chart
Una vez que tengas Helm listo, puede agregar un repositorio de Charts. Consulta Artifact Hub para conocer los repositorios de Helm Chart disponibles.

helm repo add stable https://charts.helm.sh/stable

## Instalar un Chart de Ejemplo
Para instalar un chart, puede ejecutar el comando helm install. Helm tiene varias formas de buscar e instalar un chart, pero la más fácil es utilizar uno de los charts stable oficiales.

helm repo update  # Asegúrese de obtener la última lista de charts

helm install stable/mysql --generate-name

Released smiling-penguin

La función helm list le mostrará una lista de todos los releases desplegados.

## Desinstalar un Release
Para desinstalar un release, utilice el comando helm uninstall:

helm uninstall smiling-penguin

Esto desinstalará smiling-penguin de Kubernetes, lo que eliminará todos los recursos asociados con el release, así como el historial del release.

Si la bandera --keep-history es utilizada, el historial del release será mantenido. Podrás solicitar información sobre ese release:

## La Estructura de Archivos del Chart
Un chart se organiza como una colección de archivos dentro de un directorio. El nombre del directorio es el nombre del chart (sin información de versiones). Por lo tanto, un chart que describa WordPress se almacenaría en un directorio wordpress/.

Dentro de este directorio, Helm esperará una estructura que coincida con esto:

![](./Images/chartsstructure.png)



Helm se reserva el uso de los directorios charts/, crds/ y templates/, y de los nombres de archivo listados. Los demás archivos se dejarán como están.

___________________________


helm get manifest nombrechart

helm install --debug --dry-run nombrerelease nombrecharts

set values have precedence

helm install nombrerelease nombrechart --set variable=valorvariable

you cna use function http://masterminds.github.io/sprig/ to quote or upper a text value

si se necesita aplicar mas d euna funcion se usa el pipe {{Value.projecCode | upper | quote}}

valor por defecto {{ Values.contact | default "1-800-123-0000"} | quote}

## Flow control - If/else

![](./Images/flowcontrol.png)