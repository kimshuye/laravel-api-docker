FROM php:7.0-apache
COPY php.ini /usr/local/etc/php/
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
