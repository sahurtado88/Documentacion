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
|:<<comment   comment| Multiline commentComments|
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

2>&1
At first, 2>1 may look like a good way to redirect stderr to stdout. However, it will actually be interpreted as "redirect stderr to a file named 1".

& indicates that what follows and precedes is a file descriptor, and not a filename. Thus, we use 2>&1. Consider >& to be a redirect merger operator.

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

```
TM="SERGIO"
echo $TM
SERGIO
echo $'TM'
TM
echo $"TM"
TM
echo $`TM`
TM: command not found
echo $(TM)
TM:  command not found
echo $("TM")
TM: command not found

echo$ echo $('TM')
TM: command not foundn

echo $(`TM`)
TM: command not found

echo$(`ls`)
bash: adhoc.sh: command not found

echo $(ls) or echo $("ls") or echo $('ls') show the list directory
```

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
```
#!/bin/bash

for i in $( ls ); do
    echo item: $i
done

for i in $(seq 1 10); do
    touch file$i
done
```
### WHILE LOOP
```
COUNTER=0
while [ $COUNTER -lt 10];do
    echo the counter is $COUNTER
    let COUNTER-=1
done
```
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

## Test command

- It is a command to judge conditions
- Simply syntax:

test condition or [condition] or [[condition]]

### Comparion Operators with test command

![](./Images/comparasionoperators.png)
0 is true 1 is false

### File text operators

![](./Images/filetextoperators.png)
0 is true 1 is false

## Command chaining operators

are useful to combine several commands so that we can write simple and short shell scripts

chainging operators are:
 - semi colon ; cmd1 ; cmd2 run cmd1 and cmd2, sin importar si es exitoso o no el cmd1 which jenkins; ls
 - logical and && cmd1 && cmd2 run cmd2 only if cmd1 succeeded
 - logical or || cmd1 || cmd2 run cmd2 only if cmd1 failed which apache2 || echo "apache2 is not installed"
 - logical and or operator && || cm1 && cmd2 || cmd3 run cmd2 if cmd1 is success else run cmd3

 2>&1 redirects standard error (2) to standard output (1), which then discards it as well since standard output has already been redirected.

 >> /dev/null redirects standard output (stdout) to /dev/null, which discards it.

 El número 1 representa a la salida estándar stdout y el número 2 representa a la salida de errores stderr.

2>&1
Aunque no es totalmente preciso, este es uno de los trucos que puedes utilizar para acordarte: utilizar 2>1 puede parecer una buena idea para redirigir los errores a la salida estándar. Sin embargo, esto significa "redirige la salida de errores a un archivo llamado 1". Así que gracias al símbolo & podemos distinguir los archivos normales de los descriptores especiales: 1 es un archivo llamado 1 y &1 es el descriptor de la salida estándar (stdout).

## Executing block of code using {}

```
#!/usr/bin/env bash
which docker && { echo "docker is installed on this host" ; echo "the docker version is: $(docker -v)" ; }

```
```
#!/usr/bin/env bash
which apache2 && { echo "apache is installed" ; echo "apache version info is: $(apache2 -v)" ; } || echo "apache is nt intalled"
```

## If- else condition statement

syntax:
    cmd 1 && cmd2

    if cmd1
    then
        cmd2
    fi    

```
#!/usr/bin/env bash
if  which apache2 2>dev/null 1>dev/null
then
   echo "apache is installed"
   echo "apache version info is: $(apache2 -v)" 
fi
```
```
#!/usr/bin/env bash
which docker 2>&1 1>dev/null
if [[ $? -eq 0 ]] 
then
   echo "docker is installed"
   echo "docker version info is: $(docker -v)" 
fi
```

syntax:
    cmd 1 && cmd2 || cmd3

    if cmd1
    then
        cmd2
    else
        cmd3    
    fi    

```
#!/usr/bin/env bash
if which apache2 2>&1 1>/dev/null
then
    echo "apache is installed"
    echo "apache version is: $(apache2 -v)"
else
    echo "apache is not installed"
```

## Simple sheel script to verify the user is root and user is having sudo

```
#!/usr/bin/env bash
userId=$(id -u)
[[ $userId -eq 0]] && echo"you are root" || echo"you are not root"
```
 ```
#!/usr/bin/env bash
userId=$(id -u)
if [[ $userId -eq 0]] 
then
    echo"you are root"
else
    echo"you are not root"
fi
 ```

 sudo -v saber si un usuario tiene sudo privilegios

 ```
#!/usr/bin/env bash
sudo -v 1>/dev/null 2>/dev/null echo "the user $(id -un) is having sudo privilages" || echo "the user $(id -un) is not having sudo privileges on this host $(hostname)"
 ```

 ## Shel script to star docker service

 ```
 #!/usr/bin/env bash
if [[ S(id -u) -eq 0]]
    then
        if systemct status docker 1>/dev/null 2>/dev/null
            then
             echo "already docker is up and running
        else
            echo "Starting docker service ..."
            systemctl start docker
            echo "Successfully started docker service"
         fi
    else
        if sudo -v 1>/dev/null 2>/dev/null
            then
                echo "already docker is up and running"
        else
            echo "starting docker service ..."
            sudo systemctl start docker
            echo "successfully started docker service"    
        fi
    else
    echo "sorry, you are not allowed to start docker service, beacuse you are not the root user and also dont have sudo privileges"
    fi
fi
```
## Logical operator

