
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

read name
if [ -n "$name" ]; then
echo "Welcome $name"
exit 0
fi

 Working With Files and Folders
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

 Special Commands
sudo <command> 	Run a command with the security privileges of super user
nano <file> 	Opens the Terminal editor
open <file> 	Opens a file
<command> -h 	Show help about a command
man <command> 	Show the help manual of the command
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