#!bin/bash

# ssl 
adduser -D 'ftpsuser'
echo "ftpsuser:1234" | chpasswd


sudo mkdir /home/ftpuser/ && sudo chown -R :ftpsuser /home/ftpuser/
sudo chmod a-w /home/ftpuser/

openrc reboot
rc-service vsftpd start
tail -f /dev/null
sh 
