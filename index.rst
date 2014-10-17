Git Para Desarrolladores
========================

.. include:: _templates/git-logo.rst

About Me
========

Luis Mayta | @slovacus

http://luismayta.github.com

.. slide:: Agenda
    :level: 2

    * Que es Git?
    * Ventajas de Git.
    * Sistema de Control de Versiones.
    * Tipos de Sistema de Control de Versiones.
    * Instalacion.
    * Comandos de Git.


.. slide:: Agenda
    :level: 2

    * Comandos de Git.
    * Estados de Git.
    * Personalizando.
    * Tipos de Repositorios.
    * Hooks.
    * Herramientas.

.. slide:: Git
    :level: 2

    .. image:: _static/logo-git.png
        :align: center
        :width: 70%

.. slide:: Que es Git?
    :level: 2

    * Sistema de Control de Versiones Open Source
    * Multiplataforma
    * Distribuido
    * Creado Por Linus Torvals.


.. slide:: Ventajas de Git
    :level: 2

    * Velocidad
    * Completamente Distribuido
    * Capaz de Manejar Grandes Proyectos (Kernel de Linux)
    * Fuerte apoyo al desarrollo no lineal


.. slide:: Sistema de Control de Versiones
    :level: 2

    Es un sistema que registra los cambios realizados sobre 
    un archivo o conjunto de archivos a lo largo del tiempo.


.. slide:: Tipo de Sistemas de Control de Versiones
    :level: 2

    * Sistema de Control de Versiones Locales.
    * Sistema de Control de Versiones Centralizados.
    * Sistema de Control de Versiones Distribuidos.

.. slide:: Sistema de Control de Versiones Locales
    :level: 2

    .. image:: _static/version_local.png
        :align: center
        :width: 70%

.. slide:: Sistema de Control de Versiones Centralizados
    :level: 2

    .. image:: _static/version_centralizado.png
        :align: center
        :width: 70%

.. slide:: Sistema de Control de Versiones Distribuido
    :level: 3

    .. image:: _static/versiones_distribuidos.png
        :align: center
        :width: 70%


.. slide:: Instalacion
    :level: 2

    windows::
    
        download http://git-scm.com/ next next
        
    linux::

        Debian: sudo apt-get install git-all
        Red Hat: sudo Yum install git-all
    
    OS X::
    
        brew update
        brew install git

.. slide:: Comandos de Git
    :level: 2

    enlace::

        https://gist.github.com/luismayta/4047768

.. slide:: Estados de Git
    :level: 2

    .. image:: _static/lifecyclefile.png
        :width: 100%
        :align: center
    
.. slide:: Personalizando Git
    :level: 2

    * Git config
    * Git Ignore

.. slide:: Git Config
    :level: 2

    enlace::

        https://github.com/PimientaDigital/gitconfig

    config::

        git config -e
        git config --global -e

.. slide:: Git Ignore
    :level: 2

    enlace::

        https://github.com/PimientaDigital/gitignore

    ignore file::

        echo "file.py"  >> .gitignore

.. slide:: Tipos de Repositorios
    :level: 2

    * repositorio local
    * repositorio BARE

.. slide:: Repositorio local
    :level: 2

    Crear Repo::

        git init <<path>>

.. slide:: Repositorio Bare
    :level: 2

    Crear Repo::

        git init --bare <<path.git>>

.. slide:: Hooks de Git
    :level: 2

    * pre-commit
    * post-commit
    * prepare-commit-msg
    * post-receive
    ...

.. slide:: Herramientas
    :level: 2

    * meld

.. slide:: Agregar Meld
    :level: 2

    Instalar::

        sudo apt-get install meld

    configurar meld::

        git config --global merge.tool meld
        git config --global diff.tool meld

.. slide:: Preguntas
    :level: 2

    *Gracias*
