#!/bin/sh
echo -e "\033[1;36mRemovendo todas as versões do php7, seja php 7.0 ou php 7.1 etc. \033[0m"
sudo apt-get purge php7.*
sudo apt-get purge php8.*
sudo apt-get autoclean
sudo apt-get autoremove
echo -e "\033[1;36mInstalando o PHP novamente \033[0m"
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2
sudo a2dismod php8.1
sudo a2enmod php7.2
sudo service apache2 restart
echo -e "\033[1;36mInstalando toda a extensão necessária\033[0m"
sudo apt install php7.2-common php7.2-mysql php7.2-xml php7.2-xmlrpc php7.2-curl php7.2-gd php7.2-imagick php7.2-cli php7.2-dev php7.2-imap php7.2-mbstring php7.2-opcache php7.2-soap php7.2-zip php7.2-intl -y
echo -e "\e[0;31mInstalado com Sucesso \e[0m"
