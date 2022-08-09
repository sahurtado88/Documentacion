# BASH
are a simple text file containing a seres of commands we wan to automate running rather tan running them
begin with shebang must change executable CHMOD +X

## SHEBANG
#!bin/bash
#!bin/sh

#!/usr/bin/env bash

## WORKING WITH SPECIAL CHARACETrs

|Character| Function|
|---------|---------|
|"" or ''| Denotes whitespaces.Single quotes preserve literal meaning, double quotes allow substitutions|
|$| Denottes an exansion for use with variables, commands, substitutions, aritmetic substitutions,etc|
|\\ | Escape character|
|#| Comments|
|=| Assignment|
|[] or [[]]| test evaluates for either true or false|
|!|Negation|
|>>,<,>|input/output redirection|
|\||pipe.Sends theoutput of one command to the input of another|
|* or ?|Globs (aka wildcards). ? is a wildcard for a single character|
|~| HOMedirectory|
|env| environment variables|

## IMPLEMENTING and/or Lists
### AND lists (&&)

A string of commands where the next command is only executed if the previous command exited with a status zero

### OR lists (||)

A string of commands where the next command is only executed if the previous command exited with a non zero status

## EXIT STATUS

### Zero Exit Status
Implies the script or progrma ran to completion and everything is fine

### NON. Zero exit status
Result can vary based on the script or program that generated the exit status

