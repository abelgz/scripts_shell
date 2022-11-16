#!/bin/bash

#Una vez cargadas las imagenes, creamos la red

podman create network naturgy

#Levantamos los contenedores y los añadimos a la red

podman run --name eurekaserver -p 8761:8761 -itd --network=naturgy eurekaserver:dev
podman run --name cnmweb -p 8083:8083 -itd --network=naturgy cnmweb:dev
podman run --name clientescloud -itd --network=naturgy clientescloud:dev
podman run --name cloudnodemanagement -itd --network=naturgy cloudnodemanagement:dev
podman run --name cloudauditlogmanagement -itd --network=naturgy cloudauditlogmanagement:dev
podman run --name cloudusermanagement -itd --network=naturgy cloudusermanagement:dev
podman run --name springgateway -p 8765:8765 -itd --network=naturgy springgateway:dev

