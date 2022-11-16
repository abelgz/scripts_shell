#!/bin/bash

#En la máquina donde irán los contenedores, cargamos las imagenes

podman load -i eurekaserver.tar
podman load -i cnmweb.tar
podman load -i clientescloud.tar
podman load -i cloudnodemanagement.tar
podman load -i cloudauditlogmanagement.tar
podman load -i cloudusermanagement.tar
podman load -i springgateway.tar