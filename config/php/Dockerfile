FROM php:7.4-apache

ENV COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer

COPY ./php.ini /usr/local/etc/php/php.ini

RUN apt-get update && \
  apt-get -y install --no-install-recommends git unzip libzip-dev libicu-dev libonig-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  docker-php-ext-install intl pdo_mysql zip bcmath

WORKDIR /var/www
# RUN composer create-project laravel/laravel:^8.0 laravel
# WORKDIR /var/www/laravel
# RUN php artisan key:generate
# RUN php artisan storage:link
# RUN chmod -R 777 storage bootstrap/cache
# RUN php artisan migrate

COPY ./apache2.conf /etc/apache2/
COPY ./sites/*.conf /etc/apache2/sites-available/

RUN /etc/init.d/apache2 restart
