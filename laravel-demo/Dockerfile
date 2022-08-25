
FROM php:7.4-fpm-alpine
RUN apk update && apk add curl

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer