#!/bin/bash
#This is an automated install script of New Relic. Make sure to run this with root account in /root environment.

echo "Automated NewRelic install script by M5"
sleep 2

echo "license_key: d616ef34411dc3c1d608009f36e98b047d47NRAL" | sudo tee -a /etc/newrelic-infra.yml

echo "Install New Relic Infra"
#Uncomment for CentOS 6/RHEL 6 Server Installation
#curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/6/x86_64/newrelic-infra.repo

#Uncomment for CentOS 7/RHEL 7 Installation
curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64/newrelic-infra.repo
yum install newrelic-infra -y

echo "Install New Relic Agent"
sleep 2

# Uncomment to install PHP if it is not installed
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

