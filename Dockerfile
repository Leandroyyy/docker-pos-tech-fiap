# base da imagem
FROM ubuntu:latest

# comando do linux que tem que ser feito ao iniciar imagem
RUN apt update

# comando para instalar nginx
RUN apt install nginx -y

VOLUME [ "/var/www/html" ]

WORKDIR "/var/www/html"

# copia o arquivo html local e coloca dentro da aplicação do container
ADD index.html index.html

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

# porta que o docker esta rodando
EXPOSE 80