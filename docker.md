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

## Security DOCKER

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

_____________________________
Show the history of an image
```
docker history -H <NAMEIMAGEs>
```
_________________________

Docker rm
docker rm removes containers by their name or ID.

When you have Docker containers running, you first need to stop them before deleting them.

- Stop all running containers: docker stop $(docker ps -a -q)
- Delete all stopped containers: docker rm $(docker ps -a -q)

Remove multiple containers
You can stop and delete multiple containers by passing the commands a list of the containers you want to remove. The shell syntax $() returns the results of whatever is executed within the brackets. So you can create your list of containers within this to be passed to the stop and rm commands.

Docker rm [OPTIONS] CONTAINER [CONTAINER...]

Description
Remove one or more containers

Options
Option	Short	Default	Description
--force	-f		Force the removal of a running container (uses SIGKILL)
--link	-l		Remove the specified link
--volumes	-v		Remove anonymous volumes associated with the container

```
docker rm -fv
```

_______________________

## Buenas practicas Docker

- efimeros
- Un servicio por contenedor
- build context -> .dockerignore
- pocas capas
- Multi linea \
- Varios argumentos en una sola capa
- No instalar paquetes innecesarios
- Labels

___________________

```
docker build -t test -f <NAMEFILE> <PATH dockerfile> 
```

___________________

## Dangling images

Dangling images are untagged Docker images that aren't used by a container or depended on by a descendant. They usually serve no purpose but still consume disk space. You'll accumulate dangling images when you replace an existing tag by starting a new build

se da debido a que las capas en las imagenes de dcoker son solo de lectura entonce al tener una imagen con el mismo nombre pero con un cambio en la capa queda huerfana la anterior

para filtar la imagenees danglingse puede ejecutar este comando

```
docker images -f dangling=true
```

para borrar del todo

primero se ejecuta este comando para listar los ID

```
docker images -f dangling=true -q
```

con linux se usa xargs para elimianr todo
```
docker images -f dangling=true -q | xargs docker rmi

```

## Containers

docker run -d <NOMBREIMAGEN> ejecucion segundo plano

docker run -d  -p <Puertohost>:<PUERTO_CONTAINER> <Nombreimagen> 

docker rm -f <nombrecontenedor> borrado forzado

docker rename <nombre_viejo> <nombre_nuevo>

docker stop <nombrecontenedor o Container_ID>

docker start <nombrecontenedor o Container_ID>

docker restart <nombrecontenedor o Container_ID>

docker exec -ti <nombrecontenedor o Container_ID> bash

docker exec -u root  -ti <nombrecontenedor o Container_ID> bash

docker ps -q | xargs docker rm -f

docker run -dti -e "variable=valor" --name <Nombre> <NOMBREIMAGEN> crear variable variable=valor 

docker logs -f <Nombrecontenedor> f para follow

docker inspect <nombre_contenedor>

docker rm -fv $(docker ps -aq) eliminar todos los contenedores

docker stat <nombrecontenedor o Container_ID> mirar estadisticas de cpu y memoria

## Limitar recursos a un contenedor

docker run -d -m "500mb" --name <docker_name> <docker_image>  limitar memoria a 500mb

docker run -d -m "1gb" --cpuset-cpus 0-1 -name <docker_name> <docker_image> limitar memoria a 1gb y a 2 cpus

## Copiar archivos a un contenedor

docker cp <archivolocal> nombrecontenedor:<rutacontenedor>

docker cp nombrecontenedor:<rutacontenedor> rutalocal

## Convienrte un contenedor en una imagen

docker commit <nombrecontenedor> <nombrecontenedorresultante>

lo que este en VOLUME no se va a guardar

## Sobreescribir el CMD de una imagen sin un dockerfile

docker run -d -p <host>:<container> <nombre_contenedor> <CMD>

##


La idea de este articulo es que le des solución al siguiente problema utilizando lo que has aprendido.



En donde trabajas, solicitan los siguientes contendores con las siguientes características:

- Un contenedor con la imagen de Apache + php creada en la anterior solicitud con:

  * 50Mb límites de RAM

  * Solo podrá acceder a la CPU 0

   * Debe tener dos variables de entorno:

      * ENV = dev

      * VIRTUALIZATION = docker

  * El webserver debe ser accesible vía puerto 5555 en el navegador


