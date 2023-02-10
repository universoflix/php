Removendo e Instalando o PHP7.2

    wget https://raw.githubusercontent.com/universoflix/php/main/removendo-e-instalando.sh && chmod 777 removendo-e-instalando.sh && ./removendo-e-instalando.sh
    
Instalação do ioncube

    wget https://raw.githubusercontent.com/universoflix/php/main/ioncub-install.sh && chmod 777 ioncub-install.sh && ./ioncub-install.sh  
    
    Entre em cada pasta e adicione o comando no final.
    
    nano /etc/php/7.2/apache2/php.ini
    nano /etc/php/7.2/cli/php.ini

    zend_extension = /usr/lib/php/20170718/ioncube_loader_lin_7.2.so
    
Instalação do subdominio
 
    wget https://raw.githubusercontent.com/universoflix/php/main/install-sub.sh && chmod 777 install-sub.sh && ./install-sub.sh
    
