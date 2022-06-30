
Copiar archivo a otra carpeta
Para copiar un archivo de una carpeta a otra es muy fácil, la instrucción a ejecutar es la siguiente.

cp fichero_a_copiar carpeta_destino


Copiar carpeta o directorio
Si queremos copiar una carpeta o directorio de forma recursiva en Linux usaremos el parámetro -r la instrucción es la siguiente. La -r indica que copie el directorio recursivamente, en este caso también se puede usar -R.

cp -r carpeta_a_copiar destino

Ejemplos del comando cp
En los ejemplos suponemos que estamos situados en la ruta del archivo o directorio que vamos a copiar, si no tendríamos que poner su ruta.

 

    Si queremos copiar el fichero test.txt a la carpeta /home/solvetic, usamos lo siguiente:

cp test.txt /home/solvetic

    Si queremos copiar una carpeta llamada webSolvetic al directorio var:

sudo cp -r web /var

Observa que el directorio var en Linux no tiene permisos para el usuario, por lo tanto, tenemos que ejecutarlo como root, por eso se ha puesto sudo, y la -r porque web es una carpeta.


Copiar un archivo a varias carpetas a la vez Linux

Es posible que queramos copiar un archivo a varias carpetas ala vez usando comandos y por eso los siguientes pasos te mostrarán a cómo copiar un archivo a varias carpetas a la vez Linux. Para ello usaremos el comando echo y xargs.

 

Paso 1

Para utilizar el comando echo nos basaremos en la siguiente sintaxis:

echo destino1 destino2 etc | xargs -n 1 cp archivo a copiar

Paso 2

Así podemos desglosar esta estructura en:

 

echo
Nos permite mostrar en pantalla texto y poner la barra delante de xargs permite tomar valores de este comando.

 

xargs
Permite copiar archivos con comando cp en función de los destinos.

 

-n 1
Indica que solo se agrege uno de los argumentos a cp.

 

Tras ver la sintaxis en nuestro ejemplo encontraremos lo siguiente:

echo  /home/Solvetic/Solvetic /home/Solvetic/Pruebas /home/Solvetic/Escritorio/Test | xargs –n 1 cp /home/Solvetic/Escritorio/Solvetic.png


Copiar archivos en Linux a escritorio remoto

Para poder copiar archivos en directorio remoto usaremos el comando rsync.

 

Paso 1

Para copiar archivos a un equipo remoto usaremos la siguiente sintaxis. Cuando ingresemos la IP en remoto tendremos que poner la contraseña root de este equipo.

rsync -avz archivo/ root@192.168.0.xxx:/destino/


También podemos hacer lo contrario, copiar un directorio remoto a nuestro servidor local. Para ello usaremos la siguiente sintaxis:

rsync -azvh root@192.168.0.xxx:/destino/ directorio/

Mover archivos en Linux con mv

Para mover un archivo o directorio usaremos el comando mv, la instrucción es la siguiente. A diferencia del copiar no necesitamos ningún parámetro extra para mover una carpeta.

mv archivo_o_carpeta destino

5. Borrar archivos Linux con rm

Para poder eliminar archivos desde la terminal usaremos el comando rm. Aunque por defecto no borra directorios, combinándolo con -r podremos eliminar los contenidos. Su sintaxis general es:

rm [-opciones] [-d|s] archivo


Eliminar varios archivos a la vez
Disponemos de diferentes opciones adicionales para poder añadir al comando rm. Podemos borrar diferentes archivos a la vez con este comando también:

Rm archivo1.txt archivo 2.txt
rm archivo1_directorio archivo2_directorio

--Renombrar Archivos
mv nombrearchvioviejo nombre archivo nuevo

--Crear archivos
touch nombre dle archivo

--Permisos Archivos


    The first three characters show the permissions for the user who owns the file (user permissions).
    The middle three characters show the permissions for members of the file’s group (group permissions).
    The last three characters show the permissions for anyone not in the first two categories (other permissions).

    r- read x- execute w- write


    u: User, meaning the owner of the file.
    g: Group, meaning members of the group the file belongs to.
    o: Others, meaning people not governed by the u and g permissions.
    a: All, meaning all of the above.


    –: Minus sign. Removes the permission.
    +: Plus sign. Grants the permission. The permission is added to the existing permissions. If you want to have this permission and only this permission set, use the = option, described below.
    =: Equals sign. Set a permission and remove others.

EXAMPLE chmod u=rw,og=r new_file.txt  give user read and write and other and group only read to de file new_file.txt

If we had wanted to include files in subdirectories, we could have used the -R (recursive) option.

chmod -R o-r *.page

CHMOD in numericla form

    0: (000) No permission.
    1: (001) Execute permission.
    2: (010) Write permission.
    3: (011) Write and execute permissions.
    4: (100) Read permission.
    5: (101) Read and execute permissions.
    6: (110) Read and write permissions.
    7: (111) Read, write, and execute permissions.

