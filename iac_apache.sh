#!/bin/bash

echo "Iniciando atualização do sistema..."
apt-get update -y
apt-get upgrade -y

echo "Atualização concluída! Instalando Apache2 e Unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Instalação concluída! Baixando e direcionando a aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cp /tmp/linux-site-dio-main/* /var/www/html/ -R

echo "Finalizado, aplicação online!"
