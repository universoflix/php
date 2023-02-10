apt-get update -y && apt-get upgrade -y && wget https://raw.githubusercontent.com/universoflix/php/main/install.sh && chmod +x install.sh && ./install.sh



#INSTALAR O IONCUBE NO PHP7.2

cd /tmp

wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz

tar xfz ioncube_loaders_lin_x86-64.tar.gz

cp /tmp/ioncube/ioncube_loader_lin_7.2.so /usr/lib/php/20170718

#ADICIONAR ESSE COMANDO NO FINAL DOS COMANDOS ABAIXO

zend_extension = /usr/lib/php/20170718/ioncube_loader_lin_7.2.so

nano /etc/php/7.2/apache2/php.ini

nano /etc/php/7.2/cli/php.ini