#!/bin/bash
echo "creating backup directory" && mkdir ~/backup || echo "directory already exists"
echo "Copying files" && cp /usr/bin/* ~/backup || echo "Something went wrong"

#!/bin/bash
echo "creating backup directory" && mkdir ~/backup || echo "directory already exists"
echo "Copying files" && cp /usr/bin/* ~/backup || echo $? # exit code status

## REdirecting I/O

\> redirects to a file  ls -lR > directory-tree.txt

\>> redirects to a file, appending data

< Redirects file as input for a command

##  FIle descriptor
file descriptor 0 STDIN input data , 1 STDOUT, 2 STDERR

## Utility comand

SORT sort input and prints a sorted output
UNIQ removes duplicate lines of data from the input stream
GREP searches incoming lines for matching text
FNT receives incoming text and output formatted text
TR transalte characters
HEAD/TAILS output the first/last few lines of file
SED Stream Editor more powerfull tahn tr as a character translator
AWK an entire programming language

##LAB 1

You work for Universe Incorporated. One of your users - cloud_user - has placed a ticket to have a script written to back up his work directory to a new directory named work_backup in the his home directory. The script should also log all actions to a log file stored in the user's home directory.

Ensure the script works correctly by running it and verifying the files are backed up.

If you get stuck, feel free to check out the solution video or the detailed instructions in the lab guide. Good luck!


#!/bin/bash

echo "creating backup directory" >> /home/cloud_user/backup_logs
mkdir /home/cloud_user/work_backup

echo "Copying files" >> /home/cloud_user/backup_logs
cp -v /home/cloud_user/work/* /home/cloud_user/work_backup/ >> /home/cloud_user/backup_logs
echo "Finished Copying files" >> /home/cloud_user/backup_logs


## VARIABLES

- Bash variables do not have data types
- All bash variables start with $ when being referenced
- When setting a variable, do not preface it with $
- variable names should contain only a-z, A-Z, 0-9 and _ character
- varaible lenght should be less tna or equal to 20 characters
- Don't provide space on either sides of equal symbol
- We can store the output of a commnad into a variable as follows
    - anyVariable=$(command)
    - anyVariable=\`command`
- We can assign one variable value/datainto another using:
    - Name="Shell scripting"
    - NewName=$Name
    - NewName=${Name}


TM="SERGIO"
echo $TM
SERGIO
echo $'TM'
TM
echo $"TM"
TM
(base) sergio@sergio-S301LA:~$ echo $`TM`
TM: no se encontró la orden
echo $(TM)
TM: no se encontró la orden
(base) sergio@sergio-S301LA:~$ echo $("TM")
TM: no se encontró la orden

(base) sergio@sergio-S301LA:~$ echo $('TM')
TM: no se encontró la orden

(base) sergio@sergio-S301LA:~$ echo $(`TM`)
TM: no se encontró la orden

```
#!/bin/bash
dockerStatus=$(systemctl status docker | awk '/Active/ { print $3 }' | tr -d "[()]")
dockerVersion=$(docker -v | awk '/version/ { print  $3 }' | tr -d ",")
echo "The Docker Status is: $dockerStatus"
echo "The Docker version is: $dockerVersion"
```



### types of variables

- **System Varaibles**:
    - Creates and maintained by operating system itself
    - this type of variable are defined in CAPITAL LETTERS
    - We can see them by using set command ex HOME, USER

- **User defined variables**
    - created and maintened by the user
    - this type of variables are defined in lower letters, but we can also take combination of upper and lower case letters



### BASH FUNCTION

function in Bash is used to group code in a logical way

function quit {  DO THINGS}
quit

### SCOPE VARIABLES

- NORMAL SHELL ENVIRONMENT

- SCRIPT GLOBAL VARIABLE

- SCRIPT LOCAL VARIABLE


### ARRAYS BASH

NUMBER=(1 2 3 four 5 six seven "this is eight")

echo $NUMBER result 1

echo NUMBER ${NUMBER[2]} result 3

echo ${NUMBER[@] result (1 2 3 four 5 six seven "this is eight")

echo ${#NUMBER} cantidad de datso arreglo

echo ${!NUMBER[@]} posiciones del arreglo 0 1 2 3 4 5 6 7 

NUMBER+=(9) agrega un valor al array 

echo ${NUMBERS[@]:2:5}  sacar valores del array de posicion inicial a final resultado3 four 5 six seven

echo ${NUMBERS[@]:2} de la posicion 2 hasta le final resultdo 1 2 3 four 5 six seven "this is eight"

## SUBSTTUTIONS

#!/bin/bash

MYLOG=$1
DATETIME=$(date +"%D %T")

echo "TIMEStam befor work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup
sleep 3
echo "Copying Files" >> /home/$USER/$MYLOG
cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp after work is done $(date +"%D %T")" >>/home/$USER/$MYLOG
echo $DATETIME >> /home/$USER/$MYLOG


## FLOW CONTROL

### FOR LOOP

#!/bin/bash

for i in $( ls ); do
    echo item: $i
done

for i in $(seq 1 10); do
    touch file$i
done

### WHILE LOOP

COUNTER=0
while [ $COUNTER -lt 10];do
    echo the counter is $COUNTER
    let COUNTER-=1
done

### UNTIL LOOP

## SIGNAL
Program in LINUX are managed partially by signals from the kernel

SIGKILL
SIGINT
SIGTERM
SIGUSR1

## TRAPS

## EXIT STATUS, Tests and Builtins IF

###  HERODOC
A heredoc is a special type of redirection that allows you to pass multiple lines of input to a command

 - << DELIMETER mantiene identacion y pone valor de las variables
 - << "DELIMETER" no sustituye las variables
 - <<- "DELIMETER  quita identacion

 ### HERESTRING
A herestring is a pared-down form of a heredoc


## Debugging Bash scripts 

 We can go with set command and We have different options with set command.
Syntax:
- set [options]
- No Options: To list system defined variables
- set -n No Execution, Purely for syntax check.
- set -x Prints the command before executing it in script
- set -e Exit Script if any command fails

bash -x archivo.sh

## Exit status of a commnad

- echo $? valida el codigo del comando ejecutado previamente 0 es exitoso y otro numero es error
    - 127 command not found
    - 1 command failed during execution
    - 2 incorrect command usage

## Basic operation on String

````
- Defining a string variable
    - x=shell / y=“Shell scripting” / cmdOut=$(date)
-  Displaying the string variable value
    - echo $x / echo ${x}
- Finding the length of a string
    - xLength=${#x}
- Concatenation of strings
    - xyResult=$x$y
- Convert Strings into lower/upper case
  -  xU=${x^^}, yL=${y,,}
- Replacing the part of the string using variable
 newY=${y/Shell/Bash Shell} or we can also use sed command
- Slicing the string/sub-string
 ${variable_name:start_position:length}

````

## String operations on path

- realpath : Converts each filename argument to an absolute pathname but it do not validate the path.
-  basename:
    - Strips directory information
    - Strips suffixes from file names
- dirname : It will delete any suffix beginning with the last slash character and return the result

## input

Para esperar un valor del usuario se usa read, para dar la instruccion d elo que se espera que se escriba se ua la opcion read -p "mensaje"

por defecto si no se pone una variable para un read esta se almacena en $REPLY

````
#!/usr/bin/bash
<< mycom
read -p "Enter your name: " my_name
my_name_up=${my_name^^}
echo "Your name in upper-case is: $my_name_up"
mycom

read -p "Enter your name: " 
echo "$REPLY"
````

````
#!bin/bash

echo "what is your name?"
read name ## read is get user input

echo "Good morning $name"
sleep 1
echo "you're looking good today $name"
sleep1

````


````
#!bin/bash

name=$1 ## Position parameter A.K.A arguent
compliment=$2

echo "Good morning $name"
sleep 1
echo "ypu're looking good today $name"
sleep1
echo "you have the best $compliment"

execution ./script.sh Arguments ($1 $2)

````

````
#!bin/bash

name=$1 ## Position parameter A.K.A arguent
compliment=$2

user=$(whoami) ## variable equal to command
date=$(date)
whereami=$(pwd)

echo "Good morning $name"
sleep 1
echo "ypu're looking good today $name"
sleep1
echo "you have the best $compliment"
sleep 1
echo "You are currently logged in as $user and you are in the directory $whereami. also today is: $date

execution ./script.sh Arguments ($1 $2)


name=Sergio

echo "$name"  output es Sergio

echo "$(name)" output Command 'name' not found

echo "$'name'" output $'name'

 echo "$`name`" otput Command 'name' not found

 ````

 if argument exceed 9 in script need {} example echo "$10{}"
````
 $# trae el numero de argumentos
 $@ or $*  trae todos los argumentos
````
 ## Arithmetic Operators

 ````
#!/usr/bin/bash
x=5
y=39
((sum=x+y))
echo "the addition of $x and $y is: $sum"

result= $(bc<<< "scale=3;$y/$x")
echo "the division of $y with  $x is; $result #para flotantes se debe instalar bc scale el numero de decimales a usar)
````

## Case Statement

- syntax 
````
    case $opt in 
        opt1)
            statements
            ;;
        opt2)
            statements
            ;;
        *)
            statements
            ;;
    esac                
````
````
#!/usr/bin/bash
clear
read -p "Enter your file extention: " ext
case $ext in
	".txt")
		ls -lrt *.txt
		;;
	".sh")
		ls -lrt *.sh
		;;
	*)
		echo "Sorry!. You entered invalid file extention"
		;;
esac

#!/usr/bin/bash
read -p "Enter any number: " num
case $num in
   [0-9])
	   echo "you enterd single number"
	   ;;
    [a-z])
	    echo "you entered lower case alph"
	    ;; 
    [A-Z])
	    echo "you enterd upper case alph"
	    ;;
    *)
	    echo "Unable to identify your input"
	    ;;

esac
````

