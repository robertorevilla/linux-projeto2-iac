#!/bin/bash

echo "Atualizar o Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalar o apache2..."

apt-get install apache2 -y

echo "Instalar o unzip..."

apt-get install unzip -y

echo "Atualização e Instalações Finalizadas!!!"

echo "Baixar a Aplicação..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -r -v * /var/www/html/

echo "Aplicação Finalizada!!!"