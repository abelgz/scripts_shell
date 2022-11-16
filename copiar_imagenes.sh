#!/bin/bash

#creamos una carpeta y entramos en ella

docker save -o ./eurekaserver.tar eurekaserver:dev
docker save -o ./cnmweb.tar cnmweb:dev
docker save -o ./clientescloud.tar clientescloud:dev
docker save -o ./cloudnodemanagement.tar cloudnodemanagement:dev
docker save -o ./cloudauditlogmanagement.tar cloudauditlogmanagement:dev
docker save -o ./cloudusermanagement.tar cloudusermanagement:dev
docker save -o ./springgateway.tar springgateway:dev

#copiamos los .tar a la maquina donde irán los contenedores

scp ./*.tar user@ip:/ruta/