#!/bin/bash

rm -rf /var/www/laravel/framework

git clone https://github.com/laravel/laravel.git /var/www/laravel/framework

cp /var/www/laravel/config/.env /var/www/laravel/framework

cd /var/www/laravel/framework

composer install --no-dev --optimize-autoloader

chmod o+w storage/*
sudo chmod o+w storage/framework/*
php artisan optimize --force
php artisan config:cache
php artisan route:cache

echo "require '/var/www/benchmarking/libs/output.php';" >> /var/www/laravel/framework/public/index.php