## eliminar contenedores

docker rm -fv <nombrecontenedor>

docker run --rm  --ti  <nombreimagen> <CMD> eg
docker run --rm --ti --name centos centos bash

## cambiar document root de docker

docker info | grep -i root

Dir: /var/lib/docker 

editar vi /lib/systemd/system/docker.service

se cambia el ExecStart

ExecStart= /usr/bin/dockerd --data-root <nueva_ruta>

![](./Images/changeroot.png)

y luego systemctl daemon-reload y systemctl restart docker para que aplique el cambio

## Volumnes en docker

los volumenes nos permiten almacenar data de forma persistente del contenedor

### tipos de volumenes

- **Host** 
```
 docker run -d  --name de -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -v <carpethost>:<carpetadocker> mysql:5.7
```

- **Anonymus**
no se especifica la carpeta donde estara el volumen en el host se crea en docker info | grep -i root

Dir: /var/lib/docker en la carpeta volumenes

```
 docker run -d  --name de -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -v <carpetadocker> mysql:5.7
```
- **Named values** 
```
crearlo
docker volume create <nombrevolumen>

para borrarlo 
docker volume rm <nombrevolumen>


asigrarlo

docker run -d  --name de -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -v <volumencreado>:<carpetadocker> mysql:5.7
```


### Volume en docker file

```
FROM centos

VOLUME /opt/ # crea volumen anonimo
```
### Dangling volumes

docker volume ls -f dangling=true #volumenes no referenciados con ningun contenedor

eliminarlos

docker volume ls -f dangling=true -q | xargs docker volume rm



docker exec <nombre_contenedor> bash -c "cat /var/jenkins" ejecutar comando sin entrar de manera interactiva


## Docker networks

ip a| grep docker listar interfaces

docker0 es la red por defecto

docker network ls | grep bridge

docker network inspect bridge

en bridge se ve por ip no por nombre

### crear una red definida por el usuario

docker network create <nombrered>

docker network create -d bridge --subnet 172.124.10.0/24 --gateway 172.124.10.1 <nombrered> 

docker network inspect <nombrered>

### Agreagr contenedores a una red distinta a la por defecto

docker run --network <nombrered> -d --name <namecontenedor> -ti <nombre_imagen>

### conectar contenedores en la misma red

se puede buscar ping por nombre si es una red creada por el usuario

los contenedores se pueden conectar siempre que esten en la misma red por defecto

### Conectar contenedores en diferente red
```
docker network connect <nombrered> <nombrecontenedorquesequiereconectar>

docker network disconnect <nombrered> <nombrecontenedorquesequieredesconectar>
```
### eliminar network

docker network rm <nombrered> pero primero se deben eliminar los contenedores

### Asignar ip a un contenedor

docker run --network <nombrered> --ip <ipperteneciente a la subnet de la red> -d --name <nombrecontenedor> -ti <nombre_imagen>

### la red de host

docker run --network host -d --name <nombrecontenedor> -ti <nombre_imagen>

comparte la red del host

### red none

La red none no configurará ninguna IP para el contenedor y no tiene acceso a la red externa ni a otros contenedores. Tiene la dirección loopback y se puede usar para ejecutar trabajos por lotes.

docker run --network none -d --name <nombrecontenedor> -ti <nombre_imagen>

## Docker Compose

Es una herramienta de docker que permite usar multicontenedores
donde se definen contenedores, imagenes volumenes y redes en un solo archivo

### Primer docker compose

puede ser culaquier nombre de archvio con extension .yml sus dos valores obligatorios son version y services

```
version: '3'
services:
  web:
    container_name: nginx
    ports:
      - "8080:80" ## HOST: CANTAINER
    image: nginx  

volumes:
networks:
```
para correr un docker.compose se usa

```
docker-compose up -d
```
eliminar docker-compose
```
docker-compose down
```
https://docs.docker.com/compose/compose-file/compose-file-v3/


### Variables de entorno en compose

```
version: '3'
services:
  db:
    image: mysql:5.7  
    container_name: mysql
    ports:
      - "3306:3306" ## HOST: CANTAINER
    environment:
     - "MYSQL_ROOT_PASSWORD=123456"  

```

