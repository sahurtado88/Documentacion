# GIT

source control management  (SCM)


gitignore - Specifies intentionally untracked files to ignore

````
Git ignore pattern examples

    Specific File: Myfile.txt
    File Pattern: *.ext
    Folder: my-folder/


````

## GIT COMMAND

git status

git add (archivo)

git commit -m "mensaje del commit"

git push origin

git pull

git init creará un nuevo repositorio local GIT. El siguiente comando de Git creará un repositorio en el directorio actual:

    git init

Como alternativa, puedes crear un repositorio dentro de un nuevo directorio especificando el nombre del proyecto:

    git init [nombre del proyecto]

git clone se usa para copiar un repositorio. Si el repositorio está en un servidor remoto, usa:

    git clone nombredeusuario@host:/path/to/repository

A la inversa, ejecuta el siguiente comando básico para copiar un repositorio local:

    git clone /path/to/repository

git add se usa para agregar archivos al área de preparación. Por ejemplo, el siguiente comando de Git básico indexará el archivo temp.txt:

    git add <temp.txt>

git commit creará una instantánea de los cambios y la guardará en el directorio git.

    git commit –m “El mensaje que acompaña al commit va aquí”


git config puede ser usado para establecer una configuración específica de usuario, como el email, nombre de usuario y tipo de formato, etc. Por ejemplo, el siguiente comando se usa para establecer un email:

    git config --global user.email tuemail@ejemplo.com

La opción -global le dice a GIT que vas a usar ese correo electrónico para todos los repositorios locales. Si quieres utilizar diferentes correos electrónicos para diferentes repositorios, usa el siguiente comando:

    git config --local user.email tuemail@ejemplo.com

git status muestra la lista de los archivos que se han cambiado junto con los archivos que están por ser preparados o confirmados.

    git status

git push se usa para enviar confirmaciones locales a la rama maestra del repositorio remoto. Aquí está la estructura básica del código:

    git push  origin <master>

Reemplaza <master> con la rama en la que quieres enviar los cambios cuando no quieras enviarlos a la rama maestra.
git checkout crea ramas y te ayuda a navegar entre ellas. Por ejemplo, el siguiente comando crea una nueva y automáticamente se cambia a ella:

    git checkout -b <branch-name>

Para cambiar de una rama a otra, sólo usa:

    git checkout <branch-name>

git remote te permite ver todos los repositorios remotos. El siguiente comando listará todas las conexiones junto con sus URLs:

    git remote -v

Para conectar el repositorio local a un servidor remoto, usa este comando:

    git remote add origin <host-or-remoteURL>

Por otro lado, el siguiente comando borrará una conexión a un repositorio remoto especificado:

    git remote <nombre-del-repositorio>

git branch se usa para listar, crear o borrar ramas. Por ejemplo, si quieres listar todas las ramas presentes en el repositorio, el comando debería verse así:

    git branch -a (muestra remotas y locales)

para crear una rama se usa: 

    git branch nombre_nueva_rama


rename a branch 

    git branch -m oldbranchname newbranchname

Si quieres borrar una rama, usa:

    git branch -d <branch-name>



git pull fusiona todos los cambios que se han hecho en el repositorio remoto con el directorio de trabajo local. 

    git pull

git merge se usa para fusionar una rama con otra rama activa:   

    git merge <branch-name>


git diff se usa para hacer una lista de conflictos. Para poder ver conflictos con respecto al archivo base, usa:

    git diff --base <file-name>

El siguiente comando se usa para ver los conflictos que hay entre ramas antes de fusionarlas:

    git diff <source-branch> <target-branch>

Para ver una lista de todos los conflictos presentes usa:

    git diff

se usa para comparar entre staging area and the git repository (last commit)

    git diff --staged HEAD 

compara entre el git repository at head vs git repository at 1 commit before HEAD

    git diff HEAD HEAD^ 

compara entre local and remote master branch

    git diff master origin/master 



git tag marca commits específicos. Los desarrolladores lo usan para marcar puntos de lanzamiento como v1.0 y v2.0.

    git tag 1.1.0 <instert-commitID-here>

git log se usa para ver el historial del repositorio listando ciertos detalles de la confirmación. Al ejecutar el comando se obtiene una salida como ésta:

