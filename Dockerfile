FROM httpd:latest

# criando variavel de ambiente
ENV app=Webserver

# expondo a porta 80
EXPOSE 80

# copiando arquivo de conf para diretorio
COPY giropops /opt/webserver/

# mudando diretorio
WORKDIR /usr/local/apache2/htdocs

# substituindo arquivo index
COPY index.html .

# sem necessidade do ENTRYPOINT ou CMD 
# porque a imagem httpd jáexecuta por padrao

