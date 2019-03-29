#!/bin/bash

TAG=1.0.0
IMAGE=webserver-linuxtips-exec

echo Criando imagem ${IMAGE} : ${TAG}
docker build -t ${IMAGE}:${TAG} .
