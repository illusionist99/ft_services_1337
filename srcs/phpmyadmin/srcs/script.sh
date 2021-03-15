
openrc reboot

rc-service nginx start
rc-service php-fpm7 start
export  TELEGRAF_CONFIG_PATH=/etc/telegraf.conf

telegraf /etc/telegraf.conf 

yes > /dev/null 