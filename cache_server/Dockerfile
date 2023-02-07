FROM ubuntu:20.04
 
LABEL MAINTAINER "Vaneet Dhiman <vaneetdhiman89@pm.me>"
 
##update server
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York
RUN apt-get update \
##install supervisor and setup supervisord.conf file
&& apt-get install -y supervisor \
&& mkdir -p /var/log/supervisor \
##install varnish
&& apt-get -y install varnish \
&& apt-get install -y vim telnet iputils-ping net-tools \
&& rm /etc/varnish/default.vcl \
&& rm /etc/default/varnish 
EXPOSE 6082 6081
CMD ["/usr/bin/supervisord"]