Environment desde file
```
version: '3'
services:
  db:
    image: mysql:5.7  
    container_name: mysql
    ports:
      - "3306:3306" ## HOST: CANTAINER
    env_file: common.env

```

common.env
```
MYSQL_ROOT_PASSWORD=123456
```
 
 ### Volumenes en docker compose

volumen nombrado
```
version: '3'
services:
  web:
    container_name: nginx
    ports:
      - "8080:80" ## HOST: CANTAINER
    volumes:
      - "vol2: /usr/sahre/nginx/html"  
    image: nginx  
volumes:
 vol2:

```

volumen de host
```
version: '3'
services:
  web:
    container_name: nginx
    ports:
      - "8080:80" ## HOST: CANTAINER
    volumes:
      - "/home/user/docker-compose/html: /usr/sahre/nginx/html"  
    image: nginx  


```
### Redes en docker-compose

```
version: '3'
services:
  web:
    container_name: nginx
    ports:
      - "8080:80" ## HOST: CANTAINER
    image: nginx 
    networks:
      - net-test
networks:
  net-test:
```
______________________________________

- Un contenedor con la imagen de Apache + php creada en la anterior solicitud con:

  * 100Mb límites de RAM

  * Podrá acceder a la cpu 0 y 1

   * Debe tener tres variables de entorno:

      * ENV = stg

      * VIRTUALIZATION = docker

      * TYPE = container

  * El webserver debe ser accesible vía puerto 8181 en el navegador

Deberás comprobar su funcionamiento ingresando a tu localhost:5555 y localhost:8181

Que te diviertas!


En donde trabajas, solicitan los siguientes contendores con las siguientes características:

- Un contenedor con la imagen de Apache + php creada en la anterior solicitud con:

  * 50Mb límites de RAM

  * Solo podrá acceder a la CPU 0

   * Debe tener dos variables de entorno:

      * ENV = dev

      * VIRTUALIZATION = docker

  * El webserver debe ser accesible vía puerto 5555 en el navegador

  * En /opt/source1 (Debes crear el directorio en tu máquina local) debe persistir el código que se incluya en el webserver. En este caso, para pruebas, utilizarás un phpinfo que debe sobrevivir a la eliminación del contenedor.

Que te diviertas!


_________________________


![Alt text](image-33.png)

![Alt text](image-34.png)

How do you create a multi-stage build in Docker?


Multi-stage builds in Docker allow you to create optimized Docker images by leveraging multiple build stages. Each stage can use a different base image and perform specific build steps. To create a multi-stage build, you define multiple FROM instructions in the Dockerfile, each representing a different build stage.

Intermediate build artifacts can be copied between stages using the COPY --from instruction. This technique helps reduce the image size by excluding build tools and dependencies from the final image.

ow do you update a Docker container without losing data?


The steps to update a Docker container without losing data are:

Create a backup of any important data stored within the container.
Stop the container gracefully using the docker stop command.
Pull the latest version of the container image using docker pull.
Start a new container using the updated image, making sure to map any necessary volumes or bind mounts.
Verify that the new container is functioning correctly and that the data is still intact.

What is the difference between COPY and ADD instructions in a Dockerfile?


In a Dockerfile, the COPY instruction copies files or directories from the host machine to the container's filesystem. It is used for straightforward file copying.

On the other hand, the ADD instruction has additional capabilities. It can copy local files, extract compressed archives (tar, gzip, etc.) into the container, and even download files from URLs and automatically unpack them. Due to its added complexity and potential security risks, it is generally recommended to use COPY unless the extra functionality of ADD is explicitly required.

How do you manage secrets in Docker using external secret stores?


Docker provides support for managing secrets securely using external secret stores. To manage secrets in Docker, you can:

Create or obtain the required secret values
Store the secrets in an external secret store like HashiCorp Vault or Azure Key Vault
Configure Docker to use the external secret store as the backend for secret management
Create secrets in Docker Swarm or Kubernetes using the Docker CLI or API, referencing the secret values stored in the external secret store
The secrets are securely retrieved at runtime and made available to the containers in a controlled manner, ensuring sensitive information remains protected.

How do you manage Docker images in a private registry?

To manage Docker images in a private registry, you can:

