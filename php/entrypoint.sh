#!/bin/bash

ln -s /usr/local/bin/compass /usr/bin/compass
cd /var/www/html && php -d memory_limit=-1 bin/console assets:install --symlink --relative
cd /var/www/html && php -d memory_limit=-1 bin/console assetic:dump

exec "$@"
