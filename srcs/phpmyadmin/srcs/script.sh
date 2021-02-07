#!bin/sh

#/etc/init.d/mariadb setup
#/etc/init.d/mariadb start

#/usr/bin/mysql_install_db --user=mysql
#/etc/init.d/mariadb start && rc-update add mariadb default
#/usr/bin/mysqladmin -u root password '1234'


# Open a Shell  

openrc reboot

rc-service nginx start
rc-service php-fpm7 start

sh

