#!/bin/bash

### This build script is for our docker setup, in order to extend this script you can assume
# 1) laradock is our main user which has passowrdless sudo
# 2) Node is installed with root user
# 3) Npm is installed with root user
# 4) Composer is installed with laradock user
# 5) composer vendor bin is in path so all global composer packages can be executed

echo "++++++++++++++++++++++ Preparing the installation dir +++++++++++++++++++++++++"
sudo chown -R laradock:laradock /var/www/laravel

echo "++++++++++++++++++++++ Backend Build and Docs +++++++++++++++++++++++++"
sudo touch /var/www/laravel/storage/database.sqlite
cd /var/www/laravel && composer install && composer dump-autoload && php artisan migrate --force
apigen generate -s ./app -d ./public/phpdocs

echo "++++++++++++++++++++++ Frontend Docs +++++++++++++++++++++++++"
sudo npm install
bower update
gulp generateDocs

echo "++++++++++++++++++++++ Running ANT Full Build +++++++++++++++++++++++++"
ant full-build
