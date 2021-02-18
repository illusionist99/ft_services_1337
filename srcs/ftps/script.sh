#!bin/bash
sudo openrc reboot

sudo rc-service vsftpd start

tail -f /dev/null