````
commit 15f4b6c44b3c8344caasdac9e4be13246e21sadw
Author: Alex Hunter <alexh@gmail.com>
Date:   Mon Oct 1 12:56:29 2016 -0600
`````
par amostrar los commit abreviados en el log

    git log --abbrev-commit 

mostrar log de manera mas abreviada

    git log --oneline --graph --decorate 

git log codigocommitultimo...codigocommitinicial 

para ver los commit en un rango especificado

    git log --since="3 days ago" ver commits de los ultimos 3 dias

commits que afectaron a un filename

    git log -- filename 

git log --follow -- filename

git reset  sirve para resetear el index y el directorio de trabajo al último estado de confirmación.

    git reset - -hard HEAD

git rm se puede usar para remover archivos del index y del directorio de trabajo.

    git rm filename.txt

git stash guardará momentáneamente los cambios que no están listos para ser confirmados. De esta manera, pudes volver al proyecto más tarde.

    git stash

git show se usa para mostrar información sobre cualquier objeto git.

    git show

git show codigocommit mostrar informacion de un commit determindado


git fetch  le permite al usuario buscar todos los objetos de un repositorio remoto que actualmente no se encuentran en el directorio de trabajo local.

    git fetch origin

git ls-tree te permite ver un objeto de árbol junto con el nombre y modo de cada ítem, y el valor blob de SHA-1. Si quieres ver el HEAD, usa:

    git ls-tree HEAD

git cat-file se usa para ver la información de tipo y tamaño de un objeto del repositorio. Usa la opción -p junto con el valor SHA-1 del objeto para ver la información de un objeto específico, por ejemplo:

    git cat-file –p d670460b4b4aece5915caf5c68d12f560a9fe3e4

git grep le permite al usuario buscar frases y palabras específicas en los árboles de confirmación, el directorio de trabajo y en el área de preparación. Para buscar por www.hostinger.com en todos los archivos, usa:

    git grep “www.hostinger.com”

gitk muestra la interfaz gráfica para un repositorio local. Simplemente ejecuta:

    gitk

git instaweb te permite explorar tu repositorio local en la interfaz GitWeb. Por ejemplo:

    git instaweb –http=webrick

git gc limpiará archivos innecesarios y optimizará el repositorio local.

    git gc

git archive le permite al usuario crear archivos zip o tar que contengan los constituyentes de un solo árbol de repositorio. Por ejemplo:

    git archive - -format=tar master

git prune elimina los objetos que no tengan ningún apuntador entrante.

    git prune

git fsck realiza una comprobación de integridad del sistema de archivos git e identifica cualquier objeto corrupto

    git fsck

git rebase se usa para aplicar ciertos cambios de una rama en otra. Por ejemplo:

    git rebase master


## NOTES

git status + git add archvivo + git pull + git push 

git ls-files verificar tracked files

git add . tambien se utiliza para recursive add

git reset HEAD nombrfearchvio unstaged de archivo

 git checkout -- nombrearchvio dicard changes in working directory

git mv nombreactualdelarchivo nombrefuturodelarchivo  ->cambiar nombre de archivo

git aad -A tomar cambios de renames or moving or deleting files

git rm nombrearchvio borra archvio si ya esta en track

### Alias en Git

git config --global alias.namealias "comando deseado"
```
ejemplo: git config --global alias.hist "log --all --graph --decorate --oneline"
```


### Borrar archvio que por error no se puso en gitignore

```
 git rm --cached ruta-de-archivo

 luego se agrega archivo o extension al gitignore y se sube de nuevo el codigo
