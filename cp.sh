#!/bin/bash
#when you run this script  make sure you have reseted your lab Thank you 
#cyberphoton
#try to be in tapas dir user 
#after git clone do cd tapas 
sudo yum install httpd -y 
sudo  systemctl   enable   httpd  --now
sudo firewall-cmd   --add-service=http --permanent
sudo firewall-cmd --reload
sudo mkdir  /var/www/html/content
sudo systemctl restart httpd 
sudo mv  ~/tapas/*      /var/www/html/content
sudo chcon  system_u:object_r:httpd_sys_content_t:s0 /var/www/html/content/*
echo   practice makes everyone perfect!!!!   
echo   Thanks  for this   oppertunity
