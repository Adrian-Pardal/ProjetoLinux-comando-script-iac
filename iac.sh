#!/bin/bash

echo "atualizando o sistema ..."

apt-get update
apt-get upgrade -y
echo "atualização finalizada!!!"


echo "Instalando o apache2 ...."

apt-get install apache2 -y

echo"Instalação do apache2 finalizado com sucesso!!!!!!"

echo"Instalando o unzip"

apt-get install unzip -y

echo"Instalção do unzip finalizdo com sucesso!!!! "

echo "Acessando o /tmp...."
cd /tmp

echo "Baixando o main.zip...."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o main.zip...."
unzip main.zip

echo "acessando o linux-site-dio...."
cd linux-site-dio-main
echo "Copiadando tuo o linux-site-dio para a pasta do apache /var/www/html ....."
cp -R * /var/www/html/
