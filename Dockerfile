FROM httpd:latest

ENV app=Webserver

EXPOSE 80

COPY giropops /opt/webserver/

WORKDIR /usr/local/apache2/htdocs

COPY index.html .

#RUN echo '<h1>girocops apache srv</h1>' > index.html

