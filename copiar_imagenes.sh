#!/bin/bash

#creamos una carpeta y entramos en ella

docker save -o ./contendor.tar contenedor:dev


#copiamos los .tar a la maquina donde irán los contenedores

scp ./*.tar user@ip:/ruta/