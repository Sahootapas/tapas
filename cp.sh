#!/bin/bash
#when you run this script  make sure you have reseted your lab Thank you 
mv role1.tar.gz  balancer.tgz
mv role2.tar.gz  phpinfo.tgz
yum install httpd  -y
systemctl  enable  httpd  --now
firewall-cmd  --add-service={http,https} --permanent
firewall-cmd  --reload
mkdir /var/www/html/Rhce
cp -rvf ./294/*  /var/www/html/Rhce
curl  workstation.lab.example.com
echo   practice makes a man perfect!!!!
