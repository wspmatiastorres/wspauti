# WSP Infraestructura de Automatización

Infraestructura basada en containers con una serie de servicios relacionados con: automatización, IIoT(IoT), transformación digital, arquitecturas, etc.

## tags-api

REST API basada en [FastAPI](https://fastapi.tiangolo.com/) capaz de entregar un JSON representativo de la tabla *interfaz_tags*.

Se hace uso de una base de datos PostgreSQL y un administrador portatil de base de datos en el puerto 8082.

## plc-browser-api

REST API que permite obtener tags e información directo desde un PLC logix. La comunicación al plc se hace mediante la librería [pycomm3](https://docs.pycomm3.dev/).

También está basada en [FastAPI](https://fastapi.tiangolo.com/) y es un microservicio *dockerizado*.

## DB PostgreSQL

## Administrador de DB *Adminer*