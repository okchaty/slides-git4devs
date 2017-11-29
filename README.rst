|gitpitch| |wercker| |build_status| |code_climate| |github_tag| |test_coverage| |license|

:Version: 0.1.0
:Web: https://github.com/luismayta/slides-git4devs
:Slide: https://gitpitch.com/luismayta/slides-git4devs
:Download: http://github.com/luismayta/slides-git4devs
:Source: http://github.com/luismayta/slides-git4devs
:Keywords: slides-git4devs

.. contents:: Table of Contents:
    :local:

slides-git4devs
###############

Slides git for devs

Usage
=====

Requirements
------------

* `python`_
* `docker`_
* `docker compose`_

.. code-block:: bash

  λ make setup
  λ make docker.build
  λ make docker.run service=app


Actions
-------

Other commands for developing are written in Makefile:

.. code-block:: bash

  λ make help
  ༼ つ ◕_◕ ༽つ Makefile for slides-git4devs

  Usage:
      environment               create environment with pyenv
      install                   install dependences python by env
      clean                     remove files of build
      setup                     install requirements

      Docker:

          docker.build         build all services with docker-compose
          docker.down          down services docker-compose
          docker.ssh           connect by ssh to container
          docker.stop          stop services by env
          docker.verify_network           verify network
          docker.up             up services of docker-compose
          docker.run            run {service} {env}
          docker.list           list services of docker

      Docs:

          docs.show                  Show restview README
          docs.make.html             Make documentation html

      Tests:

          test                       Run all test
          test.lint                  Run all pre-commit
          test.syntax                Run all syntax in code


Changelog
=========

* This project adheres to `Semantic Versioning <http://semver.org/spec/v2.0.0.html>`_
* and `human-readable changelog <http://keepachangelog.com/en/0.3.0>`_.


Please see `changelog`_ for more information what has changed recently.

Contributing
============

Please see `contributing`_ for details.


Credits
=======

Made with :heart: :coffee:️and :pizza: by `company`_.

* `All Contributors`_

.. |code_climate| image:: https://codeclimate.com/github/luismayta/slides-git4devs/badges/gpa.svg
  :target: https://codeclimate.com/github/luismayta/slides-git4devs
  :alt: Code Climate

.. |github_tag| image:: https://img.shields.io/github/tag/luismayta/slides-git4devs.svg?maxAge=2592000
  :target: https://github.com/luismayta/slides-git4devs
  :alt: Github Tag

.. |build_status| image:: https://travis-ci.org/luismayta/slides-git4devs.svg
  :target: https://travis-ci.org/luismayta/slides-git4devs
  :alt: Build Status Tag

.. |wercker| image:: https://app.wercker.com/status/c0c2ac92f9f63cc9b21db828f1c8e695/s/ "wercker status"
  :target: https://app.wercker.com/project/byKey/c0c2ac92f9f63cc9b21db828f1c8e695
  :alt: Wercker status

.. |gitpitch| image:: https://gitpitch.com/assets/badge.svg
  :target: https://gitpitch.com/luismayta/slides-git4devs?grs=github&t=white
  :alt: GitPitch

.. |license| image:: https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square
  :target: LICENSE
  :alt: License

.. |test_coverage| image:: https://codeclimate.com/github/luismayta/slides-git4devs/badges/coverage.svg
  :target: https://codeclimate.com/github/luismayta/slides-git4devs/coverage
  :alt: Test Coverage

.. Links

.. _`all contributors`: AUTHORS.rst
.. _`changelog`: CHANGELOG.rst
.. _`contributors`: AUTHORS
.. _`contributing`: CONTRIBUTING.rst
.. _`company`: https://github.com/hadenlabs
.. _`author`: https://github.com/luismayta
.. _`python`: https://www.python.org
.. _`docker`: https://www.docker.io
.. _`docker compose`: https://docs.docker.com/compose
