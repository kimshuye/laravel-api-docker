FROM php:7.0-apache
COPY php.ini /usr/local/etc/php/
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN apt-get update
RUN apt-get install -y apt-utils git unzip
