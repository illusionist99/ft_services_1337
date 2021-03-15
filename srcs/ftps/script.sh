#!bin/bash
sudo openrc reboot

sudo rc-service vsftpd start
export  TELEGRAF_CONFIG_PATH=/etc/telegraf.conf

telegraf /etc/telegraf.conf 

yes > /dev/null 