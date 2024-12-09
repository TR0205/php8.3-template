FROM php:8.3-fpm

WORKDIR /var/www/html

COPY ./src /var/www/html

RUN apt-get update && apt-get install -y \
    libonig-dev \
    && docker-php-ext-install mbstring

CMD ["php-fpm"]
