#!/bin/bash
mv ansible-posix-1.6.0 (1).tar.gz ansible-posix-1.6.0.tar.gz
yum install httpd  -y
systemctl  enable  httpd  --now
firewall-cmd  --add-service={http,https} --permanent
firewall-cmd  --reload
mkdir /var/www/html/Rhce
cp -rvf ./294/*  /var/www/html/Rhce
