FROM php:7.1-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo_mysql

# WORKDIR /var/www

# RUN rm -rf /var/www/html
# RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# RUN ln -s public html

# EXPOSE 9000

# ENTRYPOINT ["php-fpm"]