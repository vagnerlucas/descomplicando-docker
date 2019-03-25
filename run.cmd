@echo off
setlocal

set VOLUME=mywebserver
set CONTAINER=vagnerlucas/webserver-linuxtips-exec
set VOLUME_FOLDER=/cygdrive/f/dump/myvol
set PORT=8000

echo Criando volume %VOLUME% ...
docker volume create %VOLUME%
echo Rodando container %CONTAINER% na porta %PORT%
docker container run -p %PORT%:80 -d --mount type=volume,src=%VOLUME%,dst=%VOLUME_FOLDER% %CONTAINER%
