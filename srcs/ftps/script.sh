#!bin/bash

# ssl 

sudo openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem

sudo mkdir /home/ftpuser/ && sudo mkdir /home/ftpuser/ftp &&sudo chown -R :users /home/ftpuser/ftp
sudo chmod a-w /home/ftpuser/ftp/
sudo mkdir /home/ftpuser/ftp/files && sudo chown -R :users /home/ftpuser/ftp/files

openrc reboot
rc-service vsftpd start
sh 
