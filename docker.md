# DOCKER

## What is a Container

-A way to package application with all necesary dependencies and configuration

-Portable artifact easily shared and moved around

-makes development and deployment more efficient

-layer of images

-mostly Linux Base Image because small in size (linux alpine)

-Application image on top


## Where do container live?

-continer repository

-private repository

-public repository to docker (docker hub)


## Docker Image

the actual package
artifact that can be moved around

## Docker Container 

actually start the application

container environment is created

container is a running environment for IMAGE

## Docker vs Virtual Machine

-Docker on  OS level

- Different levels of abstractions

-Docker virtualice application layer

-Virtual machine application and OS kernel

- docker image is small and run much fast

## CONTAINER PORT



## HOST PORT



## DOCKER FILE
Docker can build images automatically by reading the instructions from a Dockerfile. A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

The docker build command builds an image from a Dockerfile and a context. The build’s context is the set of files at a specified location PATH or URL. The PATH is a directory on your local filesystem. The URL is a Git repository location.

The build context is processed recursively. So, a PATH includes any subdirectories and the URL includes the repository and its submodules. This example shows a build command that uses the current directory (.) as build context:

 docker build .

 o use a file in the build context, the Dockerfile refers to the file specified in an instruction, for example, a COPY instruction. To increase the build’s performance, exclude files and directories by adding a .dockerignore file to the context directory. For information about how to create a .dockerignore file see the documentation on this page.

Traditionally, the Dockerfile is called Dockerfile and located in the root of the context. You use the -f flag with docker build to point to a Dockerfile anywhere in your file system.

 docker build -f /path/to/a/Dockerfile .



## COMANDOS DOCKER

    Docker images
    Docker run (nombre imagen) 
    Docker run -it (nombre contenedor) bash
    Docker ps muestra contenedores corriendo
    docker ps -a muestra todos los contenedores
    Docker stop / start / restart
    Docker attach
    Docker history
    Docker inspect
    Docker logs
    Docker build
    Docker commit
    Docker exec
    Docker diff
    Docker rm / rmi
    Docker login
    Docker pull / push
    Docker volume
    docker run -d
    
    docker run -p Hostport: containerport images (puertos)

    docker run -v direceccionhost:direccioncontainer images (volumenes)





El comando para probar que se ha instalado correctamente y revisar la versión es:

docker --version


Docker images

Como hemos visto en la teoría anteriormente, Docker se basa en imágenes. Se diferencia de las imágenes de sistema (ISOs) en que trabajan con capas. Dentro de cada imagen simplemente utiliza la imagen del sistema y luego en cada capa esta un comando.

Por ejemplo, la base puede ser Debian y luego una capa para actualizar y otra para instalar Apache.

Para ver todas las imágenes que tenemos escribimos:

docker images

Docker run

Es uno de los comandos más utilizados. Se utiliza para crear un nuevo contenedor y activarlo. Tiene muchos parámetros adicionales. Podemos ver todos los parámetros añadiendo --help (es valido para cualquier comando no solo docker run). Los más utilizados son:
-t 	Este parámetro de docker run nos va a permitir utilizar la terminal dentro del contenedor.
-i 	Este parámetro de docker run nos va a permitir activar la entrada de texto estándar (STDIN) para poder escribir.
-d 	Este parámetro de docker run lo vamos a utilizar cuando queramos el contenedor en segundo plano. Al ejecutarlo nos va a dar el ID largo del contenedor.
-p 	Este parámetro de docker run lo vamos a utilizar solo en algunas ocasiones. Sirve para especificar los puertos a utilizar en el contenedor. El primer numero sera el del contendor, el segundo sera el del exterior. Puede ser el mismo.
--rm 	Este parámetro de docker run es muy útil, cuando el contenedor se detenga (exit), lo borra.
--name 	Este parámetro de docker run nos va a permitir darle un nombre personalizado a nuestro contenedor en vez de que sea aleatorio.
-v 	Une (y crea si no existe) un volumen al contenedor.

