@echo off
setlocal 
set TAG=1.0.0
set IMAGE=webserver-linuxtips-exec

echo "Criando imagem %IMAGE% : %TAG%"
docker build -t %IMAGE%:%TAG% .
