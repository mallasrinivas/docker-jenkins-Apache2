# Base image ubuntu 
FROM ubuntu
# expose port
EXPOSE 82
# install apache
RUN apt-get update && apt-get install -y apache2
# copy index.html from  source code
COPY /path/to/source/code /var/www/html