#!/bin/bash
#This is an automated install script of New Relic. Make sure to run this with root account in /root environment.

echo "Automated NewRelic install script by M5"
sleep 2

#Uncomment PHP installation command below if it is not installed on the server  
#yum install php -y

wget https://download.newrelic.com/php_agent/release/newrelic-php5-9.6.1.256-linux.tar.gz
tar -xzf newrelic-php5-9.6.1.256-linux.tar.gz
cd /var/www/html
yum install unzip -y
wget https://docs.newrelic.com/sites/default/files/atoms/files/PHP-manual-install-script-master_0.zip
unzip PHP-manual-install-script-master_0.zip
mv PHP-manual-install-script-master Pag-asa
rm -rf PHP-manual*
cd /root/newrelic-php5-9.6.1.256-linux
./newrelic-install

#https://docs.newrelic.com/docs/infrastructure/install-configure-manage-infrastructure/linux-installation/install-infrastructure-linux-using-package-manager

