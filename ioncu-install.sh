#!/bin/sh
cd /tmp
wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar xfz ioncube_loaders_lin_x86-64.tar.gz
cp /tmp/ioncube/ioncube_loader_lin_7.2.so /usr/lib/php/20170718
echo -e " \e[0;31mInstalado com Sucesso \e[0m"
