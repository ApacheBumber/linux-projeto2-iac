script-iac2.sh
#!/bin/bash

echo" update and upgrade data..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando e instalando os arquivos da aplicação..."

cd /tmp
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.z>
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