```

## Git Ammend

To review, git commit --amend lets you take the most recent commit and add new staged changes to it. You can add or remove changes from the Git staging area to apply with a --amend commit. If there are no changes staged, a --amend will still prompt you to modify the last commit message log. Be cautious when using --amend on commits shared with other team members. Amending a commit that is shared with another user will potentially require confusing and lengthy merge conflict resolutions.

Premature commits happen all the time in the course of your everyday development. It’s easy to forget to stage a file or to format your commit message the wrong way. The --amend flag is a convenient way to fix these minor mistakes.
```
git commit --amend -m "an updated commit message"
```

## GIT Rebase

Rebasing is the process of moving or combining a sequence of commits to a new base commit. Rebasing is most useful and easily visualized in the context of a feature branching workflow. The general process can be visualized as the following:

![](https://wac-cdn.atlassian.com/dam/jcr:4e576671-1b7f-43db-afb5-cf8db8df8e4a/01%20What%20is%20git%20rebase.svg?cdnVersion=690)

From a content perspective, rebasing is changing the base of your branch from one commit to another making it appear as if you'd created your branch from a different commit. Internally, Git accomplishes this by creating new commits and applying them to the specified base. It's very important to understand that even though the branch looks the same, it's composed of entirely new commits

Rebasing is a common way to integrate upstream changes into your local repository. Pulling in upstream changes with Git merge results in a superfluous merge commit every time you want to see how the project has progressed. On the other hand, rebasing is like saying, “I want to base my changes on what everybody has already done.”

```
git rebase <base>
```

Too abort a rebase we can use 
```
git rebase --abort
```
If we have problem with the rebase merge , we solve the problem and add the files modify and later we use 
```
git rebase --continue
```

## Configure merge tool p4merge

- Download p4merge  https://www.perforce.com/downloads/visual-merge-tool

- select only p4merge tool

- add p4merge en path if is necessary

- execute this command
```
git config --global merge.tool p4merge

git config --global mergetool.p4merge.path "C:/Program Files/Perforce/p4merge.exe" 

git config --global mergetool.prompt false

git config --global diff.tool p4merge

git config --global difftool.p4merge.path "C:/Program Files/Perforce/p4merge.exe"

git config --global difftool.prompt false

git config --global --list ## validate variables
```

## Stash

git-stash - Stash the changes in a dirty working directory away

Use git stash when you want to record the current state of the working directory and the index, but want to go back to a clean working directory. The command saves your local modifications away and reverts the working directory to match the HEAD commit.

git stash apply

git stash list 
git stash drop  borra el ultimo stash
git stash pop realiza el stash apply y el stash drop en un solo comando
git stash save "message" nos ayuda a diferenciar si hacemos mas de un stash

git stash show stash@{1}
git stash apply satsh@{1} aplicar un stash en esepcifico
git stash drop stas@{1} drop an specific stash
git stash clear clean the list of stash
git stash nranch NAMEBRANCH crea una nueva rama y elimina el stash
git stash -u include untrack files

## Simple tag

git tag myTag
git tag --list
git tag --delete myTag

## Reset

## Cherry Pick

git cherry-pick is a powerful command that enables arbitrary Git commits to be picked by reference and appended to the current working HEAD. Cherry picking is the act of picking a commit from a branch and applying it to another. git cherry-pick can be useful for undoing changes. For example, say a commit is accidently made to the wrong branch. You can switch to the correct branch and cherry-pick the commit to where it should belong.

git cherry-pick is a useful tool but not always a best practice. Cherry picking can cause duplicate commits and many scenarios where cherry picking would work, traditional merges are preferred instead. With that said git cherry-pick is a handy tool for a few scenarios

- Bug hotfixes
- Undoing changes and restoring lost commits


____________

cat .git/config

git remote set-url origin \<URL REPOSITORY>

git clone -b \<branch name> \<URL GIT>

git config --global user.email "EMAIL"

git config --global user.name "NAME"

git ls-remote -h GITHUBURL HEAD
__________________

git init: Este comando se utiliza para inicializar un nuevo repositorio de Git. Se ejecuta en la raíz del directorio del proyecto que se desea versionar.

git add: Este comando se utiliza para agregar los cambios realizados en los archivos al área de preparación (staging area) de Git. Puedes agregar los cambios a nivel de archivo o de directorio.

git commit: Este comando se utiliza para confirmar los cambios en el área de preparación de Git y crear una nueva revisión o versión del repositorio.

git clone: Este comando se utiliza para clonar un repositorio de Git en tu equipo local. Esto crea una copia local del repositorio remoto.

git push: Este comando se utiliza para enviar los cambios confirmados en tu repositorio local al repositorio remoto.

git pull: Este comando se utiliza para actualizar el repositorio local con los cambios realizados en el repositorio remoto.

git status: Este comando se utiliza para verificar el estado actual del repositorio. Muestra los archivos modificados, agregados y eliminados en el directorio de trabajo.

git log: Este comando se utiliza para ver el historial de cambios realizados en el repositorio.

git diff: Este comando se utiliza para mostrar las diferencias entre los cambios realizados en los archivos desde la última confirmación.

git branch: Este comando se utiliza para listar, crear y eliminar ramas (branch) del repositorio.

git checkout: Este comando se utiliza para cambiar entre las diferentes ramas o versiones del repositorio.

git merge: Este comando se utiliza para fusionar los cambios realizados en dos ramas diferentes del repositorio.

git reset: Este comando se utiliza para deshacer los cambios realizados en un archivo o directorio específico y volver al estado anterior.

git stash: Este comando se utiliza para guardar temporalmente los cambios que no se quieren confirmar o que se desea mover a otra rama.

git remote: Este comando se utiliza para administrar los repositorios remotos conectados al repositorio local.

git fetch: Este comando se utiliza para recuperar los cambios realizados en el repositorio remoto sin realizar la fusión con el repositorio local.

git rebase: Este comando se utiliza para aplicar los cambios de una rama en otra rama para tener un historial más lineal y limpio.

git tag: Este comando se utiliza para etiquetar versiones específicas del repositorio.

git submodule: Este comando se utiliza para incluir un repositorio dentro de otro como un submódulo.

git config: Este comando se utiliza para configurar las opciones de Git, como el nombre del usuario, el correo electrónico, la configuración de SSH, entre otros.

__________________

Cambiar nombre rama:

git branch -m main

_________________

git checkout \<id> where id is commit temporarily move to another commit

git revert \<id>
Revert changes of commit by creating a new commit

git reset --hard \<id> undo changes by deleting all commits since \<id>

git remote add connected to local git repositories

```
git remote add Anyname <URL: github>
```

git push --set-upstream origin main

git push Anyname remotenamerepository

git remote set-url origin https://usergithub@github.com/repo


_________________________________

git merge

git rebase

git cherry-pick

git stash

git squash

resolve merge conflict in GIT

you can use visual studio code the current is your branch incoming is the other branch

____________________

copiar de una rama a otra carpeta o archivo

se usa el comando 

```
git checkout <rama_donde:esta:elarchivo> <nombrearchivo> # si es un directorio poner/ al final