- Logical and && or -a

```
#!/usr/bin/env bash
read -p "enter your number: " num
if [[ $num -ge 50 ]] && [[ $num -le 100]]
# if [ $num -ge 50 -a $num -le 100]
then
    echo "$num is in the range of 5 - 100"
else
    echo "$num is in the range of 5 - 100"
```
- Logical OR || or -o

```
#!/usr/bin/env bash
read -p "enter your confirmation to start docker: (say yes or no)" cnf
if [[ $cnf == "yes" ]] || [[ $cnf == "y" ]]
#if [ $cnf == "yes" -o $cnf == "y" ]
then
    echo "starting docker..."
    sudo systemctl start docker
else
    echo "skipping"
fi
```
- Logical Not ! will return true when condition is false and return false if the condition is true

## Difference between [] and [[ ]]

- [[ is the improvement version of [
- [[ have several benefits compare to [
-  They are:
    - No need to use quotes to handle empty strings.
    - We can also use < and > operators for strings.
    -  [[ $x = y ]] && [[ $x = yes ]] -> [[ $x = y && $x = yes ]]
    - There is one case where quoting will still make a difference inside a double bracket conditional expression and that is in regards to pattern matching.
      - Simple Example:
        - [[ x =“x*” ]] false
        - [[ x =~ x* ]] true

cuando se compran valores se pueden usar dobe parentesis

((2 > 1)) en vez de [[ 2 -gt 1]]

## I-elif-elif-else conditional statement

```
#!/usr/bin/env bash
read -p "enter you option: " option
if [[ $option == start]]
then
    escho "Starting docker..."
    systmctl start docker
elsif [[ $option == stop ]]
then
    echo "stopping docker..."
    systemctl stop docker
elif [[ $option == restart ]]
then
    echo "Restarting docker ..."
    systemctl restart docker
elif [[ $option == version ]]
then
    version=$(docker -v | cut -d "" -f 3 | tr -d ",")
else
    echo "you option is invaslid"
    echo "Valid option are: start stop restart and version"
```

## Case flow

La sintaxis es la siguiente:
```
case expresion in
  caso1)
    comandos
  ;;
  caso2)
    comandos
  ;;
#...
  *)
    comandos
  ;;
esac
```

```
#!/bin/bash
#Control de flujo: case
echo "Adivina mi edad"
read edad
case $edad in
  30)
    echo "¡Correcto!"
  ;;
  *)
    echo "¡Incorrecto!"
  ;;
esac
```

```
#!/bin/bash
#Control de flujo: case
echo "Escribe una frase"
read frase
case $frase in
  a*)
    echo "La frase empieza con a"
  ;;
  c*t)
    echo "La frase empieza con c y termina con t"
  ;;
  *com)
    echo "La frase termina con la cadena com"
  ;;
  *)
    echo "La frase no cumple con ninguna de las condiciones"
  ;;
esac

```

Algunas reglas para tomar en cuenta
- Paréntesis de cierre ) después de cada caso (condición).

- Doble punto y coma ;; delimita la lista de comandos que serán ejecutados cuando se cumpla el caso (condición).

- Finalmente cerrar la sentencia case con esac.

## Handle command line argument
```
#!/bin/bash
#read -p "enter your service to execute your action on it: " serviceName
#read -p "enter your action to execute on your service. $serviceName " action
if [[ $# -ne 2]]
then
    echo "hey admin, please run this script as follows"
    echo "usage: $0 <serviceName> <ActionToExecuteonService>
    echo "valid ctionToExecuteon Service are: start stop restart status
    exit 1
fi
serviceName=$1
action=$2
sudo systemctl $action ${serviceName}
```
- $0 = scriptname
- first_argument = $1: We can assign it to variables
- $#: This variable contains the number of arguments supplied to the script.
- $?: The exit status of the last command executed. Most commands return 0 if they were successful and 1 if they were unsuccessful.

## Scheduling jobs with at 

- at command is very useful for scheduling one time tasks.
- Example:
    - Shutdown system at the specified time
    - Taking a one-time backup.
- Syntax:
    - echo “bash backup.sh" | at 9:00 AM
    - Or
    - Run first: at 9:00 AM then enter and give the cmd or script to run and press ctrl+D.
- Commands used with at:
    - at : execute commands at specified time.
    - atq : lists the pending jobs of users.
    - atrm : delete jobs by their job number.

Examples of at command:
-  Ex-1: Schedule task at coming 10:00 AM.
 at 10:00 AM
- Ex-2: Schedule task at 10:00 AM on coming Sunday.
 at 10:00 AM Sun
- Ex-3: Schedule task at 10:00 AM on coming 25’th July.
 at 10:00 AM July 25
- Ex-4: Schedule task at 10:00 AM on coming 22’nd June 2025.
 at 10:00 AM 6/22/2015
 at 10:00 AM 6.22.2015
- Ex-5: Schedule task at 10:00 AM on the same date at next month.
 at 10:00 AM next month
- Ex-6: Schedule task at 10:00 AM tomorrow.
 at 10:00 AM tomorrow
- Ex-7: Schedule task to execute just after 1 hour.
at now + 1 hour
- Ex-8: Schedule task to execute just after 30 minutes.
 at now + 30 minutes
- Ex-9: Schedule task to execute just after 1 and 2 weeks.
 at now + 1 week
 at now + 2 weeks
- Ex-10: Schedule task to execute just after 1 and 2 years.
 at now + 1 year
 at now + 2 years
- Ex-1: Schedule task to execute at midnight.
 at midnight

## Scheduling jobs with crontab:
- The crontab is used for running specific tasks on a regular interval.
- Each user can schedule jobs using crontab.
-  Syntax:
     - minute(s) hour(s) day(s) month(s) weekday(s) command/script
- Each scheduled job has six fields 
- Don’t change the order and six fields are separated by space
- The first five are integer patterns and the sixth is the command/script to execute

![](./Images/crontab.png)

Useful crontab commands:

- Use crontab -e to schedule a job.
- Use crontab -l to list the jobs (crontab -u user_name -l )
- Use crontab -r to remove all jobs
-If you want remove a particular job, you need to erase the job using crontab -e
```
- 30 9 15 11 6 /root/my_backup.sh 
- 30 9 15 * 6 /root/my_backup.sh 
- 30 9 15 * * /root/my_backup.sh every month
- 30 9 * * * /root/my_backup.sh every day
- 30 * * * * /root/my_backup.sh every hour
- * * * * /root/my_backup.sh every minute
- Schedule a crontab to execute on every Sunday at 5 PM.
- 0 17 * * 0 /root/my_backup.sh
- Schedule a crontab to execute on every Sunday at 5 AM and 5 PM
- 0 5,17 * * 0 /root/my_backup.sh
- Schedule a crontab to execute on every two hours.
- 0 */2 * * * /root/my_backup.sh
-Yearly once:
- 0 0 1 1 * /root/my_backup.sh
- @yearly /root/my_backup.sh 0 0 1 1 *
- @monthly  is similar to 0 0 1 * *
- @weekly is similar 0 0 * * 0
- @daily is similar 0 0 * * *
- @hourly is similar 0 * * * *
- @reboot It useful for those tasks which you want to run on your system 
startup.

```
https://crontab.guru/

## Shell script to send Automatic email alert when ram memory gets low

```
send_automatic_mail_alert_when_ram_size_is_low.sh
==========================================================
#!/bin/bash
TO="dowithscripting@gmail.com"
TH_L=400
free_RAM=$(free -mt | grep -E "Total" | awk '{print $4}')

if [[ $free_RAM -lt $TH_L ]]
then
  echo -e "Server is running with low RAM Size\nAvaialbe RAM is: $free_RAM" | /bin/mail -s "RAM INFO $(date)" $TO
fi
==================================================================================================================
Cronjob:
-------
crontab -e
then write below and save it (for every min)
* * * * *  /bin/bash send_automatic_mail_alert_when_ram_size_is_low.sh
=======================================================================

```
## Shell script to monitor disk space usage with email alert

```
#!/bin/bash
MailId="dowithscripting@gmail.com"

echo -e"the file system utilization on $(hostname -s) is: \n $(df -H | grep -Ev "udev|tmpfs")" | /usr/bin/mail -s "filesystem utilization" "$MailId"

====================

```

## Arrays for Bash

- An Array is the data structure of the bash shell, which is used to store multiple data’
s.
- Simple array: myarray=( ls pwd date 2 5.6 ) #No limit for length of an array

There are different ways to define an array in bash shell scripting.
- Empty Array: myArray=()
- mycmds=( ls pwd date 2 5.6 )
- myNewArray=( ls -lrt hostname -s )
- myNewArray=( “ls –lrt” “hostname –s" )
- declare -a NewArray
- NewArray=( 1 3 4 5 bash scripting)

Basically, Bash Shell Array is the zero-based Array (i.e., indexing start with 0)

- echo “$myarray” prints first element of the array 
- echo “${myarray}” prints first element of the array 
- echo “${myarray[*]}” print all values
- echo “${myarray[@]” print all values
- echo “${myarray[0]” -> Prints first value
- echo “${myarray[-1]}”  -> Prints last value
- echo “${myarray[*]:0}”  Prints all the values starting from index-0
- echo “${myarray[*]:1}”  Prints all the values starting from index 1
- echo “${myarray[*]:0:2}”  Prints two values starting from index-o
- echo “${myarray[*]:1:2}”  Prints two values starting from index 1
- echo "${!myarray[*]}"  Prints index values of array
- echo “${#myarray[*]}”  Find the length (number elements) of array
- We can also customize index numbers:
- newarray[5]=“bash”
- newarray[9]=“shell scriting” Or
- newarray=([5]=“bash” [9]=“shell scripting”

### Types of array 

We have two types of arrays in Bash Shell Scripting.
They are:
- Index Based Arrays or Arrays
- Associative Arrays:
    We already know about Normal arrays or Indexed Arrays or Index Based Arrays and for these arrays  Index  values or Indices  are Numbers (Integer Number)  
    Associative arrays are the arrays with index values as strings.
    Generally no need to declare normal arrays before using them but we have to declare Associative arrays before using them.
    declare -A  myassarray
    Defining Associative Arrays:
    myassarray=([name]=“bash shell scripting”  [version]=4.4)
    Or
    myassarray[name]=“bash shell scripting”
    myassarray[version]=4.4

    Simply Associative Arrays are called key-value pair representation.

    Associative arrays are the arrays with index values as strings  

    Associative Arrays should be declare before using them (declare –A myassarray).
    echo “${indexarray}”    will print first value by default
    echo “${myassarray}”   wont print any value
    Indexed Array Indices are numbers
    Associative Array Indices are strings 

    l contrario de lo que viste en el caso de los arrays, en el caso de los diccionarios, hay que declararlos de forma explícita. Es decir, por ejemplo,

declare -A telefonos
Por otro lado para añadir valores a un diccionario, una vez que ya lo hayas declarado, lo puedes hacer conforme al ejemplo siguiente,

declare -A telefonos
telefonos[Juan]='123'
telefonos[Pedro]='456'
telefonos[Andres]='789'
También es posible añadir valores en una sola línea. Así por ejemplo, lo puedes hacer conforme ves a continuación, recordando declarar el diccionario previamente,

declare -A telefonos
telefonos=([Juan]='123' [Pedro]='456' [Andres]='789')

Accediendo al contenido de los diccionarios en Bash
Ahora que ya sabes como declarar diccionarios en Bash, el siguiente paso es acceder a su contenido. Por su puesto, que se trata de acceder de todas las formas, tanto de uno en uno, como de forma masiva. Pero además tienes que acceder no solo al valor, sino a la clave. En este caso la pareja clave-valor es lo que realmente cobra importancia.

Así, para acceder a un elemento concreto tienes que ejecutar la siguiente instrucción, por ejemplo,

echo ${telefonos[Juan]}
Para acceder a los valores del diccionario tienes dos opciones,

echo ${telefonos[@]}
echo ${telefonos[*]}

Mientras que si lo que quieres es obtener las claves, en este caso, los propietarios de esos números de teléfono, la instrucción a ejecutar será,

echo ${!telefonos[*]}
Igual que sucede en el caso de los valores, también puedes hacer lo mismo para el caso de las claves. Es decir, también puedes obtener todas las claves con echo ${!telefonos[@]}.

Si quiere iterar entre los valores del diccionario tan solo tienes que ejecutar,

for i in ${telefonos[@]}
do
    echo $i
done
Y lo mismo puedes hacer para el caso de las claves, que además puedes combinar como puedes ver en el siguiente ejemplo,

for i in ${!telefonos[@]}
do
    echo "El telefono de $i es ${telefonos[$i]}"
done

Cuantos elementos tiene el diccionario
Este procedimiento es exactamente igual que el que utilizaste con los arrays, simplemente tienes que utilizar #. Así, para saber cuantos teléfonos tienes guardados, tan solo tienes que ejecutar,

echo ${#telefonos[@]}

https://atareao.es/tutorial/scripts-en-bash/diccionarios-en-bash/#:~:text=Una%20caracter%C3%ADstica%20interesante%20son%20los,una%20clave%2C%20definida%20por%20ti.


### Basic operation with arrays

- Storing the output of a command into array:
    - arraywithcmd=( $(command) )

- Delete an array or even normal variable:
    - unset variable/arrayvariable

- Updating an exiting array:
    - myarray=(1,2,3)
    - myarray+=(4,5,6)

- Read an array using read command
Syntax:
-  read -a myarray
-  read –p “Enter your array” -a myarray

## Loops

Most languages have the concept of loops and they are very useful to execute 
series of commands for n number of times.

###  Types of loops:
- for loop
    - basic loop
    ```
        for variable in list_of_values
        do
            command 1
            command 2
        done   
    ``` 
    - C-Language type for loop
        ```
        for ((initialization; condition; increment/decrement))
        do
            command 1
            command 2
        done   
    ``` 


        for each in $(ls)
        do
        if [[ -x $each ]]
        then
            echo "$each is having execution permission" 
        else
            echo "$each is not having execution permission"
        fi
        done

- while loop
A while loop is a statement that iterates over a block of code till the condition specified is evaluated to false. We can use this statement or loop in our program when do not know how many times the condition is going to evaluate to true before evaluating to false.  

The syntax of a while loop in BASH is something like below:
```
while [ condition ];
do
    # statements
    # commands
done  
```
If the condition is true then the commands inside the while block are executed and are iterated again after checking the condition. Also if the condition is false the statements inside the while block are skipped and the statements after the while block are executed. 

### Reading a file with a while loop  
We can read a file with a while loop in BASH.  By parsing certain parameters to the while loop condition, we can iterate over the file line by line or by other groups like characters or words.   
```
#!/usr/bin/bash 

file=temp.txt

while read -r line;
do
    echo $line
done < "$file"
```

### Infinite while loop
To create an infinite loop using a while loop statement. We don’t need to put any condition in the while loop and hence the loop iterates infinitely. The below is the example of an infinite while loop:
```
#!/usr/bin/bash 

while :
do
  echo "An Infinite loop"
  # We can press Ctrl + C to exit the script
done
```
### Reading commnad output

```
command | while read line
do
  statements/commnads
done
```



- until loop
The Until loop is used to iterate over a block of commands until the required condition is false.

Syntax of **Until** Loop
```
until [ condition ];
do
 block-of-statements
done
```
Here, the flow of the above syntax will be –

- Check the condition.
- If the condition is false, then execute the statements and go back to step 1.
- If the condition is true, then the program control moves to the next command in the script.

Example:
```
#!/bin/bash
echo "until loop"
i=10
until [ $i == 1 ]
do
    echo "$i is not equal to 1";
    i=$((i-1))
done
echo "i value is $i"
echo "loop terminated"
```

- select loop

The select loop is one of the categories of loops in bash programming. A select-loop in the shell can be stopped in two cases only if there is a break statement or a keyboard interrupt. The main objective of using a select loop is that it represents different data elements in the form of a numbered list to the user. The user can easily select one of the options as listed by the program.

 The syntax of a general select loop is given below,

Syntax:
```
select myVariable in variable1 variable2 ... variableN
do
    # body to be executed for 
    # every value in the sequence.
done
```
Here, myVariable is a variable that is used to refer to each of the values from variable1 to variableN.

In the below program we are creating a numbered menu to allow a user to select a number. Once a number is selected by the user we are displaying whether the number is even or odd.  

Source Code:
```
# Program to demonstrate the working of
# a select-loop in shell scripting

# PS3="Enter your choice ==> "
# echo "Choose a number:"
  
select num in 1 2 3 4 5 6 7
do
   case $num in
      2|4|6|8) 
         echo "Even number."
         ;;
      1|3|5|7)
         echo "Odd number."
      ;;
      none) 
         break 
      ;;
      *) echo "ERROR: Invalid selection" 
      ;;
   esac
done
```

#### Install multiple packages

```
#!/bin/bash
#Installing mutliple pkags

if [[ $# -eq 0 ]]
then
  echo "Usage: $0 pkg1 pkg2 ...."
  exit 1
fi


if [[ $(id -u) -ne 0 ]]
then
  echo "Please run from root user or with sudo privilage"
  exit 2
fi


for each_pkg in $@
do
  if which $each_pkg &> /dev/null
  then
     echo "Already $each_pkg is installed"
  else
     echo "Installing $each_pkg ......"
     yum install $each_pkg -y &> /dev/null 
     if [[ $? -eq 0 ]]
     then
       echo "Successfully installed $each_pkg pkg"
     else
       echo "Unable to install vim $each_pkg"
     fi
  fi

done
```
## Difference  between \$@ y $*

- \$# numero de argumentos
- \$@ act like array with quotation
- \$* act like single string with quotation
- \$? resultado ultimo comando

## Loop Control commands (break and continue)

Break and continue commands are used to control the execution of loops

- **Break** 

break command is used to terminate/exit current loop completely before the actual ending loop

- **Continue**

Continue command is used in script to skip current iteration of loop and continue to next iteration of the loop

```
display_files.sh
------------------
#!/bin/bash
#ls
<< mcom
for each_file in $(ls)
do
   echo "$each_file"
done
mcom

<< scom
cnt=1
for each_file in $(ls *.txt)
do
  if [[ $cnt -eq 1 ]]
  then 
     echo "$each_file"
     ((cnt++))
  fi
done
scom

echo "starting for loop"
cnt=1
for each_file in $(ls *.txt)
do
	if [[ $cnt -eq 1 ]]
	then
           echo "$each_file"
	   break
	fi
done

echo "for loop is over"
===============================
display_numbers.sh
-----------------
#!/bin/bash
echo "starting for loop"
<< mycom
for each in $(seq 1 10)
do
  if [[ $each -gt 5 ]]
  then
	 break
  fi 
  echo "$each"
done
mycom

<< com
for each in $(seq 1 10)
do
  if [[ $each -ne 5 ]]
  then
     echo "$each"
  fi

done

com

for each in $(seq 1 10)
do
   if [[ $each -eq 5 ]]
   then
	   continue
   fi	 

   echo "$each"
done

echo "for loop is over"
=============================
```

## For loop with arrays

```
myServices=(docker nginx)
for eachValue in ${myServices[@]}
do
  systemctl status $eachService 1>dev/null 2>/dev/null
  if [[ $? -ne 0 ]]
  then
    echo “The service $eachService is not running"
    ecgo "the service $eachService is not running on $($hostanme -s)" | /usr/bin/mail -s "Status of $eachService" "dowithscripting@gmail.com"
done
```
# Working with remote server

## Loging into remote server using ssh

Using Password:

ssh user_name@remote_ip

ssh remote_ip   (here remote user name is same as local terminal user)

vi /etc/ssh/sshd_config (Make it; PasswordAuthentication yes  in remote server after restart sshd (systemctl restart sshd or service sshd restart less than 7 version))
========================================================================

Using passwordless:
-------------------
Step1: On local server generate keys using ssh-keygen
Step2: go to user_home/.ssh then here you will find two files
		id_rsa  (private key, it should be safe)
		id_rsa.pub (public, this has to share with remote servers)
Step3: use below command to share public key with remtoe server, it will ask password
       ssh-copy-id username@remote_server_ip    
Step4: if step3 is success then use below command to login with remote server, it wont ask password now
        ssh username@remote_server_ip

## Executing commnad on remote server

Two ways (for both password and password less Authentication)
-  First way:
 ssh user_name@remote_server
 Provide the password if it is password authentication connection.
 Now run the command and see the result
 Run exit command to close remote session
 Note: This is not good for automation
-  Second way:
 ssh user_name@remote_server “command”
 Provide the password if it is password authentication connection.
 This is good for automation, if the connection is password less
authentication
 Note: ssh -t user_name@remote_server “command”
 ssh -t -o StrictHostKeyChecking=No user_name@remote_server “command”  

 Executing command on remote server without logging into remote server:
- ssh -t -o StrictHostKeyChecking=No user_name@remote_server “command”
Executing multiple commands on remote server without logging into remote server
- ssh -t -o StrictHostKeyChecking=No user_name@remote_server “cmd1;cmd2;cmd3” 

### Providing password for ssh using sshpass utility

Basic ssh command to run commands on remote server:

ssh -t -o StrictHostKeyChecking=No automation@54.91.148.241 "date"
----------------------------
Using sshpass (providing password for ssh):

sshpass -p "automation@123" ssh -t -o StrictHostKeyChecking=No automation@54.91.148.241 "date"
or
sshpass -f  path_for_password_file ssh -t -o StrictHostKeyChecking=No automation@54.91.148.241 "date"
or
export SSHPASS="automation@123"
sshpass -e ssh -t -o StrictHostKeyChecking=No automation@54.91.148.241 "date"

 Amazon Linux EPEL:
 cd /opt 
 wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/
 yum install dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-12.noarch.rpm
 
 RHEL8 EPEL:
    yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

___________________________

## Executing multiple commands on Multiple servers

```
#!/bin/bash

<< my_com
echo "The date command output on the server: 100.26.187.33"
sshpass -f pass ssh -o StrictHostKeyChecking=No automation@100.26.187.33 "date"
echo "-------------------------------------------------------"
echo "The uptime command output on the server: 100.26.187.33"
sshpass -f pass ssh -o StrictHostKeyChecking=No automation@100.26.187.33 "uptime"
echo "-------------------------------------------------------"
echo "The free -m command output on the server: 100.26.187.33"
sshpass -f pass ssh -o StrictHostKeyChecking=No automation@100.26.187.33 "free -m"
echo "-------------------------------------------------------"
my_com


for each_ser in $(cat remote_servers.txt)
do
  echo "Executing cmds on $each_ser"
  echo "============================" 
  for each_cmd in date uptime "free -m"
  do
    echo "The $each_md command output on the server: $each_ser"
    #sshpass -f pass ssh -o StrictHostKeyChecking=No automation@$each_ser "$each_cmd"
    ssh -o StrictHostKeyChecking=No automation@$each_ser "$each_cmd"
    echo "-------------------------------------------------------"
  done

done 
```

## Shell Script to execute different commands on different servers with different users and different passwords

```
servers_info.txt
----------------
18.212.27.210  automation automation@123 date
18.212.185.2   tomcat tomcat123 whoami

execute_different_cmds_on_different_servers_with_differnt_users_and_passwords.sh
--------------------------------------------------------------------------------
#!/bin/bash
while read ser user pass cmd1 cmd2
do
  echo "Executing $cmd1 on $ser with user as $user and password $pass"
  sshpass -p $pass ssh -n -o StrictHostKeyChecking=No $user@$ser "$cmd1" 
  echo "Executing $cmd2 on $ser with user as $user and password $pass"
  sshpass -p $pass ssh -n -o StrictHostKeyChecking=No $user@$ser "$cmd2"
  echo "---------------------------------------------------------"
done < servers_info.txt

```

## While loops with IFS

- IFS: Internal Field Separator, which is one of the shell or environment variable.
-  The IFS variable is used as a word separator (token) for the loops.
-  If we are going to change the default IFS, then it is a good practice to store the original IFS in a variable. 

```
#!/bin/bash
OLD_IFS=$IFS
while IFS="," read f1 f2 f3 f4 f5
do
  echo "$f2
done < server_info.txt
IFS=$OLD_IFS
```

## FUNCTIONS

-  Function is a block of code that performs a specific task and which is reusable.
-  Functions concept reduces the code length.
-  Two ways to define a function:

```
function function_name
{
    commands/statements
}
```
```
function_name()
{
    commands/statments
}
```

```
#!/bin/bash
mycode()
{
   read -p "Enter first number: " num1
   read -p "Enter second number: " num2
}
clear
echo "--------------------------------"
echo "Welcome to Arithmetic Calculator"
echo "--------------------------------"
echo -e "[a]ddition\n[b]Subtraction\n[c]Multiplication\n[d]Division\n"
read -p "Enter your choice: " choice
case $choice in
   [aA])
        mycode
        result=$((num1+num2))
        echo "The result for your choice is: $result"
        ;;
   [bB])
        mycode
        result=$((num1-num2))
        echo "The result for your choice is: $result"
        ;;
   [cC])
        mycode
        result=$((num1*num2))
        echo "The result for your choice is: $result"
        ;;
   [dD])
        mycode
        result=$((num1/num2))
        echo "The result for your choice is: $result"
        ;;
   *)
       echo "Wrong choice"
       ;;
esac

```

## Types of Functions
The functions in shell scripting can be boxed into a number of categories. The following are some of them:

1. The functions that return a value to the caller. The return keyword is used by the functions for this purpose.

The following is one such function used to calculate the average of the given numbers.

```
find_avg(){ 
  len=$#
  sum=0
  for x in "$@"
  do
     sum=$((sum + x))
  done
  avg=$((sum/len))
  return $avg
}
find_avg 30 40 50 60
printf "%f" "$?"
printf "\n"
```
return can only return a number (0-255).

2. The functions that terminate the shell using the exit keyword.

```
is_odd(){ 
  x=$1
  if [ $((x%2)) == 0 ]; then
     echo "Invalid Input"
     exit 1
  else
     echo "Number is Odd"
  fi
}
is_odd 64
```
3. The functions that alter the value of a variable or variables.
```
a=1
increment(){ 
  a=$((a+1))
  return
}
increment
echo "$a"
```

4. The functions that echo output to the standard output.

```
hello_world(){ 
  echo "Hello World"
  return
}
hello_world
```


```
#!/bin/bash


read_inputs()
{
  read -p "Enter first num: " num1
  read -p "Enter second num: " num2
}

addition()
{
  sum=$((num1+num2))
  echo "The addition of $num1 and $num2 is: $sum"
}

subtraction()
{
  sub=$((num1-num2))
  echo "The sub of $Num1 and $num2 is: $sub"
}


read_inputs
addition
subtraction
```
## Scope of variables (global and local variables)

They are two types of variables: global and  local
- all variables are global by default
- local variables are allowed to define inside of function only
- with the word local you can define a local variable 

## return a variable value
return command only works with numeric arguments
```
#!/bin/bash

return_variable()
{
  local x="shell"
  return $x
}


return_variable
y=$?
echo "The value of y is: $y"

```
```
#!/bin/bash
define_variables()
{
 local x=6
 echo "$x"
}


y=$(define_variables)
echo "The y value is: $y"
```
## Passing parameters to a function

- function_name $x $y
- we can access passes parameters inside a funtion using $1 $2 .....

```
#!/bin/bash

addition()
{
  #echo "The \$0 value is: $0" shell script name
  m=$1
  n=$2
  result=$((m+n))
  echo "The addition of $m and $n is: $result"

}


x=6
y=2
addition $x $y

p=3
q=7
addition $p $q

addition 4 9
```

# Printf Command

- Both echo and printf commands are used to display string or value of a variable.
- The difference is that echo sends a newline at the end of its output, there is no way to
"send" an EOF in printf command.
- The advantage of printf command:
- We can format the output
- Useful in awk command/scripting as well
- Syntax:
  - printf “format\n” “arguments”
  - printf “format_with_modifiers\n” “arguments”
- Note: format/format_with_modifiers is an optional and we can omit it.

Syntax:
- printf “format\n” “arguments”
- Different types of formats are:

![](./Images/printf.png)

printf command: format with modifiers:
- Syntax:
  - printf “format_with_modifiers\n” “arguments”
- Different types of format modifiers are:

![](./Images/printfmodifiers.png)


## AWK Command

- the awk command is programming language, which requieres no compiling, and allows the user to use varaibles, numeric functions, string functions and logical operators
- the awk command in unix is juust like a scripting language which is used for text processing
- awk is used like:
  - a command
  - a scripting laguage

- Awk read data from a file or from its standar input, and outputs to its standard output
- Awk views a text file as records and fields
- each line is a record and columns in lines/record are called fields
- by deafult fields are separeted based on space (Note: We can also change the field separator with -F option)
- awk commands works on each line individually

### Basic syntax of awk command

- awk options 'pattern{action}' filename 
- command | awk options 'pattern {action}'

awk can take the following options:
- F fs to specify a field separator
- V var=value to declare a varaible
- f file To specify a file that contains awk script

### basic variables
- $0 ,$1, $2 ...
- NR number of records
- NF number of fields $NF last field
- FILENAME 

### awk scriptin syntax

- awk 'BEGIN {start_action} pattern/condition {action to perform on each line} END {stop_actio}' filename

- awk -f awk_script.awk filename

```
awk 'BEGIN { print "=======working on /etc/passwd file =="} /root/ { print $0 } END { print "====completed==== work on /etc/passwd file===="}' /etcd/passwd

```

![Alt text](image-7.png)

### awk command with option, action and basic variables

- awk -F / '{ print $2}' separador /
- awk - F ec2 '{ print $2}' separador ec2
- awk -F ec2 -v x=5 '{ print $2}, x' declarar variables
- awk -f awk_script.awk filename

### simple Hello world awk script

hello.awk
```
#!/bin/awk -f
BEGIN
  print "hello world!!"

```

chmod +x hello.awk

./hello.awk

### awk script concepts

![](image-8.png)


awk 'BEGIN { a=5 ; prnt a}

```
#!/bin/awk -f
BEGIN{
  a=5 ;  print a
}
```

### awk variables read variable from command line















___________________________________________

(( expresión )) permite evaluar expresiones aritméticas. Si el valor de la expresión es no-cero, el estado de retorno es 0; en caso contrario, el estado de retorno es 1.

[[ expresión ]] es un bashism (algo propio de Bash, mientras que [ es genérico -- puedes leer sobre la diferencia entre [ y [[) y sirve para evaluar expresiones, que pueden ser mucho más complejas que las aritméticas.

______________________________


27

I have a folder in my server which contains some files. These are automated that means everyday we get new files automatically which will overwrite the old ones. So want to take a back up for this data. How can I copy all these files into another folder by renaming the files with current date while copying.

ex : I have home/webapps/project1/folder1 folder which contains 4 files:

aaa.csv
bbb.csv
ccc.csv
ddd.csv
Now, I want to copy all these four files in to a different location, like home/webapps/project1/folder2.
While copying these files I want to rename each file and add the current date to the file. So my file names in folder2 should be:

aaa091012.csv
bbb091012.csv
ccc091012.csv
ddd091012.csv
I want to write a shell script for this. Please give me some idea or some sample scripts related to this.

In bash, provided you files names have no spaces:

cd /home/webapps/project1/folder1
for f in *.csv
do 
   cp -v "$f" /home/webapps/project1/folder2/"${f%.csv}"$(date +%m%d%y).csv
done




___________________________
expresion de bash head /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1
Por supuesto, esta expresión de Bash es una serie de comandos que se utilizan para generar una cadena aleatoria de caracteres alfanuméricos.

Aquí está la explicación de cada comando en la secuencia:

1. `head /dev/urandom`: `head` es un comando que muestra las primeras líneas de un archivo o la entrada estándar. `/dev/urandom` es un dispositivo especial en sistemas tipo Unix que proporciona bytes aleatorios. Este comando está generando una secuencia infinita de bytes aleatorios desde `/dev/urandom`.

2. `tr -dc 'a-zA-Z0-9'`: `tr` es un comando de traducción que se utiliza para eliminar caracteres no deseados de la entrada. En este caso, `-dc` le dice a `tr` que elimine todos los caracteres que no sean los especificados en el conjunto `a-zA-Z0-9`, es decir, todos los caracteres que no sean letras minúsculas o mayúsculas del alfabeto inglés y dígitos del 0 al 9.

3. `fold -w 5`: `fold` es un comando que envuelve líneas de texto para que no excedan una longitud específica. En este caso, `-w 5` especifica que queremos envolver las líneas a una longitud de 5 caracteres.

4. `head -n 1`: Finalmente, `head -n 1` se utiliza para tomar solo la primera línea de la salida resultante de la secuencia anterior. Esto garantiza que obtendremos una sola línea de texto, que es nuestra cadena aleatoria de 5 caracteres.

En resumen, esta expresión de Bash genera una cadena aleatoria de 5 caracteres alfanuméricos a partir de bytes aleatorios generados por `/dev/urandom`. La cadena final es una combinación de letras mayúsculas y minúsculas, así como dígitos del 0 al 9.