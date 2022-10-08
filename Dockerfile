FROM drupal:9-php7.4-apache

RUN docker-php-ext-install bcmath

RUN set -eux; \
        apt-get update; \
        apt-get install -y --no-install-recommends git

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/