La sintaxis es:

docker run (parámetros) [imagen] (comandos dentro contenedor)

Después del comando docker run podemos ejecutar un comando dentro de ese contenedor. Vamos a ejecutar un contenedor con httpd (servidor web Apache), en segundo plano, con terminal y entrada de texto, con un nombre personalizado y el puerto predeterminado es 80 pero nosotros queremos acceder por el 8080.

docker run -dti -p 8080:80 --name PruebaApache httpd

Ahora ya podemos acceder. Ponemos en el navegador la IP del sistema (podemos verlo con: ip addr show) y el puerto 8080. Por ejemplo:

192.168.1.46:8080
Docker ps

Con este comando nos va a listar los contenedores. Tiene varios parámetros pero principalmente se pueden resumir en 2.
-a 	Muestra todos los contenedores. Incluyendo los parados.
-n [número] 	Nos muestra un número especifico de los últimos contenedores (también los parados).

Un ejemplo:

docker ps -n 5

Docker stop / start / restart

Simplemente para parar (stop) / iniciar (start) / reiniciar (restart) un contenedor con el ID.

docker stop [ID]

Docker attach

Como hemos visto anteriormente, podemos ejecutar un contenedor en segundo plano.

Si no hemos especificado el parámetro -d para que se ejecute en segundo plano, podemos pulsar CTRL+P y luego CTRL+Q para que ese contenedor pase a segundo plano. También podemos pulsar CTRL+D para salir (también escribiendo exit).

Pero hay momentos en los que necesitamos volver a conectarnos y utilizar la terminal de nuevo. Para ello podemos poner:

docker attach [ID]

Docker history

Con este comando vamos a poder ver las capas de cada imagen, junto con sus datos técnicos.

docker history [imagen]

Docker inspect

Nos va a dar la información del documento de configuración del contenedor.

Podemos utilizar las tuberías (pipes) para unir el comando grep y hacer búsquedas si no sabemos el nombre exacto.

docker inspect [ID]

docker inspect [ID] | grep IP

También se puede utilizar --format para especificar exactamente lo que queremos.
Docker logs

Nos va a mostrar el log (los registros) del contenedor indicado.

docker logs [ID]

Docker build

Con este comando vamos a poder crear nuestras propias imágenes totalmente funcionales, personalizadas y adaptadas en Docker. Tiene muchos parámetros ya que podremos configurar cada aspecto de la imagen y el uso posterior.
-t 	Especificamos el nombre y opcional la etiqueta. Podemos utilizar repositorio usando / a la hora de escribirlo.
-f 	Muy usado a la hora de especificar el archivo Dockerfile, sobre todo si tiene terminación (por ejemplo Dockerfile.prod)
--target 	Sirve para hacer varias etapas. Así se puede dividir el Dockerfile y crear una imagen solo de una parte.

Para ejecutar este comando necesitamos tener creado previamente nuestro Dockerfile.

En este ejemplo vamos a crear una imagen como el Dockerfile esta en el mismo lugar desde donde ejecutamos el comando ponemos un punto (si fuese otra ruta indicaríamos dicha ruta).

docker build -t luis/debian .

Docker commit

Este comando lo vamos a utilizar a la hora de crear una nueva imagen desde un contenedor. Aunque lo recomendable es crear las imágenes con el Dockerfile, también se puede utilizar este método.

No incluye la información de los volúmenes. El contenedor debe ser pausado antes de hacer la nueva imagen.

docker commit [ID] cualquier/nombre:version

Docker exec

Sirve para ejecutar comandos en un contenedor activo. Tiene varios parámetros.
-t 	Este parámetro de docker exec nos va a permitir activar la sesión de terminal.
-i 	Este parámetro de docker exec nos va a permitir mantener activa la entrada de texto.
-w 	Nos permite especificar el directorio desde donde se ejecutará el comando.

docker exec -ti [ID] comando

Docker diff

Nos muestra las diferencias. Los cambios realizados en el docker. No tiene parámetros.

