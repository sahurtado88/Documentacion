# JENKINS #

Open source governance and community
Stability
Extensible
Visibility
Pipelines

JOB or BUILD


Pipeline

A Pipeline is a user-defined model of a CD pipeline. A Pipeline’s code defines your entire build process, which typically includes stages for building an application, testing it and then delivering it.

Also, a pipeline block is a key part of Declarative Pipeline syntax.
Node

A node is a machine which is part of the Jenkins environment and is capable of executing a Pipeline.

Also, a node block is a key part of Scripted Pipeline syntax.
Stage

A stage block defines a conceptually distinct subset of tasks performed through the entire Pipeline (e.g. "Build", "Test" and "Deploy" stages), which is used by many plugins to visualize or present Jenkins Pipeline status/progress. [6]
Step

A single task. Fundamentally, a step tells Jenkins what to do at a particular point in time (or "step" in the process). For example, to execute the shell command make use the sh step: sh 'make'. When a plugin extends the Pipeline DSL, [1] that typically means the plugin has implemented a new step.



Jenkinsfile (Declarative Pipeline)

pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                // 
            }
        }
        stage('Test') { 
            steps {
                // 
            }
        }
        stage('Deploy') { 
            steps {
                // 
            }
        }
    }
}


pipeline {
    agent any
    stages {
        stage ("Hello World"){
            steps {
                echo "Hello World"
            }
        }   
    }
}

## PIPELINE PARAMETRIZED

build with parameter

pipeline {
    agent any
    parameters {
        string(name: 'Greeting', defaultValue: 'Hello', description: 'How should I greet the world?')
    }
    stages {
        stage('Example') {
            steps {
                echo "${params.Greeting} World!"
            }
        }
    }
}

### MULTI_STEP  ###

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''  ### tres comillas multilinea
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
            }
        }
    }
}

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
            }
        }
        stage ('Build More'){
            steps {
                sh '''
                echo "Multiline shell steps works too"
                ls -lah
                '''
            }
        }
    }
}

## TIME OUT

pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                timeout(time: 1, unit: 'MINUTES') {
                    sh '/var/jenkins_home/scripts/fibonacci.sh 5'
                }
                timeout(time: 1, unit: 'MINUTES') {
                    sh '/var/jenkins_home/scripts/fibonacci.sh 32'
                }
            }
        }
    }
}

##  TRACKIN BUILD STATE

ingresar al build revisar console output or logs

## SCM POLL

Pipeline definition Pipeline script from SCM
SCM Git
URL
credentials if no public
branch

BUILD TRIGGER = POLLING SCM
y poner formato crontab

MIN HOUR DOM MON DOW CMD

Crontab Fields and Allowed Ranges (Linux Crontab Syntax)

Field    Description    Allowed Value
MIN      Minute field    0 to 59
HOUR     Hour field      0 to 23
DOM      Day of Month    1-31
MON      Month field     1-12
DOW      Day Of Week     0-6
CMD      Command         Any command to be executed.

## WEBHOOK BUILD TRIGGEring

se debe agregar plan text del github con permisos en el repo y en el webhook

branch source bil configuration jenkinsfile





Cómo hacer Reset de la contraseña de Jenkins

En este procedimiento vamos a ver como resetear la clave del administrador de Jenkins, por si algunos se le ha olvidado, es un procedimiento bastante simple así que con solo seguir los pasos lo lograremos sin mayores dificultades.

1- Antes que nada vamos a tocar el archivo config.xml así que te recomiendo hacer una copia por las dudas que algo se rompa.

cp /var/lib/jenkins/config.xml /var/lib/jenkins/config.xml.back

2- Editamos el archivo

nano /var/lib/jenkins/config.xml

Y vamos a cambiar un valor, true por false

<useSecurity>false</useSecurity>

Guardamos y reiniciamos el servicio de jenkins

systemctl restart jenkins

3- Vamos a la interface web y colocamos la dirección nuevamente, en mi caso http://localhost:8080

    Vamos a"Manage Jenkins" > "Security" > "Configure Global Security" > "Security"
    Seleccionamos use Jenkins user database click en "Save"
    Ahora vamos a "People" > Click en el usuario admin por ejemplo, colocamos la nueva contraseña y clic en "Save"
na vez terminado podemos volvar a usar el archivo original /var/lib/jenkins/config.xml y reiniciar el servicio de Jenkins:

mv /var/lib/jenkins/config.xml.back /var/lib/jenkins/config.xml
systemctl restart jenkins

Volvemos a iniciar la aplicación para validar que todo este correcto.