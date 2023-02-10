#!/bin/sh
wget https://raw.githubusercontent.com/universoflix/php/main/pagamento.conf
chmod 777 pagamento.conf
sudo a2ensite pagamento.conf
sudo service apache2 restart	
echo -e " \e[0;31mInstalado com Sucesso \e[0m"
