NReinas
========
.. image:: https://travis-ci.org/jealuna/NReinas.svg?branch=master
    :target: https://travis-ci.org/jealuna/NReinas

Solución al problema de las N Reinas

.. contents:: :local:

Instalación
-----------
.. code:: bash

  $ docker-compose build
  $ docker-compose up --force-recreate
  
Ejecución
---------
.. code:: bash
  
  $ docker exec -it reinas_app_1 bash

Para relizar el calculo con n reinas:

  $ python reinas/queens.py n
  
Para ejecutar las pruebas unitarias con n reinas

  $ pytest -q test/tests.py --numero n
  
Alternativamente se puede realizar la ejecución de los comandos sin el shell interactivo
  
   $ docker exec -it reinas_app_1 python reinas/queens.py n
   
   $ docker exec -it reinas_app_1 pytest -q test/tests.py --numero n
