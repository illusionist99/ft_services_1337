#!bin/bash

# ssl 
adduser -D 'ftpsuser'
echo "ftpsuser:1234" | chpasswd

sudo openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem

sudo mkdir /home/ftpuser/ && sudo chown -R :ftpsuser /home/ftpuser/
sudo chmod a-w /home/ftpuser/

openrc reboot
rc-service vsftpd start
tail -f /dev/null
sh 
