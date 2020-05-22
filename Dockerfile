FROM ubuntu:18.04
RUN apt update && apt install nginx -y
COPY index.html /var/www/html/index.html
ENTRYPOINT ["usr/sbin/nginx","-g","daemon off;"]
EXPOSE 80
