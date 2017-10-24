FROM php:7.1.9-fpm

RUN apt-get update && \
    apt-get install -y libz-dev libmemcached-dev uuid-dev libpq-dev zlib1g-dev libicu-dev g++ ruby-dev make rubygems && \
    pecl install memcached uuid && \
    echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini && \
    docker-php-ext-install opcache pdo pdo_pgsql pgsql intl && \
    docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql && \
    docker-php-ext-configure intl && \
    docker-php-ext-enable uuid && \
    gem install --no-rdoc --no-ri sass -v 3.4.22 && \
    gem install --no-rdoc --no-ri compass

COPY ./entrypoint.sh /
RUN chmod a+rwx /entrypoint.sh

WORKDIR /var/www/html

ENTRYPOINT ["/entrypoint.sh", "php-fpm"]
