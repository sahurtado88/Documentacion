my name is I studied at the U of A and graduated in 2012 as an electronic engineer, after graduating I have worked in IT in areas as software development, database administration and devops.

I have about 4 years of experience in devops role and I am certified as associate architect in AWS and azure fundamentals, I have knowledge in tools like git, jenkins, azure devops, terraform, docker, kubernetes, prometheus, grafana and script development in python and bash.

I am currently working with kubernetes on AKS clusters validate the operation of pipleines in harness and create some alerts in grafana 

I have made scripts that connect to mongo for queries, inserts and dedelete.

also scripts that connect to a kubernetes cluster to validate pod status and do automatic restarts.

Script that allow to delete logs searching by creation date


DevOps is a work culture primarily centered around collaboration, communication, and integration among the development teams

Continuous integration (CI) is the process of automating and integrating code changes and updates from many team members during software development. In CI, automated tools confirm that software code is valid and error-free before it's integrated, which helps detect bugs and speed up new releases.

Continuous delivery (CD) is the ability to push new software into production multiple times per day, automating the delivery of applications to infrastructure environments. CD is part of DevOps, which helps shorten the software development lifecycle.

Continuous Delivery focuses on ensuring that software is deliverable at any time and in any environment, Continuous Deployment takes this concept a step further by automating the deployment of changes to production as soon as they are ready.

Continuos delivery is keeping the code in a deployable state Continuos deployment is actually doing the deployment frequently

GIT FLOW
In the Git flow development model, you have one main development branch with strict access to it. It’s often called the develop branch.

Developers create feature branches from this main branch and work on them. Once they are done, they create pull requests. In pull requests, other developers comment on changes and may have discussions, often quite lengthy ones

Trunk-based Development Workflow

In the trunk-based development model, all developers work on a single branch with open access to it. Often it’s simply the master branch. They commit code to it and run it. It’s super simple.

Git Flow: Esta estrategia utiliza dos branches principales: master y develop. Se crean branches de feature a partir de develop y se fusionan de vuelta a develop una vez completadas. Se utilizan branches de release para preparar versiones estables y se fusionan en master y develop una vez probadas. Es robusta pero puede ser compleja.

Feature Branching: Cada nueva característica o tarea se desarrolla en su propio branch separado. Una vez completada, se fusiona de vuelta al branch principal (generalmente master o develop). Es simple y proporciona un buen aislamiento de cambios, facilitando la colaboración en equipos grandes.

Trunk-Based Development: Se mantiene un único branch principal (trunk), generalmente master, donde se integran todos los cambios. Los cambios son pequeños y se implementan rápidamente, lo que permite una iteración más ágil y rápida.


Rolling Deployment

A rolling deployment is a deployment strategy that updates running instances of an application with the new release. All nodes in a target environment are incrementally updated with the service or artifact version in integer N batches.

Blue-green deployment is a deployment strategy that utilizes two identical environments, a “blue” (aka staging) and a “green” (aka production) environment with different versions of an application or service. Quality assurance and user acceptance testing are typically done within the blue environment that hosts new versions or changes. User traffic is shifted from the green environment to the blue environment once new changes have been testing and accepted within the blue environment.

Canary Deployment

A canary deployment is a deployment strategy that releases an application or service incrementally to a subset of users. All infrastructure in a target environment is updated in small phases (e.g: 2%, 25%, 75%, 100%). A canary release is the lowest risk-prone, compared to all other deployment strategies, because of this control.

In A/B testing, different versions of the same service run simultaneously as “experiments” in the same environment for a period of time. Experiments are either controlled by feature flags toggling, A/B testing tools, or through distinct service deployments. It is the experiment owner’s responsibility to define how user traffic is routed to each experiment and version of an application. Commonly, user traffic is routed based on specific rules or user demographics to perform measurements and comparisons between service versions. Target environments can then be updated with the optimal service version.

Containerization is a software deployment process that bundles an application’s code with all the files and libraries it needs to run on any infrastructure.

Containerization compared to virtual machines
Containerization is a similar but improved concept of a VM. Instead of copying the hardware layer, containerization removes the operating system layer from the self-contained environment. This allows the application to run independently from the host operating system. Containerization prevents resource waste because applications are provided with the exact resources they need. 

Docker
Docker, or Docker Engine, is a popular open-source container runtime that allows software developers to build, deploy, and test containerized applications on various platforms. Docker containers are self-contained packages of applications and related files that are created with the Docker framework.

Because CMD and ENTRYPOINT work in tandem, they can often be confusing to understand. However, they have different effects and exist to increase your image’s flexibility: ENTRYPOINT sets the process to run, while CMD supplies default arguments to that process.

The ENTRYPOINT Dockerfile instruction sets the process that’s executed when your container starts.

ENTRYPOINT is the process that’s executed inside the container.
CMD is the default set of arguments that are supplied to the ENTRYPOINT process.
There are also differences in how you override these values when you start a container:

CMD is easily overridden by appending your own arguments to the docker run command.
ENTRYPOINT can be changed using the --entrypoint flag, but this should rarely be necessary for container images being used in the way they were intended. If you do change the ENTRYPOINT, you’ll almost certainly need to set a custom CMD too—as otherwise, your new ENTRYPOINT is likely to receive arguments that it doesn’t understand.

git fetch descarga los objetos y las referencias del repositorio remoto al repositorio local, pero no los fusiona automáticamente con la rama local actual.


A Terraform module is a collection of standard configuration files in a dedicated directory. Terraform modules encapsulate groups of resources dedicated to one task, reducing the amount of code you have to develop for similar infrastructure components.


the primary purpose of terraform state is to store bindings between objects in a remote system and resource instances declared in your configuration

Import comand

import block terraform 1.5

I need two weeks to resign

 Utilizamos una imagen oficial de Python como base
FROM python:3.9-slim

# Establecemos el directorio de trabajo en /app
WORKDIR /app

# Copiamos el archivo de requisitos a la imagen
COPY requirements.txt requirements.txt

# Instalamos las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos solo el archivo ejecutable de Python a la imagen
COPY app.py .

# Configuramos un usuario no root para la imagen por motivos de seguridad
RUN useradd appuser && chown -R appuser /app
USER appuser

# Exponemos el puerto 8080 para que la aplicación sea accesible desde fuera del contenedor
EXPOSE 8080

# Comando por defecto para ejecutar la aplicación
CMD ["python", "app.py"]

```
In Ansible, modules are small programs written in Python that Ansible uses to perform specific tasks on managed systems. Modules can perform a wide variety of tasks, from package management and service configuration to file manipulation and user management.

In Ansible, roles are a way to organize and structure your playbooks and tasks into logical, reusable units. Roles in Ansible allow you to modularize system configuration and automation, making it easier to manage and maintain your infrastructure.