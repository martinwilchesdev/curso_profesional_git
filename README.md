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
