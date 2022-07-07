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