git checkout <el-otro-branch> -- path/a/tu/archivo
```

________________________


Search
Write

Sergio Hurtado
Get unlimited access to the best of Medium for less than $1/week.
Become a member


Git Interview Questions and answers for DevOps
Gayatri Dhakad
Gayatri Dhakad

·
Follow

6 min read
·
Oct 18, 2023
30


2





Git Interview Questions and Answers
1. Explain the difference between rebasing and merge in Git?
• Git rebase is a command that allows developers to integrate changes from one branch to another.
• Git merge is a command that allows you to merge branches from Git.

Git rebase and merge both integrate changes from one branch into another. Where they differ is how they used. Git rebase moves a feature branch into a master. Git merge adds a new commit, preserving the history.

(If you’re working alone or on a small team, use rebase. If you’re working with a big team, use merge.)

2. Have you faced the situation where you resolve conflicts in Git? How?
A merge conflict is an event that takes place when Git is unable to automatically resolve differences in code between two commits. Git can merge the changes automatically only if the commits are on different lines or branches. Here are the steps that will help you resolve conflicts in Git:
1. The easiest way to resolve a conflicted file is to open it and make any necessary changes
2. After editing the file, we can use the git add a command to stage the new merged content
3. The final step is to create a new commit with the help of the git commit command
4. Git will create a new merge commit to finalize the merge

3. How to revert a commit that has already been pushed and made public?
There are two processes through which you can revert a commit:
1. Remove or fix the bad file in a new commit and push it to the remote repository. Then commit it to the remote repository using:
git commit –m “commit message”
2. Create a new commit to undo all the changes that were made in the bad commit. Use the following command:
git revert <commit id>

4. Tell about the commands git reset — mixed and git merge — abort?.
git reset — mixed is used to undo changes made in the working directory and staging area.
git merge — abort helps stop the merge process and return back to the state before the merging began.

5. How will you find a list of files that has been modified in a particular commit?
The command to get a list of files that has been changed in a particular commit is:
git diff-tree –r {commit hash}
• -r flag allows the command to list individual files
• commit hash lists all the files that were changed or added in the commit.

6. How will you fix a broken commit? What command you will use?
To fix a broken commit in Git, We use the “git commit — amend” command, which helps us combine the staged changes with the previous commits instead of creating a fresh new commit.

7. Explain git stash drop?
Git ‘stash drop’ command is used to remove the stashed item. This command will remove the last added stash item by default, and it can also remove a selected item as well.
Ex: If you want to delete item named stash@{manoj}; you can use the command:
git stash drop stash@{manoj}.

8. Explain about “git cherry-pick”?
This command enables you to pick up commits from a branch within a repository and apply it to another branch. This command is useful to undo changes when any commit is accidentally made to the wrong branch. Then, you can switch to the correct branch and use this command to git cherry-pick the commit.

9. Can you tell the difference between git pull and git fetch?
Git pull command pulls new changes or commits from a particular branch from your central repository and updates your target branch in your local repository. (Git pull = git fetch + git merge)

Git fetch is also used for the same purpose but it works in a slightly different way. When you perform a git fetch, it pulls all new commits from the desired branch and stores it in a new branch in your local repository. If you want to reflect these changes in your target branch, git fetch must be followed with a git merge.

10. What is origin in Git?
Origin refers to the remote repository that a project was originally cloned from and is used instead of the original repository’s URL.

11. What is the difference between resetting and reverting?
git reset changes the state of the branch to a previous one by removing all of the states after the desired commit,

git revert does it through the creation of new reverting commits and keeping the original one intact.

12. What is ‘staging area’ or ‘index’ in Git?
That before completing the commits, it can be formatted and reviewed in an intermediate area known as ‘Staging Area’ or ‘Index’. Every change is first verified in the staging area and then that change is committed to the repository.


13. What work is restored when the deleted branch is recovered?
The files which were stashed and saved in the stash index list will be recovered back. Any untracked files will be lost. Also, it is a good idea to always stage and commit your work or stash them.

14. What is Head in Git?
Git maintains a variable for referencing, called HEAD to the latest commit in the recent checkout branch. So if we make a new commit in the repo then the pointer or HEAD is going to move or change its position to point to a new commit.

15. What is the purpose of branching and its types?
It allows the user to switch between the branches to keep the current work in sync without disturbing master branches and other developer’s work as per their requirements.

· Feature branching — A feature branch model keeps all of the changes for a particular feature inside of a branch. When the feature is fully tested and validated by automated tests, the branch is then merged into master.

· Task branching — In this branch, each task is implemented on its own branch with the task key included in the branch name. It is easy to see which code implements which task, just look for the task key in the branch name.

· Release branching — Once the develop branch has acquired enough features for a release, you can clone that branch to form a Release branch. Creating this branch starts the next release cycle, so no new features can be added after this point, only bug fixes, documentation generation, and other release-oriented tasks should go in this branch. Once it is ready to ship, the release gets merged into master and tagged with a version number.

Basic Git Commands — Refresh your mind once again

git init: creating a new repository.

git clone: to copy or check out the working repository.

git pull: fetch the code already in the repository.

git push: sending the changes to the master branch.

git add: It adds file changes in an existing directory to index.

git commit –m [type in a message] — It is used to snapshot or record a file.

git diff [first branch] [second branch] — it is used to display the differences present between the two branches.

git rest [commit] — It is used to undo all the changes that have been incorporated as a part of a commit after a specified commit has taken place.

git reset –hard [commit] — This command is used to discard all the history and takes us to the last specified commit.

git log –follow [file] — his is similar to that of git log with the additional difference that it lists the version history for a particular file.

git show [commit] — This is used to display the metadata and all the content related changes of a particular commit.

git tag [commitID] — This is used to give particular tags to the code commits.

git branch [branch-name] — This is used to create a new branch.

git branch –d [branch name] — It is used to delete the current branch name specified.

git checkout [branch-name] — It is helpful in switching from one branch to another.

git status: To know the comparison between the working directories and index.

I hope you enjoyed reading this article, Thanks for Reading!

___________________





