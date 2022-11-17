
# define a imagem base
FROM debian:latest
# define o workdir
WORKDIR /usr/src/app
# define o mantenedor da imagem
LABEL maintainer="PSS"
# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y

# Instala o NGINX
RUN apt-get install nginx -y
# Expoe a porta 80
EXPOSE 8082

# Instalar git, atualizar e copiar o projeto
RUN apt-get update \        
     apt-get install -y git
RUN git clone https://github.com/pss-ctd/Front2Checkpoint1.git
COPY . /usr/src/app/Front2Checkpoint1

#

# Comando para iniciar o NGINX no Container
CMD ["nginx", "-g", "daemon off;"]