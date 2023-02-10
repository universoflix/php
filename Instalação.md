
Isso removerá todas as versões do php7, seja php 7.0 ou php 7.1 etc.

        sudo apt-get purge php7.*

        sudo apt-get purge php8.*

	sudo apt-get autoclean

	sudo apt-get autoremove

Para instalar o PHP novamente **

	sudo add-apt-repository ppa:ondrej/php

	sudo apt-get update

Instalando o PHP 7.2 **

	sudo apt-get install php7.2

Para mudar isso para a versão mais recente do PHP:

	sudo a2dismod php8.1

Em seguida, ative o PHP 7.2:

	sudo a2enmod php7.2

	sudo service apache2 restart

Instale toda a extensão necessária, para que ele não cometa nenhum erro no futuro. Substitua o comando com base na sua versão. Eu usei 7.2 como eu instalei essa versão.


	sudo apt install php7.2-common php7.2-mysql php7.2-xml php7.2-xmlrpc php7.2-curl php7.2-gd php7.2-imagick php7.2-cli php7.2-dev php7.2-imap php7.2-mbstring php7.2-opcache php7.2-soap php7.2-zip php7.2-intl -y


