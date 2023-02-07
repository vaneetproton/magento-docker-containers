FROM ubuntu:20.04
 
LABEL maintainer="Vaneet Dhiman <vaneetdhiman89@pm.me>"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York


RUN apt-get update \
    && apt-get -y install apache2 nano mysql-client \
    && a2enmod rewrite \
    && a2enmod headers \
    && export LANG=en_US.UTF-8 \
    && apt-get update \
    && apt-get install -y software-properties-common \
    && apt-get install -y language-pack-en-base \
    && LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y vim telnet iputils-ping net-tools wget \
    && apt-get -y install php7.4 php7.4-curl php7.4-intl php7.4-gd php7.4-dom php7.4-mcrypt php7.4-iconv php7.4-xsl php7.4-mbstring php7.4-ctype   php7.4-zip php7.4-pdo php7.4-xml php7.4-bz2 php7.4-calendar php7.4-exif php7.4-fileinfo php7.4-json php7.4-mysqli php7.4-mysql php7.4-posix php7.4-tokenizer php7.4-xmlwriter php7.4-xmlreader php7.4-phar php7.4-soap php7.4-mysql php7.4-fpm php7.4-bcmath libapache2-mod-php7.4 php7.4-gmagick s3fs \
    && sed -i -e"s/^memory_limit\s*=\s*128M/memory_limit = 2048M/" /etc/php/7.4/apache2/php.ini \
    && rm /var/www/html/* \
    && sed -i "s/None/all/g" /etc/apache2/apache2.conf \
    && sed -i "s/80/8080/g" /etc/apache2/ports.conf /etc/apache2/sites-enabled/000-default.conf \
##install supervisor and setup supervisord.conf file
    && apt-get install -y supervisor \
    && apt-get install -y pdftk ghostscript \
    && apt-get install -y graphicsmagick nfs-common \
    && mkdir -p /var/log/supervisor
	
## Install Composer
RUN wget https://getcomposer.org/download/1.10.10/composer.phar
RUN mv composer.phar /usr/local/bin/composer
RUN chmod a+x /usr/local/bin/composer

ENV APACHE_RUN_USER    www-data
ENV APACHE_RUN_GROUP   www-data
ENV APACHE_PID_FILE    /var/run/apache2.pid
ENV APACHE_RUN_DIR     /var/run/apache2
ENV APACHE_LOCK_DIR    /var/lock/apache2
ENV APACHE_LOG_DIR     /var/log/apache2
ENV LANG               C
 
RUN mkdir /var/www/sinalite
WORKDIR /var/www/sinalite
COPY s3map.sh /
RUN chmod a+x /s3map.sh

CMD ["/usr/bin/supervisord"]