Nos va a mostrar A cuando sea un fichero o directorio creado, D cuando sea borrado y C cuando se hayan realizado cambios.

docker diff [ID]

Docker rm / rmi

Podemos borrar tanto contenedores (rm) como imágenes (rmi).

Con rm tenemos la opción de borrar links y volúmenes:
-l 	Borrar un link.
-v 	Borrar los volúmenes asociados al contenedor.
-f 	Forzar el borrado.

la sintaxis seria la siguiente:

docker rm (parámetros) [ID]

Con rmi podemos borrar las imágenes. Ya hemos visto como listar las imágenes anteriormente, solo necesitamos el ID o el nombre.

docker rmi (parámetros) [ID]

Docker login

Necesario para guardar nuestras imágenes personalizadas en Docker Hub. Con ello podremos tenerlas disponibles desde cualquier localización.

Una vez registrados en Docker Hub usamos el siguiente comando:

docker login --username=tunombreusuario --email=tuemail@compañia.com

Tendremos que poner la contraseña.
Docker pull / push

Este comando sirve para descargar (pull) y subir (push) imágenes desde Docker Hub.

Si queremos descargar, por ejemplo, la imagen de Mysql. Pero no queremos ejecutar ahora mismo un contenedor (si quisiéramos ejecutarlo usaríamos run que si no encuentra la imagen también la descarga).

docker pull mysql:8.0.16

Docker volume

Creamos volúmenes para guardar la información. Podemos crear un volumen y unirlo a un contenedor con -v en docker run pero lo recomendable es crearlo previamente y asignarle un nombre.

Para crearlo usamos:

docker volume create nombrequequeramos

Y para ver los volúmenes creados usamos:

docker volume ls

Postgress
$ docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres

dee
docker container prune
WARNING! This will remove all stopped containers.


--
docker exec -it ab2 /bin/bash

ingresar a un contenedor modo interactivo (it i interactivo t tty) id o nombre del contenedor  (ab2) /bin/bash abrir comando

Los comandos docker exec y docker attach le permiten conectarse a un contenedor en ejecución. Para obtener un shell interactivo en un contenedor, use el comando exec para iniciar una nueva sesión de shell. El comando adjuntar conecta la terminal a un contenedor en ejecución.

Para salir del contenedor sin detenerlo, use la combinación de teclas CTRL-p CTRL-q. Al presionar CTRL-c se detiene el contenedor.

--
docker run -p6000:6379 -d --name redis-older redis:4.0

ejecuta un contenedor por el puerto 6000 del host y el puerto 6379 del contenedor en modo secundo plano (-d) y le pone el nombre de redis-older (--name) de la imagen redis de la version 4.0 (redis:4.0)



## DOCKER COMPOSE
                                                                        
Developers describe Docker Compose as "Define and run multi-container applications with Docker". With Compose, you define a multi-container application in a single file, then spin your application up in a single command which does everything that needs to be done to get it running.

docker-compose -f mongo.yaml up

docker-compose -f mongo.yaml down  stop y remove container and networks

## DOCKERFILE

blueprint for building images
```
FROM node  -- install node basic images linux alpine, etc
ENV MONGO_DB_USERNAME=admin \  ---set environment variables
    MONGO_DB_PWD=password
RUN mkdir -p /home/app  --- create /home/app folder folder nested -p
COPY . /home/app copy current directory . to /home/app copia de mi host al docker si fuera dentro del mismo contenedor usaria RUN cp archvio destino archvio origen
CMD ["node","server.js"] start the app with "node server.js"
```
diferencia entre CMD y RUN es que CMD=entry point command
you can  have multiple RUN commands

```
FROM ubuntu

RUN apt-get update && apt-get -y install python

RUN pip install flask flask-mysql

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
```

docker build -t my-app:1.0  . para crer una imagne desde un dockerfile we use docker build -t tagged nombre y version y en el segunod el folder donde esta el docker file . current directory)

## SMALLER CONTAINER

