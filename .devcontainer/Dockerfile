FROM mcr.microsoft.com/devcontainers/php:8.1

RUN apt-get update && apt-get install -y \
    zip unzip git curl \
    && docker-php-ext-install pdo pdo_mysql