chmod 664 *.page give read and write to user an group and only read to others

https://www.howtogeek.com/437958/how-to-use-the-chmod-command-on-linux/


Listar y observar permisos de todos los archivos

ls -al

listas todos los objetos incluso ocultos

ls -a

concatenar

cat file1.txt file2.txt muestra en pantalal la union de los dos archivos

cat file1.txt file2.txt > filecompleto.txt lleva la concatenacion de los archivos 1 y 2 a un nuevo archivo llamado filecompleto.txt

cat file5.txt >> file4.txt para realizar un append (agregar en vez de reemplazar) de la data copiando las nuevas lineas de file5 al final de file4



SUDO super usuario DO

SUDO BASH

SU usuario cambiar usuario





# DIRECTORY LINUX

/ Root

~/BIN directorio estatico donde se almacenan los binarios
~/SBIN binarios relativos a tareas propias del SO y solo son gestionadas por el usuario root
~/BOOT directorio estatico archvios y ejecutables para el arranque del sistema
~/DEV dispositivos de almacenamiento en forma de archvios
~/ETC Almacenar archvios de configuracion no deberia tener binarios
~/HOME directorio de los usuraios estandar
~/LIB bibliotecas esenciales para ejecutar los binarios de /BIN y/o  /SBIN existe /LIB&$ aplicaciones de 64 bits
~/MEDIA representa los puntos de montaje de volumenes logicos
~/OPT archvios solo lectura que son partes de programas autocontenidos 
~/PROC informacion de los procesos y aplicaciones que se estan ejecutando
~/ROOT el home del usurio Root o superusuario
~/SRV almacenar arcvhivos y directorios relativos a servidores
~/SYS contiene archivos virtuales informacion del kernel
~/TMP archivos temporales se borra de manera automatica
~/USR user system resource archivos solo lectura software gestores
~/VAR archvios con informacion del sistema registro del sistema


# BASH

