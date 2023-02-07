FROM ubuntu:20.04
 
LABEL MAINTAINER "Vaneet Dhiman <vaneetdhiman89@pm.me>"
 
##update server
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York
RUN apt-get update \
##install nginx
&& apt-get install -y locales \
&& locale-gen en_US.UTF-8 \
&& export LANG=en_US.UTF-8 \
&& apt-get update \
&& apt-get install -y software-properties-common \
&& LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:nginx/stable \
&& apt-get -y update \
&& apt-get -y install nginx \
&& rm /etc/nginx/sites-enabled/default \
## Generate self signed certificate
&& cd /etc/nginx && echo -e "\n\n\n\n\n\n\n" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt \
##install supervisor and setup supervisord.conf file
&& apt-get install -y supervisor \
&& apt-get install -y vim telnet iputils-ping net-tools \
&& mkdir -p /var/log/supervisor
EXPOSE 80 443
 
CMD ["/usr/bin/supervisord"]