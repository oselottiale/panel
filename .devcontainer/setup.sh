#!/bin/bash

# Install composer deps
composer install --no-interaction

# Install node deps
npm install

# Build frontend
npm run build

# Copy env if missing
if [ ! -f .env ]; then
  cp .env.example .env
fi

# Generate key
php artisan key:generate

# Run migrations
php artisan migrate --force

echo "Pterodactyl dev environment ready!"
