# setup server
FROM romeoz/docker-nginx-php:7.3
RUN apt-get update && \
    apt-get install -y php-redis imagemagick php-imagick
WORKDIR /var/www/app/

# copy nginx config
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
