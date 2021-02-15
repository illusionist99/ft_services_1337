#!bin/bash
sudo openrc reboot
# ssl 

#sudo mkdir /home/ftpuser/ && sudo chown -R :root /home/ftpuser/

vsftpd /etc/vsftpd/vsftpd.conf &

tail -f /dev/null