Set up a private Docker registry using tools like Docker Registry or third-party solutions like Harbor or Nexus Repository Manager
Push Docker images to the private registry using the docker push command and specify the registry's address and credentials
Pull Docker images from the private registry using the docker pull command and provide the image's name and registry information
Manage access and permissions to the private registry by configuring authentication and authorization settings
Apply image retention and deletion policies to manage storage usage and keep the registry organized
Monitor the private registry for storage capacity, performance, and security.

https://www.turing.com/interview-questions/docker


______________________

The Docker Interview Questions Blog. Along with the answers!

What is Docker?
Docker is an open-source platform that allows you to automate the deployment and management of applications within lightweight, isolated containers.

2. Why and when to use Docker?

We use Docker:

Package applications and dependencies to containers making them isolated which makes it easier to deploy and run consistently across different environments.
Docker supports scaling allowing multiple containers to run on a single host machine.
Docker integrates well with CI/CD pipeline allowing to automate through the stages.
Docker Hub, registry, allows us to share and discover images publicly.
Docker is valuable when we want to achieve application isolation, portability, scalability, simplified deployment, CI/CD automation, microservices architecture, reproducible environments, and collaboration in software development and deployment.
3. What are the disadvantages of using docker?

Docker introduces additional security considerations like kernel sharing, tampered images, and secret sharing.
Docker can add complexity when managing distributed systems with multiple containers and networking requirements.
Docker containers are designed to be ephemeral, which means they are not intended for long-term storage or managing stateful applications.
Although Docker containers have lower resource overhead compared to virtual machines, there is still a slight performance impact due to the additional layer of abstraction and the shared kernel.
4. What is the basic architecture behind Docker?

Docker is built on the client-server model.

5. Explain the Docker architecture.

Docker architecture consists of three main components:

Docker Engine: It is the runtime that runs and manages containers. It includes the Docker daemon (dockerd) running on the host machine and the Docker CLI (docker) used for interacting with the Docker daemon.
Docker Images: They are read-only templates used to create Docker containers.
Docker Containers: They are lightweight and isolated runtime environments created from Docker images.
6. Explain the terminology: Docker Compose, Docker File, Docker Image, Docker Container?

Docker Compose is a tool that allows you to define and manage multi-container applications. A Dockerfile is a text file that contains instructions for building a Docker image. It specifies the base image, environment variables, software dependencies, configuration settings, and commands to be executed during the image build process. A Docker image is a read-only template or snapshot that serves as the basis for creating Docker containers. A Docker container is a lightweight, isolated, and executable instance of a Docker image.

7. Can you tell the difference between Docker and Hypervisor?

Docker and a hypervisor are both technologies used for virtualization.


8. What is the difference between an Image, a Container, and an Engine?

Image: An image is a lightweight, standalone, and executable software package that includes everything needed to run a piece of software.

Container: A container is an instance of an image that runs as a separate and isolated process on a host operating system.

Engine: The engine often referred to as a container runtime or container engine, is responsible for managing the lifecycle of containers. The engine interacts with the underlying operating system’s kernel to create and manage isolated environments for containers, including resource allocation, networking, and storage.

9. What is a Docker namespace?

In Docker, namespaces are a key feature of the Linux kernel that enables process isolation and provide separate and independent environments for various system resources. Docker leverages namespaces to create lightweight and isolated containers. Some commonly used Docker namespaces are pid, net, mnt, uts, ipc.

10 . What is a Docker registry?

A Docker registry is a central repository for storing and distributing Docker images. The most commonly used Docker registry is Docker Hub.

11. What is the difference between the Docker command COPY vs ADD?

COPY command copies files or directories from the host machine to the container. ADD command also copies files or directories from the host machine to the container, but it has additional features like handling automatic extraction of compressed archives (such as tar, gzip, and bzip2) and retrieving files from remote URLs.

12. What is the Difference between the Docker command CMD vs RUN?

CMD command specifies the default command to be executed when a container is run and can be overwritten. Whereas, RUN executes commands during the image build process.

13. What is an ENTRYPOINT?

The ENTRYPOINT instruction in a Dockerfile is used to specify the command or script that should be executed when a container is run from the Docker image. It sets the primary command that will be executed within the container.

