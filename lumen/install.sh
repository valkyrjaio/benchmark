#!/bin/bash

sudo echo "127.0.0.1 lumen.localhost" >> /etc/hosts

sudo cp /var/www/lumen/nginx.conf /etc/nginx/sites-enabled/lumen

./setup.sh
