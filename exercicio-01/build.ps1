$env:TAG = "1.0.0"
$env:IMAGE = "webserver-linuxtips-exec"

echo "Criando imagem $env:IMAGE : $env:TAG"
docker build -t $env:IMAGE:$env:TAG .