14. How is ENTRYPOINT different from the CMD command of Docker?

ENTRYPOINT gets executed post-container launch and cannot be overwritten. But a new command can be attached(appended).

15. Why do we use EXPOSE in the docker file?

The EXPOSE instruction in a Dockerfile is used to specify the ports on which a container will listen for connections. It does not publish or expose those ports to the host or the outside world. It is more like a documentation mechanism to inform users of the intended network ports used by the container.

16. How Will you reduce the size of the Docker image?

Choosing lightweight base images.
Installing only necessary dependencies.
Combining multiple RUN commands in the docker file into a single command.
Removing temporary and unnecessary files.
17. In what real scenarios have you used Docker?

This you can explain from your project experience. I have used Docker in a few real scenarios:

While working with CI/CD pipeline, to automate the build, testing, and deployment of applications. Docker containers provide a lightweight and portable unit that can be easily deployed to various platforms.
During the migration of applications to the cloud and supports hybrid cloud deployments. Docker’s portability and consistency helps in achieving flexibility and scalability in cloud deployments.
18. How to implement CI/CD in Docker?

Explain the full process to the interviewer.

The full implementation can be understood through the documentation from docker: CI/CD in Docker.

19. What is the lifecycle of a docker container?

The stages of the lifecycle of a docker container are as follows:

Create: The container is created based on an image, but not running.
Start: The container is started using the docker start command.
Run: The container is running and continues to execute the commands or services specified in the image.
Pause/Unpause: Pausing a container temporarily suspends its processes while unpausing resumes its execution without starting the container from scratch.
Stop: The container is gracefully stopped using the docker stop command.
Remove: The container is removed using the docker rm command.
20. Will data on the container be lost when the docker container exits?

By default, no data is preserved when the container exits.

21. If so, how do you preserve data when the container exits?

Docker volumes are a way to store and manage persistent data independently of the container’s lifecycle.
With bind mounts, data is stored on the host’s file system and remains available even after the container exits.
By using external storage solutions like NAS.
22. How do you view running containers?

By using the command:

docker ps
23. What is the command to run the container under a specific name?

By using — name with the docker run command:

docker run --name container_name image_name
24. How do you save a docker?

There are multiple ways to save or export a docker:

We can use the docker save command to save the container or image as a tar file.
docker save imagename > image.tar
We can use the docker export command to export the container or image as a tar file.
  docker export image_name > image.tar
25. How do you create a docker container based on an existing container?

By using the docker commit command:

docker commit existing_container new_container
26. What is the command to import an already existing docker image?

By using the docker load command, we can import an already existing command which was saved using the docker save command:

docker load -i <image.tar>
27. What is the command to delete a container?

We use the docker rm command:

docker rm container1_id container2_id
To delete all stopped containers, we can use the prune command:

docker container prune
28. What is the command to remove all stopped containers, unused networks, build caches, and dangling images?

The command is:

docker system prune -f
-f is used to bypass the confirmation prompt.

29. How can you monitor Docker containers and collect metrics for performance analysis?

By using the docker stats command, the real-time performance metrics for running containers can be obtained. It provides information on CPU usage, memory consumption, network I/O, and more.

30. How do you share Docker images with others?

We can use Docker Hub or any container registry as the central repository to share the docker images with our team members.
Or else we can export the docker image as a tar file and share it with others.
31. How do you remove a docker image and docker volume?

To delete an image:

docker rmi image_name
To delete a volume:

docker volume rm volume_name
32. How do you link multiple Docker containers together?

By using the docker network.
By setting environment variables.
By using docker-compose.
33. Explain the purpose of Docker Compose. How is it used?

Docker Compose is a tool that allows you to define and manage multi-container Docker applications. It simplifies the process of running multiple containers together, enabling you to define their configuration, dependencies, and network connections in a declarative YAML file.

The main purposes of Docker Compose are to define services, manage dependencies, create networks, simplify configurations, and help in development workflows.

To use Docker Compose, you define your application stack in a docker-compose.yaml file, and then use commands like docker-compose up and docker-compose down to manage the lifecycle of the containers.

34. Can we use JSON instead of YAML while developing a docker-compose file in Docker?

Yes. By using:

