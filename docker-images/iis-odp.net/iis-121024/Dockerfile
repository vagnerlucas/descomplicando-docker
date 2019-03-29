# escape=`
FROM mcr.microsoft.com/dotnet/framework/aspnet

COPY ./odp c:/odp/

VOLUME C:\Data

ENV ODAC_VERSION "121024"

RUN powershell -File c:\odp\install.ps1

ARG site_root=./www/

ADD ${site_root} /inetpub/wwwroot