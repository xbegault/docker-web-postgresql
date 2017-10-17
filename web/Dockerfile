FROM nginx:1.12.1

ENV NGINX_DEFAULT_CONF_FILE /etc/nginx/conf.d/default.conf
ENV NGINX_CONFIG_PHP /etc/nginx/php.conf
ENV NGINX_CONFIG_FILE /etc/nginx/nginx.conf

COPY default.conf ${NGINX_DEFAULT_CONF_FILE}
COPY php.conf ${NGINX_CONFIG_PHP}
COPY nginx.conf ${NGINX_CONFIG_FILE}

WORKDIR /var/www/html