docker-compose -f docker-compose.json up
35. What features are provided by Docker Enterprise Edition instead of Docker Community Edition?

Docker Enterprise Edition provides certified Docker images and plugins. It also provides Active Directory or LDAP user integration, continuous vulnerability and security scans, and container app and image management features.

36. What are the security best practices when working with Docker?

Use officially certified images.
Regularly update images.
Do not provide all privileges to non-root use. Limit the privileges.
Secure the docker host.
Keep logging and monitoring the container activities.
Don’t store secure keys and configuration in a file or directory. Store them as environment variables.
Perform up-to-date security checks and keep updating the security vulnerabilities.

____________________
# Docker CMD vs ENTRYPOINT

Claro, tanto `ENTRYPOINT` como `CMD` son instrucciones en un Dockerfile que definen cómo se ejecutará un contenedor Docker y cuáles serán los comandos o argumentos predeterminados.

**1. CMD:**

- `CMD` define el comando predeterminado que se ejecutará cuando se inicie el contenedor, pero se puede sobrescribir fácilmente desde la línea de comandos al iniciar el contenedor.
- Puedes tener múltiples instrucciones `CMD` en tu Dockerfile, pero solo la última se aplicará.
- Si el usuario proporciona argumentos al iniciar el contenedor, estos se pasan como argumentos al comando especificado en `CMD`.

Ejemplo:
```Dockerfile
FROM ubuntu
CMD ["echo", "Hello, world!"]
```
En este caso, cuando inicies un contenedor basado en esta imagen, imprimirá "Hello, world!".

**2. ENTRYPOINT:**

- `ENTRYPOINT` especifica un comando que siempre se ejecutará cuando se inicie el contenedor. Puedes pensar en ello como el comando principal del contenedor.
- A diferencia de `CMD`, los comandos pasados en la línea de comandos al iniciar el contenedor se agregarán como argumentos al comando especificado en `ENTRYPOINT`.
- Puedes sobrescribir `ENTRYPOINT` también, pero no se sobrescribe completamente, sino que se anexa a los argumentos que se le pasan al iniciar el contenedor.

Ejemplo:
```Dockerfile
FROM ubuntu
ENTRYPOINT ["echo", "Hello,"]
```
Si ejecutas un contenedor basado en esta imagen con `docker run <nombre_de_la_imagen> World!`, imprimirá "Hello, World!".

**¿Cuándo usar cada uno?**

- **CMD:** Utiliza `CMD` cuando desees proporcionar valores predeterminados que sean fáciles de sobrescribir. Por ejemplo, podrías usarlo para especificar un comando predeterminado que el contenedor ejecutará cada vez que se inicie, pero que el usuario pueda reemplazar fácilmente si es necesario.

- **ENTRYPOINT:** Utiliza `ENTRYPOINT` cuando quieras que tu contenedor actúe como un ejecutable de forma predeterminada y siempre necesites ejecutar un comando específico al iniciar el contenedor. Es útil cuando quieres asegurarte de que ciertos comandos o configuraciones siempre se apliquen, incluso si el usuario intenta anularlos.

________________

# comando COPY

El comando `COPY` en un Dockerfile se utiliza para copiar archivos o directorios desde el sistema de archivos del host hacia el sistema de archivos del contenedor que se está construyendo.

La sintaxis básica del comando `COPY` es la siguiente:

```dockerfile
COPY <origen> <destino>
```

Donde:
- `<origen>` especifica la ruta en el sistema de archivos del host donde se encuentran los archivos o directorios que se desean copiar.
- `<destino>` especifica la ruta dentro del contenedor donde se copiarán los archivos o directorios desde el origen.

En el contexto de tu pregunta, `COPY . /app` indica que se copiará el contenido del directorio actual (representado por `.`) del contexto de construcción (es decir, donde se encuentra el Dockerfile y otros archivos relacionados) al directorio `/app` dentro del contenedor que se está construyendo.

Por ejemplo, si tienes una estructura de directorios como esta:

```
|-- Dockerfile
|-- app
|   |-- archivo1.txt
|   |-- archivo2.txt
```

y en tu Dockerfile tienes la instrucción `COPY . /app`, durante la construcción del contenedor, los archivos `archivo1.txt` y `archivo2.txt` se copiarán al directorio `/app` dentro del contenedor.

