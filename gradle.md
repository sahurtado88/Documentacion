# Gradle

Gradle is an open-source build automation tool focused on flexibility and performance. Gradle build scripts are written using a Groovy or Kotlin DSL.

````
task helloWorld {
    doLast {
        println "Hello World"
    }
}
````

## Gradle Wrapper

When a user executes a wrapper script the first time, the script downloads and installs the appropriate Gradle distribution and runs the build against this downloaded distribution. Any installed Gradle distribution is ignored when using the wrapper scripts.

- Developers do not need to install the Grdale runtime

- Developers can check out project source code and build right away

- Wrapper works the same way on continuos integration servers

_____________________

Estructura de un proyecto Maven:

La estructura de directorios estándar en un proyecto Maven incluye directorios como "src" (conteniendo los directorios "main" y "test"), "target" (para archivos compilados y construidos), y "pom.xml" (archivo de configuración del proyecto).
Manejo de dependencias:

Maven maneja las dependencias a través de archivos POM, especificando las dependencias y los repositorios donde Maven puede encontrarlas. Repositorios pueden ser locales o remotos. Maven resuelve las dependencias descargando artefactos desde estos repositorios.
Ciclo de vida de construcción:

Los tres ciclos de vida principales son "clean" (limpiar), "default" (por defecto), y "site" (generar documentación). Ejemplos de fases incluyen "compile", "test", y "package".
Perfiles:

Los perfiles en Maven se utilizan para personalizar la construcción según diferentes entornos o necesidades. Por ejemplo, se pueden definir perfiles para desarrollo, pruebas o producción, y activarlos según la situación.
Plugins:

Un ejemplo de plugin es el plugin de compilación "maven-compiler-plugin". Este plugin se utiliza para compilar el código fuente del proyecto. Otros ejemplos incluyen el plugin "maven-surefire-plugin" para ejecutar pruebas y el plugin "maven-jar-plugin" para crear archivos JAR.
Archivo POM:

El archivo POM, Project Object Model, es un archivo XML que contiene información sobre el proyecto y su configuración. Define detalles como las dependencias, los plugins utilizados, y la configuración del proyecto.
Gestión de versiones:

Maven maneja versiones a través de etiquetas en el archivo POM. La convención recomendada es seguir el esquema de versionado semántico (SemVer) con números de versión como "X.Y.Z", donde X es la versión principal, Y es la versión secundaria y Z es la versión de parche.
Integración continua:

Maven se integra fácilmente con sistemas de integración continua (CI) como Jenkins, Travis CI o GitLab CI. Se configuran tareas de construcción en estos sistemas utilizando comandos Maven como "mvn clean install".


Conceptos Básicos de Maven:

Proyecto (Project): Un proyecto en Maven es una unidad de trabajo con una estructura específica de directorios y un archivo POM que describe el proyecto.

POM (Project Object Model): El archivo pom.xml es el corazón de Maven. Contiene información sobre el proyecto, sus dependencias, plugins, y configuraciones.

Dependencias (Dependencies): Maven maneja las dependencias de un proyecto. Las dependencias son bibliotecas externas necesarias para compilar y ejecutar el proyecto.

Repositorios (Repositories): Son lugares donde Maven busca y almacena dependencias. Pueden ser locales o remotos.

Ciclo de Vida (Lifecycle): Maven define tres ciclos de vida principales: clean, default y site. Cada ciclo de vida está compuesto por fases, que son tareas específicas.

Fases (Phases): Son etapas dentro de un ciclo de vida. Ejemplos incluyen compile, test, y package.

Plugins: Son herramientas de construcción o procesos que se ejecutan durante las fases del ciclo de vida. Ejemplos incluyen el plugin de compilación, el plugin de pruebas, etc.

Metaficheros (Archetypes): Plantillas predefinidas que ayudan a generar la estructura inicial de un nuevo proyecto Maven.

Conceptos Avanzados de Maven:

Perfiles (Profiles): Permiten personalizar la construcción según diferentes entornos o situaciones.

Propiedades (Properties): Variables definidas en el archivo POM que pueden ser referenciadas en otros lugares, proporcionando una forma de parametrizar la configuración.

Ensamblados (Assemblies): Conjuntos de archivos y directorios que se crean y empaquetan para su distribución.

Despliegue (Deployment): La distribución de artefactos construidos a un repositorio para su uso posterior o para compartir con otros proyectos.

Manejo de Versiones (Versioning): Maven proporciona convenciones y prácticas recomendadas para gestionar las versiones de las dependencias y del propio proyecto.

Scopes de Dependencia: Maven define ámbitos (compile, provided, runtime, test, system) que indican cuándo una dependencia debe estar disponible durante el ciclo de vida del proyecto.

Manejo de Recursos (Resource Handling): Maven proporciona un mecanismo para manejar recursos como archivos de configuración durante el proceso de construcción.

Informes (Reports): Maven puede generar informes sobre diversos aspectos del proyecto, como cobertura de código, análisis de dependencias, etc.

¡Claro! Maven organiza las tareas de construcción en ciclos de vida, y cada ciclo de vida consiste en una secuencia de fases. Aquí te proporcionaré más detalles sobre los tres ciclos de vida principales en Maven:

Ciclo de Vida Predeterminado (default):
Validación (validate): Validación de que el proyecto es correcto y todas las necesidades para la construcción están disponibles.

Compilación (compile): Compilación del código fuente del proyecto.

Pruebas (test): Ejecución de pruebas unitarias utilizando un marco de pruebas como JUnit.

Empaquetado (package): Toma el código compilado y lo empaqueta en un formato distribuible, como JAR o WAR.

Pruebas de Integración (integration-test): Procesamiento de las pruebas de integración si están configuradas.

Verificación (verify): Verificación de que el paquete es válido y cumple con ciertos criterios de calidad.

Instalación (install): Instalación del paquete en el repositorio local, para ser utilizado como dependencia por otros proyectos locales.

Despliegue (deploy): Copia final del paquete en el repositorio remoto para compartirlo con otros desarrolladores y proyectos.

Ciclo de Vida de Limpieza (clean):
Pre-Limpieza (pre-clean): Ejecuta cualquier tarea necesaria antes de la limpieza.

Limpieza (clean): Elimina los archivos generados en la construcción anterior.

Post-Limpieza (post-clean): Ejecuta cualquier tarea necesaria después de la limpieza.

Ciclo de Vida de Documentación (site):
Preparación (pre-site): Configuración y preparación del entorno antes de generar la documentación.

Generación de Documentación (site): Genera documentación, informes y sitios web para el proyecto.

Despliegue de Documentación (post-site): Despliega la documentación generada en un servidor web o en otro formato según sea necesario.

Estos ciclos de vida permiten una construcción y gestión de proyectos coherente y predecible. Puedes ejecutar todas las fases de un ciclo de vida con un solo comando Maven o ejecutar fases específicas según tus necesidades. Por ejemplo, para construir un proyecto y empaquetarlo, puedes ejecutar mvn package.
