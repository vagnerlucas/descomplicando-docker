FROM httpd:latest

# criando variável de ambiente
ENV app=Webserver

# expondo a porta 80
EXPOSE 80

# copiando arquivo de conf para diretório
COPY giropops /opt/webserver/

# mudando diretório
WORKDIR /usr/local/apache2/htdocs

# substituindo arquivo index
COPY index.html .

# sem necessidade do ENTRYPOINT ou CMD 
# porque a imagem httpd já executa por padrão