[BASH Guide](https://guide.bash.academy/)

se inicia con '#! /bin/bash

echo

'#se usa para comentarios d euna linea
: ' todo lo que se quiere comentado'
comentario que se vean en pantalla
    cat << kreativ
    this is hello cretive text
    and another line
    kreativ

IF en bash

#! /bin/bash

count=10

if [ $count -eq 9 ]
then
    echo "the conditions is true"
else 
    echo "the condition is false"
fi

-------------------

#! /bin/bash

count=10

if (( $count < 9 ))
then
    echo "the conditions is true"
elif (($count <= 9))
then
    echo "the conditions is true"
else 
    echo "the condition is false"
fi


----------- imprimir numeros impares hasta el 99

for (( c=1; c<100; c++ ))
do  
  let resto=$c%2
    if [ $resto -ne 0 ]; then
    echo " $c"
    fi
done

-------------- imprimir de 1 al 50
for i in {1..50}
do  
   echo " $i"
done

--------------recibir variable por pantalla
```
read name
if [ -n "$name" ]; then
echo "Welcome $name"
exit 0
fi
```
 Working With Files and Folders

 ```
cd  	Shows your home directory
cd <folder>  	Change to a specific directory
cd ~  	Home directory, e.g. ‘cd ~/folder/’
cd / 	Root of drive
ls  	Shows a listing of all files in the current directory
ls -C 	Sort files or entries by size
ls -lt 	List the files sorted by time modified (most recent first)
ls -l  	Shows a long listing of all files in the current directory.
ls -a 	Listing including hidden files
ls -lh 	Long listing with human readable file sizes ( KB, MB, or GB)
ls -R  	Shows the entire contents of folder recursively
top 	Displays the active processes. Press q to quit 
q  	Exit
clear 	Clear the screen
touch <file> 	Create a new file with no extension
pwd 	Full path to the working directory
.. 	Parent directory
ls -l .. 	Long listing of parent directory
cd ../../ 	Move 2 levels up
. 	Current folder 
cat 	The current folder
rm <file> 	Remove a file
rm -i <file> 	Remove with confirmation
rm -r <dir> 	Remove a directory and its contents - Use with caution!
rm -f <file> 	Force a removal without confirmation
rm -i <file> 	Will display prompt before removal
cp <file> <newfile> 	Copy a file to file
cp <file> <dir> 	Copy a file to a directory
mv <file> <new filename> 	Move/Rename a file
mkdir <dir> 	Create new directory named <dir>
mkdir <dir> <dir2> <dir3> 	Create multiple directories at once
mkdir -p <dir>/<dir> 	Create nested directories 
rmdir <dir> 	Remove an entire directory ( only works on empty directories )
find <dir> -name <"file"> 	Find all files named <file> inside <dir>. Use wildcards (*) to search for partial filenames
```
 Special Commands
 ```
sudo <command> 	Run a command with the security privileges of super user
nano <file> 	Opens the Terminal editor
open <file> 	Opens a file
<command> -h 	Show help about a command
man <command> 	Show the help manual of the command

```
Control Permissions
ls -ld 	Display the default permission for a home directory
ls -ld/<dir> 	Display the read, write, and access permission of a particular folder
chmod 755 <file> 	Change the permission of a file to 755
chmod -R 600 <dir> 	Change the permission of a folder (and its contents) to 600
chown <user>:<group> <file> 	Change the ownership of a file to user and group. Add -R to include folder contents
Network and Server Commands
ping <host> 	Ping a host and display its status
whois <domain> 	Output WHOIS information about a domain
curl -O <url/to/file> 	Download a file via HTTP, HTTPS, or FTP
ssh <username>@<host> 	Establish an SSH connection to <host> with user <username>
scp <file><user>@<host>:/remote/path 	Copy a <file> to a remote <host>

 Download Files From the Internet

To quickly download a file from the internet use the command below.

curl -O URL of the file you want to download

https://www.lifewire.com/mac-terminal-commands-4774997

encriptar en base64

echo -n 'username' | base64


## Compresion archivos ##

### TAR ###
Para poder empaquetar ficheros, utilizamos el siguiente comando:

tar -cvf archivo.tar /dir/a/comprimir/

    -c : indica a tar que cree un archivo.
    -v : indica a tar que muestre lo que va empaquetando.
    -f : indica a tar que el siguiente argumento es el nombre del fichero.tar.

En cambio para poder desempaquetar los ficheros .tar, utilizamos el siguiente comando:

tar -xvf archivo.tar

    -x : indica a tar que descomprima el fichero.tar.
    -v : indica a tar que muestre lo que va desempaquetando.
    -f : indica a tar que el siguiente argumento es el nombre del fichero a desempaquetar.

Si se quiere ver el contenido de un fichero .tar, se utiliza el siguiente comando:

tar -tf archivo.tar

    -t : Lista el contenido del fichero .tar
    -f : indica a tar que el siguiente argumento es el nombre del fichero a ver.

### Ficheros gz ###

Para comprimir ficheros en formato .gz, se utiliza el siguiente comando:

gzip -9 fichero

    -9 : le indica a gz que utilice el mayor factor de compresión posible.

Para descomprimir ficheros .gz, se utilizara el siguiente comando:

gzip -d fichero.gz

    -d : indica descompresión

### Ficheros bz2 ###

Para comprimir ficheros en formato bz2, se utiliza el siguiente comando:

bzip fichero

Para descomprimir ficheros .bz2, se usa el comando siguiente:

bzip2 -d fichero.bz2

    -d : indica descompresión.

    Nota: Tanto el compresor gzip como bzip2, solo comprimen ficheros, no directorios, para comprimir directorios (carpetas), se debe de usar en combinación con tar.

### Ficheros tar.gz ###

Para comprimir ficheros en formato tar.gz, se utiliza el siguiente comando:

tar -czfv archivo.tar.gz ficheros

    -c : indica a tar que cree un archivo.
    -z : indica que use el compresor gzip
    -f : indica a tar que el siguiente argumento es el nombre del fichero.tar
    -v : indica a tar que muestre lo que va empaquetando

Para descomprimir ficheros con extensión tar.gz, se usa el siguiente comando:

tar -xzvf archivo.tar.gz

    -x : le dice a tar que extraiga el contenido del fichero tar.gz
    -z : le indica a tar que esta comprimido con gzip
    -v : va mostrando el contenido del fichero
    -f : le dice a tar que el siguiente argumento es el fichero a descomprimir.

Para poder ver el contenido de un fichero comprimido en tar.gz, se usa el siguiente comando:

tar -tzf archivo.tar.gz

### Ficheros tar.bz2 ###

Para comprimir en tar.bz2 usaremos un «truco», mediante el uso del parámetro pipeline ( | ). Esto permite hacer que dos programas trabajen «juntos».

tar -c ficheros | bzip2 > archivo.tar.bz2

Para descomprimir ficheros tar.bz2, se utiliza el siguiente comando:

bzip2 -dc archivo.tar.bz2 | tar -xv

Y para ver el contenido de un fichero tar.bz2, se usa el siguiente comando:

bzip2 -dc archivo.tar.bz2 | tar -t

### Ficheros zip ###


Para poder comprimir en formato zip, se usara el comando siguiente:

zip archivo.zip ficheros a comprimir

Para poder descomprimir los ficheros zip, se usa el siguiente comando:

unzip archivo.zip

Para ver el contenido de un fichero zip, se pone el siguiente comando:

unzip -v archivo.zip

### Ficheros rar ###

Para comprimir en formato rar, se usara el siguiente comando:

rar -a archivo.rar ficheros

Para descomprimir ficheros en formato rar, se utiliza el siguiente comando:

unrar -x archivo.rar

Para ver el contenido de un fichero rar, se usa el siguiente comando:

unrar -v archivo.rar
unrar -l archivo.rar

## CRONTAB ##

The crontab is a list of commands that you want to run on a regular schedule, and also the name of the command used to manage that list.

MIN HOUR DOM MON DOW CMD

Crontab Fields and Allowed Ranges (Linux Crontab Syntax)

Field    Description    Allowed Value
MIN      Minute field    0 to 59
HOUR     Hour field      0 to 23
DOM      Day of Month    1-31
MON      Month field     1-12
DOW      Day Of Week     0-6
CMD      Command         Any command to be executed.

30 08 10 06 * /home/maverick/full-backup

30 – 30th Minute
08 – 08 AM
10 – 10th Day
06 – 6th Month (June)
* – Every day of the week

View Current Logged-In User’s Crontab entries : To view your crontab entries type crontab -l from your unix account.

To schedule a job for every minute using Cron.
Ideally you may not have a requirement to schedule a job every minute. But understanding this example will will help you understand the other examples.

* * * * * CMD

To schedule a job for more than one time (e.g. Twice a Day)

The following script take a incremental backup twice a day every day.

This example executes the specified incremental backup shell script (incremental-backup) at 11:00 and 16:00 on every day. The comma separated value in a field specifies that the command needs to be executed in all the mentioned time.

00 11, 16 * * * /home/maverick/bin/incremental-backup

00 – 0th Minute (Top of the hour)
11, 16 – 11 AM and 4 PM
* – Every day
* – Every month
* – Every day of the week

    Cron Job everyday during working hours :
    This example checks the status of the database everyday (including weekends) during the working hours 9 a.m – 6 p.m

    00 09-18 * * * /home/maverick/bin/check-db-status

    00 – 0th Minute (Top of the hour)
    09-18 – 9 am, 10 am, 11 am, 12 am, 1 pm, 2 pm, 3 pm, 4 pm, 5 pm, 6 pm
    * – Every day
    * – Every month
    * – Every day of the week
    Cron Job every weekday during working hours :
    This example checks the status of the database every weekday (i.e excluding Sat and Sun) during the working hours 9 a.m – 6 p.m.

    00 09-18 * * 1-5 /home/maverick/bin/check-db-status

    00 – 0th Minute (Top of the hour)
    09-18 – 9 am, 10 am, 11 am, 12 am, 1 pm, 2 pm, 3 pm, 4 pm, 5 pm, 6 pm
    * – Every day
    * – Every month
    1-5 -Mon, Tue, Wed, Thu and Fri (Every Weekday)

7.To schedule a background Cron job for every 10 minutes.
Use the following, if you want to check the disk space every 10 minutes.

*/10 * * * * /home/maverick/check-disk-space

It executes the specified command check-disk-space every 10 minutes through out the year. But you may have a requirement of executing the command only during certain hours or vice versa. The above examples shows how to do those things.Instead of specifying values in the 5 fields, we can specify it using a single keyword as mentioned below.

There are special cases in which instead of the above 5 fields you can use @ followed by a keyword — such as reboot, midnight, yearly, hourly.

Cron special keywords and its meaning

Keyword    Equivalent
@yearly    0 0 1 1 *
@daily     0 0 * * *
@hourly    0 * * * *
@reboot    Run at startup.

8.To schedule a job for first minute of every year using @yearly
If you want a job to be executed on the first minute of every year, then you can use the @yearly cron keyword as shown below.This will execute the system annual maintenance using annual-maintenance shell script at 00:00 on Jan 1st for every year.

@yearly /home/maverick/bin/annual-maintenance

9.To schedule a Cron job beginning of every month using @monthly
It is as similar as the @yearly as above. But executes the command monthly once using @monthly cron keyword.This will execute the shell script tape-backup at 00:00 on 1st of every month.

@monthly /home/maverick/bin/tape-backup

10.To schedule a background job every day using @daily
Using the @daily cron keyword, this will do a daily log file cleanup using cleanup-logs shell script at 00:00 on every day.

@daily /home/maverick/bin/cleanup-logs "day started"

11.To execute a linux command after every reboot using @reboot
Using the @reboot cron keyword, this will execute the specified command once after the machine got booted every time.

@reboot CMD

## Linux package manager
On Linux, the package manager will change based on the Linux distribution you choose.

|Distribution(s)|	Package manager|
|-|-|
|Ubuntu, Debian|	apt-get|
|Red Hat, CentOS|	yum|
|OpenSUSE|	zypper|
|Fedora|	dnf|

