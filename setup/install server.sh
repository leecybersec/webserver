#!/bin/bash

apt install php libapache2-mod-php
systemctl restart apache2
apt install php-fpm
systemctl status php7.2-fpm
apt install php-mysql php-gd
apt install php-mysql php-gd

sudo apt install mysql-server