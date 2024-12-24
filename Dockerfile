FROM ubuntu

RUN mkdir /app && mkdir /config 

ADD /app/ /app/

RUN apt-get -y update && apt-get -y install nginx && chmod +x /app/*.sh

# expose port for http
EXPOSE 80/tcp

# map /config to host defined config path (used to store configuration from app)
VOLUME /etc/nginx

# COPY default /etc/nginx/nginx.conf

# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

ENV TZ=Europe/Amsterdam
ENTRYPOINT ["/app/start.sh"]