# inicializar un repositorio de git
git init

# mostrar el estado de el area de ensayo  y del area de staging
git status

# mostrar las diferencias que existen entre en staging area y el area del repositorio
git diff

###################
# AGREGAR CAMBIOS #
###################

# mover los cambios del area de trabajo al area de staging
git add .

# mover los archivos del area de ensayo al area de trabajo
git reset

###################
# GUARDAR CAMBIOS #
###################

# crear un commit
git commit -m "Descripcion del commit"

# listar todos los commits del proyecto de forma detallada
git log

# listar todos los commits del proyecto de forma resumida
git log --oneline

# listar una cantidad especifica de commits (los ultimos 2 commits)
git log -n 2

# mostrar la informacion detallada de un commit incluyendo los cambios realizados
git show

#######################
# SINCRONIZAR CAMBIOS #
#######################

# enviar los cambios del repositorio local al remoto
git push

# traer los cambios del repositorio remoto al local
git pull

#########################
# COPIAR UN REPOSITORIO #
#########################

# descargar una copia completa de un repositorio remoto en un repositorio remoto
git clone <url_repositorio>

#########
# RAMAS #
#########

# listar las ramas existentes
git branch

# crear una nueva
git switch -c develop

# eliminar una rama
git branch -D develop

# moverse a una rama especifica
git switch develop

# unir el historial de cambios de 2 ramas (merge) // se debe hacer el merge desde la rama en la que quedaran los cambios
git merge develop

#############
# GIT STASH #
#############

# almacenar cambios temporalmente en un area de stash sin necesidad de hacer commit
git stash

# restaurar los cambios del stash al area de trabajo
git stash pop

# listar los cambios almacenados en el stash
git stash list

# almacenar cambios en el area de stash con un nombre
git stash save "test"

# restaurar cambios especificos almacenados en el stash
git stash pop stash@{1} # se restauran los cambios guardados en el stash con el identificador stash@{1}

# almacenar los cambios en el stash incluyendo los archivos a los cuales git aun no les esta haciendo seguimiento
git stash --include-untracked

#######################
# DESHACIENDO CAMBIOS #
#######################

# deshacer los cambios realizados en un archivo que se encuentre en el area de trabajo
git checkout <file_name>

# deshacer los cambios realizados en un commit, pero sin eliminar el commit de la historia (los cambios revertidos se van a referenciar en un nuevo commit)
git revert <SHA>

# deshacer los cambios realizados en un commit
git reset --soft HEAD~1 # deshace los cambios realizados en el ultimo commit (los cambios realizados en el commit se mantienen en el area de staging)
git reset HEAD~1 # deshace los cambios realizados en el ultimo commit (los cambios realizados en el commit se mantienen en el area de trabajo)
git reset --hard HEAD~1 # deshace los cambios realizados en el ultimo commit (los cambios realizados en el commit son descartados)
