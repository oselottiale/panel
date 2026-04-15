#!/bin/bash

composer install --no-interaction
npm install
npm run build

if [ ! -f .env ]; then
  cp .env.example .env
fi

php artisan key:generate
php artisan migrate --force

echo "Pterodactyl Codespace ready!"
