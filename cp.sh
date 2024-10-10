#!/bin/bash
#when you run this script  make sure you have reseted your lab Thank you 
mv ansible-posix-1.6.0 (1).tar.gz ansible-posix-1.6.0.tar.gz
mv role1.tar.gz  balancer.tgz
mv role2.tar.gz  phpinfo.tgz
yum install httpd  -y
systemctl  enable  httpd  --now
firewall-cmd  --add-service={http,https} --permanent
firewall-cmd  --reload
mkdir /var/www/html/Rhce
cp -rvf ./294/*  /var/www/html/Rhce
curl  workstation.lab.example.com
