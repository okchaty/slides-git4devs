#HSLIDE

### No tenemos Tiempo

![mejorar](../assets/images/mejorar.jpg)


#VSLIDE

### Git

![logo git](../assets/images/logo-git.png)


#VSLIDE


### Que es Git?

- Sistema de Control de Versiones Open Source
- Multiplataforma
- Distribuido
- Creado Por Linus Torvals.


#VSLIDE


### Linus Torvalds


![linus torvalds](../assets/images/torvaldsnvidia.jpg)

#VSLIDE


### Ventajas de Git


- Velocidad
- Completamente Distribuido
- Capaz de Manejar Grandes Proyectos (Kernel de Linux)
- Fuerte apoyo al desarrollo no lineal

#VSLIDE

### Sistema de Control de Versiones

Es un sistema que registra los cambios realizados sobre
un archivo o conjunto de archivos a lo largo del tiempo.

#VSLIDE

### Tipos de Sistemas de Control de Versiones


- Sistema de Control de Versiones Locales.
- Sistema de Control de Versiones Centralizados.
- Sistema de Control de Versiones Distribuidos.

#VSLIDE

### Sistema de Control de Version Local

![version local](../assets/images/version_local.png)

#VSLIDE

### Sistema de Control de Version Centralizado

#VSLIDE

![version centralizado](../assets/images/version_centralizado.png)

#VSLIDE

### Sistema de Control de Version Distribuido

#VSLIDE

![version distribuido](../assets/images/versiones_distribuidos.png)

#VSLIDE

### Install

## windows

    !python

    download http://git-scm.com/ next next

## linux

    !python

    Debian: sudo apt-get install git-all
    Red Hat: sudo Yum install git-all

## OS X

    !python

    brew update
    brew install git


#VSLIDE

### Comandos Git

## Link

    !python

    https://gist.github.com/luismayta/4047768


#VSLIDE

### Estados de Git:

![lifecycle.png](../assets/images/lifecyclefile.png)


#VSLIDE

### Personalizando Git

- Git Config
- Git Ignore

#VSLIDE

### Git Config

#### Link

    !python

    https://github.com/PimientaDigital/gitconfig

#### config

    !python

    git config -e
    git config --global -e


#VSLIDE

### Git Ignore

#### Link

    !python

    https://github.com/PimientaDigital/gitignore

#### Ignore File

    !python

    echo "file.py"  >> .gitignore

#VSLIDE

### Tipos de Repositorios

- Repositorio Local
- Repositorio Bare

#VSLIDE

### Repositorio local

#### Create Repo

    !python

    git init <<path>>

#VSLIDE

### Repositorio Bare

#### Create Repo

    !python

    git init --bare <<path.git>>

#HSLIDE

### Hooks de Git

- pre-commit
- post-commit
- prepare-commit-msg
- post-receive
- ...

#VSLIDE

### Tools

#VSLIDE

### Meld

#### Install

    !python

    sudo apt-get install meld

#### Config

    !python

    git config --global merge.tool meld
    git config --global diff.tool meld

#VSLIDE

### Preguntas

![mejorar](../assets/images/mejorar.jpg)
