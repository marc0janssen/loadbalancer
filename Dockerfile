FROM ubuntu

RUN mkdir /app && mkdir /config 

ADD /app/ /app/

RUN apt-get -y update && apt-get -y install nginx && chmod +x /app/*.sh

# expose port for http
EXPOSE 8081/tcp

# map /etc/nginx to host defined config path (used to store configuration from app)
VOLUME /etc/nginx

ENV TZ=Europe/Amsterdam
ENTRYPOINT ["/app/start.sh"]