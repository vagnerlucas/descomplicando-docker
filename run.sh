#!/bin/bash

VOLUME=mywebserver
CONTAINER=vagnerlucas/webserver-linuxtips-exec
TAG=1.0.0
VOLUME_FOLDER=/cygdrive/f/dump/myvol
PORT=8000

echo Criando volume ${VOLUME} ...
docker volume create ${VOLUME}
echo Rodando container ${CONTAINER} na porta ${PORT}
docker container run -p ${PORT}:80 -d --mount type=volume,src=${VOLUME},dst=${VOLUME_FOLDER} ${CONTAINER}:${TAG}
