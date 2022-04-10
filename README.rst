===========
CV-template
===========

Minimalistic template for software developer CV document. It's implemented as
Jinja template with YAML data, so any Jinja-compatible generator should work
for generation of resulting HTML.

.. image:: images/screenshot.png

Dependencies
============
* *Open Sans* font family
* Any Jinja2-compatible generator

How to build
============

First, clone the repo and fill data fields in ``data.yaml`` file.

Using ``tera-cli``
------------------

Supplied ``Makefile`` uses `tera-cli <https://github.com/guangie88/tera-cli>`_.
In case you have it installed, run:

.. code:: sh

  make

It will create ``cv.html`` file in root directory.

Using ``j2cli``
---------------

To build using ``j2cli``:

.. code:: sh

  pip install j2cli[yaml]
  j2 -o cv.html template.html data.yaml
