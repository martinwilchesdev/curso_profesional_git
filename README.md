# Git

## instalar git

Comprobar si git esta instalado en el sistema

```bash
git --version
```

## Configuracion inicial

configuracion de credenciales

```bash
git config --global.name "Martin Wilches"
git config --global.email "martin@gmail.com"
```

## Configuracion de claves SSH

llave compartida entre el repositorio remoto y el repositorio local

```bash
ls ~/.ssh/id_ed25519.pub # comprobar si existe la clave ssh en el sistema
ssh-keygen -t ed25519 # crear una nueva calve ssh
cat ~/.ssh/id_ed25519.pub # copiar la clave ssh
```

## Repositorio

Esapacio en memoria donde se almacena un proyecto y su historial

### local

version del repositorio almacenada en un computador local

### remoto

version del repositorio en la nube

## Areas

### area de trabajo

area donde se ubican los archivos a los que todavia no se les esta haciendo seguimiento con git

### staging

cambios que estan listos para alojar en el repositorio

### repositorio

area donde se almacenan los cambios de forma permanente

## .gitignore

contiene los archivos a los que git no les hara seguimiento

## Workflow de git

- nombramiento de ramas
- nombramiento de commits
- creacion de ramas
- merge de ramas

### future based

se crea una nueva rama para cada cambio realizado o implementado

### gitflow

se utilizan 2 ramas principales (main y develop)

- a partir de la rama develop se crean ramas `feature` y se funcionan con la rama develop
- a partir de la rama develop se crean ramas `release` y se funcionan con la rama main
- a partir de la rama main se crean ramas `hotfix` y se funcionan con la rama develop y main

### trunk based

se utiliza una unica rama principal (iteracion y entrega continua)
