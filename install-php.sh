#!/bin/bash
apt purge php7.*
apt purge php8.*
apt autoclean
apt autoremove
add-apt-repository ppa:ondrej/php
apt update
apt install php7.2
a2dismod php8.1
a2enmod php7.2
service apache2 restart
apt install php7.2-common php7.2-mysql php7.2-xml php7.2-xmlrpc php7.2-curl php7.2-gd php7.2-imagick php7.2-cli php7.2-dev php7.2-imap php7.2-mbstring php7.2-opcache php7.2-soap php7.2-zip php7.2-intl -y
