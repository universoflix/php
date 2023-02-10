#!/bin/bash
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
apt-get purge php7.* -y
apt-get purge php8.* -y
apt-get autoclean -y
apt-get autoremove -y
add-apt-repository ppa:ondrej/php -y
apt-get update -y
apt-get install php7.2 -y
a2dismod php8.1
a2enmod php7.2
service apache2 restart
apt-get install php7.2-common php7.2-mysql php7.2-xml php7.2-xmlrpc php7.2-curl php7.2-gd php7.2-imagick php7.2-cli php7.2-dev php7.2-imap php7.2-mbstring php7.2-opcache php7.2-soap php7.2-zip php7.2-intl -y