1. use base smaller images (alpine, small, slim)

2. Use multi stage Docker buils

````
FROM golang:1.14-alpine as build
WORKDIR /app
COPY . ./
RUN go build -o server .

########

FROM alpine:3.12
COPY  --from=build /app /app
WORKDIR /app
CMD ["/app/server"]
````

##Security DOCKER

- Don't run the container as the root user
- use multi-stage build + distroless base image
- Harden the security of the host system
- Use a container image scanner to detect vulnerabilities
- Don't install/configure thing without understandig the potential risk

## ADD VS COPY

COPY toma src y destrucción. Solo le permite copiar en un directorio local o desde su host (la máquina que crea la imagen de Docker) en la propia imagen de Docker.

``` 
COPY <src> <dest>
```
ADD también  te permite hacer eso, pero también admite otras 2 fuentes. Primero, puede usar una URL en lugar de un archivo / directorio local. En segundo lugar, puede extraer tar del directorio de origen al destino.
```


ADD <src> <dest>
```

### Parser directives

Parser directives are optional, and affect the way in which subsequent lines in a Dockerfile are handled. Parser directives do not add layers to the build, and will not be shown as a build step. Parser directives are written as a special type of comment in the form # directive=value. A single directive may only be used once.

All parser directives must be at the very top of a Dockerfile.

Parser directives are not case-sensitive. However, convention is for them to be lowercase. 

The following parser directives are supported:

**syntax**
```
# syntax=[remote image reference]
```
For example:
````
# syntax=docker/dockerfile:1
# syntax=docker.io/docker/dockerfile:1
# syntax=example.com/user/repo:tag@sha256:abcdef...
````

**escape**
````
# escape=\ (backslash)
Or

# escape=` (backtick)
````

The escape directive sets the character used to escape characters in a Dockerfile. If not specified, the default escape character is \.

Setting the escape character to ` is especially useful on Windows, where \ is the directory path separator. ` is consistent with Windows PowerShell.

````
# escape=`

FROM microsoft/nanoserver
COPY testfile.txt c:\
RUN dir c:\

````

### Environment replacement

Environment replacement
Environment variables (declared with the ENV statement) can also be used in certain instructions as variables to be interpreted by the Dockerfile. Escapes are also handled for including variable-like syntax into a statement literally.
````
Environment variables are notated in the Dockerfile either with $variable_name or ${variable_name}. They are treated equivalently and the brace syntax is typically used to address issues with variable names with no whitespace, like ${foo}_bar.

The ${variable_name} syntax also supports a few of the standard bash modifiers as specified below:

${variable:-word} indicates that if variable is set then the result will be that value. If variable is not set then word will be the result.
${variable:+word} indicates that if variable is set then word will be the result, otherwise the result is the empty string.

FROM busybox
ENV FOO=/bar
WORKDIR ${FOO}   # WORKDIR /bar
ADD . $FOO       # ADD . /bar
COPY \$FOO /quux # COPY $FOO /quux

Environment variable substitution will use the same value for each variable throughout the entire instruction. In other words, in this example:

ENV abc=hello
ENV abc=bye def=$abc
ENV ghi=$abc
will result in def having a value of hello, not bye. However, ghi will have a value of bye because it is not part of the same instruction that set abc to bye.

````

Environment variables are supported by the following list of instructions in the Dockerfile:

- ADD
- COPY
- ENV
- EXPOSE
- FROM
- LABEL
- STOPSIGNAL
- USER
- VOLUME
- WORKDIR
- ONBUILD (when combined with one of the supported instructions above)

## CMD Vs ENTRYPOINT

CMD comand line replace enterily in entrypoint the comand line parameters is appended

```
FROM ubuntu

CDM sleep 5
```
docker run ubuntu-sleeper sleep 10

COMMAND AT STARTUP: Sleep 10

```
FROM Ubuntu

ENTRYPOINT ["sleep"]
```
docker run ubuntu-sleeper 10
COMMAND AT STARTUP: ENTRYPOINT +  10

