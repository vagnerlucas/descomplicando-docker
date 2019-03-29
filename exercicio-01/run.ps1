$volume = "mywebserve"
$container = "vagnerlucas/webserver-linuxtips-exec"
$tag = "latest"
$volumeFolder = "/cygdrive/f/dump/myvol"
$port = "8000"

$msg = "Criando volume",$volume,"..." -Join " "

echo $msg
docker volume create $volume

$msg = "Rodando container", $container, "na porta", $port -Join " "
echo $msg
docker container run -p $port":80" -d --mount type=volume,src=$volume,dst=$volumeFolder $container":"$tag

