FROM php:7.1.9-fpm

RUN apt-get update && \
    apt-get install -y libz-dev libmemcached-dev uuid-dev libpq-dev zlib1g-dev libicu-dev g++ && \
    pecl install memcached uuid && \
    echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini && \
    docker-php-ext-install opcache pdo pdo_pgsql pgsql intl && \
    docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql intl && \
    docker-php-ext-enable uuid
