#Using base image
FROM ubuntu:16.04

#Installing NGINX
RUN apt-get update -y \
	&& apt-get install -y nginx \
	&& apt-get clean
RUN rm -frv /var/www/html/*
COPY index.html /var/www/html/index.html

RUN chmod +r /var/www/html/index.html

#Exposing to certain ports 
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]

