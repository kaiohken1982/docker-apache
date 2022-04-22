FROM docker-locale/base

# set noninteractive installation
ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Europe/Rome

RUN apt-get update && apt-get install -y apache2
RUN a2enmod rewrite \
    proxy \
    proxy_fcgi \
    headers \
    ssl \
    cache \
    deflate \
    expires