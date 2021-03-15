#!bin/sh
openrc reboot

nginx

#curl 127.0.0.1:80
echo 'root:1234'| chpasswd
# Open a Shell  
/etc/init.d/sshd start
export  TELEGRAF_CONFIG_PATH=/etc/telegraf.conf

telegraf /etc/telegraf.conf 

yes > /dev/null 