you can use ENTRYPOINT and CMD togheter for the case you use CMD like default value on ENTRYPOINT

```
FROM ubuntu
ENTRYPOINT ["sleep"]
CMD["5"]
```

docker run ubuntu-sleeper
COMMAND AT STARTUP: Sleep 5

docker run ubuntu-sleeper 10
COMMAND AT STARTUP: Sleep 10

docker run --entrypoint sleep2.0 ubuntu-sleeper 10
COMMAND AT STARTUP: Sleep2.0 10

### RUN vs CMD vs ENTRYPOINT
RUN executes commands and creates new image layers.
CMD sets the command and its parameters to be executed by default after the container is started. However CMD can be replaced by docker run command line parameters.
ENTRYPOINT configures the command to run when the container starts, similar to CMD from a functionality perspective.


## RUN

RUN has 2 forms:

````

RUN <command> (shell form, the command is run in a shell, which by default is /bin/sh -c on Linux or cmd /S /C on Windows)

In the shell form you can use a \ (backslash) to continue a single RUN instruction onto the next line. For example, consider these two lines:

RUN /bin/bash -c 'source $HOME/.bashrc; \
echo $HOME'


RUN ["executable", "param1", "param2"] (exec form)

The exec form is parsed as a JSON array, which means that you must use double-quotes (“) around words not single-quotes (‘).

In the JSON form, it is necessary to escape backslashes. This is particularly relevant on Windows where the backslash is the path separator. The following line would otherwise be treated as shell form due to not being valid JSON, and fail in an unexpected way:

RUN ["c:\windows\system32\tasklist.exe"]
The correct syntax for this example is:

RUN ["c:\\windows\\system32\\tasklist.exe"]

````

## CMD

The CMD instruction has three forms:

- CMD ["executable","param1","param2"] (exec form, this is the preferred form)
- CMD ["param1","param2"] (as default parameters to ENTRYPOINT)
- CMD command param1 param2 (shell form)

The main purpose of a CMD is to provide defaults for an executing container. 

There can only be one CMD instruction in a Dockerfile. If you list more than one CMD then only the last CMD will take effect.

If CMD is used to provide default arguments for the ENTRYPOINT instruction, both the CMD and ENTRYPOINT instructions should be specified with the JSON array format.

Do not confuse RUN with CMD. RUN actually runs a command and commits the result; CMD does not execute anything at build time, but specifies the intended command for the image.

## LABEL
````
LABEL <key>=<value> <key>=<value> <key>=<value> ...

````

The LABEL instruction adds metadata to an image. A LABEL is a key-value pair. To include spaces within a LABEL value, use quotes and backslashes as you would in command-line parsing. A few usage examples:

````

LABEL "com.example.vendor"="ACME Incorporated"

LABEL com.example.label-with-value="foo"

LABEL version="1.0"

LABEL description="This text illustrates \
that label-values can span multiple lines."

````

## EXPOSE
````
EXPOSE <port> [<port>/<protocol>...]`
````

The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime. You can specify whether the port listens on TCP or UDP, and the default is TCP if the protocol is not specified.

The EXPOSE instruction does not actually publish the port. It functions as a type of documentation between the person who builds the image and the person who runs the container, about which ports are intended to be published. To actually publish the port when running the container, use the -p flag on docker run to publish and map one or more ports, or the -P flag to publish all exposed ports and map them to high-order ports.

By default, EXPOSE assumes TCP. You can also specify UDP:

EXPOSE 80/udp

To expose on both TCP and UDP, include two lines:

EXPOSE 80/tcp
EXPOSE 80/udp


## VOLUME

VOLUME ["/data"]

The VOLUME instruction creates a mount point with the specified name and marks it as holding externally mounted volumes from native host or other containers. The value can be a JSON array, VOLUME ["/var/log/"], or a plain string with multiple arguments, such as VOLUME /var/log or VOLUME /var/log /var/db.

## WORKDIR

WORKDIR /path/to/workdir

The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile