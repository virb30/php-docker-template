FROM php:fpm

ARG USER_ID
ARG GROUP_ID

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
USER ${USER_ID}:${GROUP_ID}
