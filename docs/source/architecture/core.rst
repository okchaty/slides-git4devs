
Core Architecture
-----------------

The architecture  is described in the sections bellow.

.. uml::

    @startuml

    autonumber
    makefile -> requirements : make setup
    makefile -> dockercompose : make docker.build
    dockercompose -> dockerfile : docker build with file dockerfile.

    @enduml


.. note::

  This image is only describing the most important core components, some components are not shown here.
