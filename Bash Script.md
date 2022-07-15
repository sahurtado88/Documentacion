# BASH
are a simple text file containing a seres of commands we wan to automate running rather tan running them
begin with shebang must change executable CHMOD +X

## SHEBANG
#!bin/bash
#!bin/sh

##WORKING WITH SPECIAL CHARACETrs

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





````
#!bin/bash

echo "what is your name?"
read name ## read is get user input

echo "Good morning $name"
sleep 1
echo "ypu're looking good today $name"
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