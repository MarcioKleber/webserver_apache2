#!/bin/bash
echo Atualizando repositórios e atualizando sistemas .....!
apt-get update -y  && apt-get upgrade -y

echo instalando wget  e unzip .....!
apt-get install wget -y  && apt-get install unzip -y

echo Baixando projeto do github .....!
cd /tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo Descompactando projeto .....!
unzip main.zip 
cd /tmp/linux-site-dio-main

echo Instalando Webserver Apache2 .....!
apt-get install apache2 -y

echo Provisionando projeto no webserver .....!
mv -f /tmp/linux-site-dio-main/* /var/www/html/ 
systemctl restart apache2

cd ~ && clear

echo -e Webserver configurado e projeto provisionado! "\n" servidor escutando na porta 80 .....!
