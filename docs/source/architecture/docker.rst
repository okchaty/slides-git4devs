
Docker Architecture
-------------------

More information about the docker itself, please go to :doc:`Docker Dev Documentation </docker/index>`

.. uml::

    @startuml

    [docker]
    [docker-compose]

    package "provision" {
        frame "docker" {
            [app]
            [docker-test]
            [docs]
        }
        frame "docker-compose" {
            [production]
            [test]
            [stage]
        }
    }

    [docker] --> [app]
    [docker] --> [docker-test]
    [docker] --> [docs]

    [docker-compose] --> [production]
    [docker-compose] --> [test]
    [docker-compose] --> [stage]

    @enduml

