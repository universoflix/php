#!/bin/bash
# Entrando na pasta padrão dos arquivos do apache
cd /var/www

# Criando pasta do subdomínio
sudo mkdir subdominio

# Mudando o dono do diretório para meu usuário e para o grupo padrão do apache
sudo chown -R root:www-data pagamento

# Entrando na pasta padrão dos sites do apache
cd /etc/apache2/sites-available

# Criando arquivo de configuração
sudo nano pagamento.conf

# E então vamos colocar a configuração no arquivo.

<VirtualHost *:80>

    ServerName pagamento.sshturbo.gq
    ServerAlias www.pagamento.sshturbo.gq

    ErrorLog ${APACHE_LOG_DIR}/pagamento.error.log
    CustomLog ${APACHE_LOG_DIR}/pagamento.access.log combined

    DocumentRoot /var/www/pagamento
    
    <Directory /var/www/pagamento>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

</VirtualHost>

# Ativando o site no Apache
sudo a2ensite pagamento.conf

# Reiniciando serviço do Apache
sudo service apache2 restart
