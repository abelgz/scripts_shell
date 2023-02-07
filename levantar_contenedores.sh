#!/bin/bash

#Una vez cargadas las imagenes, creamos la red

podman create network red

#Levantamos los contenedores y los añadimos a la red

podman-compose up --build -d

