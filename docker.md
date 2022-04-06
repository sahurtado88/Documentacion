# DOCKER

## DOCKER FILE
Docker can build images automatically by reading the instructions from a Dockerfile. A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

The docker build command builds an image from a Dockerfile and a context. The build’s context is the set of files at a specified location PATH or URL. The PATH is a directory on your local filesystem. The URL is a Git repository location.

The build context is processed recursively. So, a PATH includes any subdirectories and the URL includes the repository and its submodules. This example shows a build command that uses the current directory (.) as build context:

 docker build .

 o use a file in the build context, the Dockerfile refers to the file specified in an instruction, for example, a COPY instruction. To increase the build’s performance, exclude files and directories by adding a .dockerignore file to the context directory. For information about how to create a .dockerignore file see the documentation on this page.

Traditionally, the Dockerfile is called Dockerfile and located in the root of the context. You use the -f flag with docker build to point to a Dockerfile anywhere in your file system.

 docker build -f /path/to/a/Dockerfile .

 Una vez ya sabemos la teoría de docker y también ya lo tenemos instalado (tanto en Linux como en Windows) vamos a ver los primeros comandos para iniciarnos.

Los comandos los vamos a ejecutar desde la terminal, tanto en Windows como en Linux.

Resumen del artículo [ocultar]

    Docker images
    Docker run
    Docker ps
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

El comando para probar que se ha instalado correctamente y revisar la versión es:

docker --version

Docker CHEATSHEET (comandos más usados) 0
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