_________________________

ADD vs COPY

Claro, en un archivo Dockerfile, tanto `ADD` como `COPY` se utilizan para copiar archivos y directorios del sistema de archivos del host al sistema de archivos del contenedor que se está construyendo. Sin embargo, tienen algunas diferencias clave:

**1. `COPY`:**

- `COPY` simplemente copia archivos o directorios del host al sistema de archivos del contenedor.
- Es más transparente y directo en su funcionalidad.
- Se recomienda utilizar `COPY` cuando se copian archivos locales del host al contenedor y no se necesita ninguna funcionalidad adicional.

Ejemplo:
```Dockerfile
FROM alpine
COPY index.html /usr/share/nginx/html/
```
En este caso, estamos copiando el archivo `index.html` del directorio local al directorio `/usr/share/nginx/html/` dentro del contenedor.

**2. `ADD`:**

- `ADD` además de copiar archivos, también puede hacer cosas como descomprimir archivos tar y descargar archivos de URLs.
- Tiene funcionalidades adicionales que podrían no ser evidentes de inmediato.
- A menos que necesites explícitamente esas funcionalidades adicionales, es recomendable utilizar `COPY` por su transparencia.

Ejemplo:
```Dockerfile
FROM alpine
ADD https://example.com/file.tar.gz /tmp/
```
En este caso, estamos descargando un archivo `.tar.gz` de una URL y lo descomprimimos en el directorio `/tmp/` del contenedor.

**¿Cuándo usar cada uno?**

- **`COPY`:** Úsalo cuando simplemente necesites copiar archivos locales al contenedor y no necesites la funcionalidad adicional proporcionada por `ADD`. Es más explícito y recomendado para la mayoría de los casos.

- **`ADD`:** Úsalo si necesitas alguna de las funcionalidades adicionales que proporciona, como descompresión de archivos o descarga de archivos desde una URL. Sin embargo, ten cuidado al usar `ADD` para copiar archivos locales, ya que puede ocultar la intención del Dockerfile y causar confusiones.

https://docs.docker.com/engine/reference/builder/#env

# ARG vs ENV

Tanto `ENV` como `ARG` son instrucciones en un Dockerfile que se utilizan para definir variables, pero tienen diferentes propósitos y comportamientos:

**1. ARG (Argument):**

- `ARG` se utiliza para definir variables que solo están disponibles durante la construcción de la imagen.
- Estas variables se pueden pasar al Dockerfile desde la línea de comandos cuando se construye la imagen usando el argumento `--build-arg`.
- Las variables definidas con `ARG` no estarán disponibles en las capas finales de la imagen creada, lo que significa que no estarán disponibles para los contenedores basados en la imagen resultante.

Ejemplo:
```Dockerfile
ARG VERSION=latest
FROM ubuntu:$VERSION
```

Aquí, `VERSION` es una variable de argumento que se puede pasar durante la construcción de la imagen.

**2. ENV (Environment):**

- `ENV` se utiliza para definir variables de entorno que estarán disponibles tanto durante la construcción de la imagen como cuando se ejecuta un contenedor basado en esa imagen.
- Estas variables son útiles para configurar el entorno de ejecución dentro del contenedor, como configuraciones de aplicación, variables de ruta, etc.
- Las variables definidas con `ENV` están disponibles en todas las capas de la imagen y se heredan en los contenedores que se crean a partir de la imagen.

Ejemplo:
```Dockerfile
ENV NODE_ENV=production
RUN npm install --global some-package
```

En este ejemplo, `NODE_ENV` es una variable de entorno que se establece en "production" y estará disponible tanto durante la construcción de la imagen como cuando se ejecute un contenedor basado en esa imagen.

**Resumen:**

- Usa `ARG` para configurar valores durante el tiempo de construcción de la imagen, como versiones de paquetes o rutas de archivo.
- Usa `ENV` para configurar variables de entorno que afecten al entorno de ejecución de los contenedores basados en la imagen.

En resumen, `ARG` se utiliza para configurar valores durante la construcción de la imagen, mientras que `ENV` se utiliza para configurar variables de entorno que afectan al comportamiento de los contenedores basados en la imagen.

https://docs.docker.com/develop/develop-images/instructions/
