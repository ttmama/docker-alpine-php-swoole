FROM php:7.1.3-alpine
RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS linux-headers \
&& pecl install swoole \
&& docker-php-ext-enable swoole \
&& apk del .phpize-deps