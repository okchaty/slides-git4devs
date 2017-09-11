slides-git4devs
#################

|gitpitch| |build_status| |code_climate| |github_tag| |test_coverage| |license|

:Version: 0.0.6
:Web: https://github.com/luismayta/slides-git4devs
:Slide: https://gitpitch.com/luismayta/slides-git4devs
:Download: http://github.com/luismayta/slides-git4devs
:Source: http://github.com/luismayta/slides-git4devs
:Keywords: slides-git4devs

Slides User Story

.. contents:: Table of Contents:
    :local:

Requirements
============

- `python`_

.. code-block:: bash

   $ make setup


Test
====

.. code-block:: bash

   $ make test

Actions
=======

Other commands for developing are written in Makefile:

.. code-block:: bash

  λ make help
    ༼ つ ◕_◕ ༽つ Commands
      build                Build docker container by env
      clean                clean Files compiled
      environment          Make environment for developer
      documentation        Make Documentation
      down                 remove containers docker by env
      env                  Show envs available
      install              Install with var env Dependences
      list                 List of current active services by env
      lint                 Clean files unnecesary
      test                 make test
      up                   Up application by env
      restart              Reload services
      ssh                  Connect to container
      stop                 stop containers docker by env
      setup                Install dependences initial
      verify_network       Verify network
      help                 Show help text


Changelog
=========

Please see `changelog`_ for more information what has changed recently.

Contributing
============

Please see `contributing`_ for details.

Credits
=======

Made with :heart: :coffee:️and :pizza: by `company`_.

- `All Contributors`_

.. |code_climate| image:: https://codeclimate.com/github/luismayta/slides-git4devs/badges/gpa.svg
  :target: https://codeclimate.com/github/luismayta/slides-git4devs
  :alt: Code Climate

.. |github_tag| image:: https://img.shields.io/github/tag/luismayta/slides-git4devs.svg?maxAge=2592000
  :target: https://github.com/luismayta/slides-git4devs
  :alt: Github Tag

.. |build_status| image:: https://travis-ci.org/luismayta/slides-git4devs.svg
  :target: https://travis-ci.org/luismayta/slides-git4devs
  :alt: Build Status Tag

.. |gitpitch| image:: https://gitpitch.com/assets/badge.svg
  :target: https://gitpitch.com/luismayta/slides-git4devs?grs=github&t=white
  :alt: GitPitch

.. |license| image:: https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square
  :target: LICENSE
  :alt: License

.. |test_coverage| image:: https://codeclimate.com/github/luismayta/slides-git4devs/badges/coverage.svg
  :target: https://codeclimate.com/github/luismayta/slides-git4devs/coverage
  :alt: Test Coverage

..
   Links

.. _`changelog`: CHANGELOG.rst
.. _`contributors`: AUTHORS
.. _`contributing`: CONTRIBUTING.rst
.. _`company`: https://github.com/luismayta
.. _`author`: https://github.com/luismayta
.. _`python`: https://www.python.org
