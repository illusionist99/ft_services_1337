#!bin/sh

/etc/init.d/mariadb setup
/etc/init.d/mariadb start

/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mariadb start && rc-update add mariadb default
/usr/bin/mysqladmin -u root password '1234'

mv /usr/share/webapps/phpmyadmin/ /www/phpmyadmin
mv /config.inc.php /www/phpmyadmin/
mkdir -p /www/phpmyadmin/tmp
chmod 777 /www/phpmyadmin/tmp
chmod 755 /www/phpmyadmin

# run services 

openrc reboot
nginx -s stop
rc-service nginx start
rc-service php-fpm7 start
rc-service mariadb start

# Open a Shell  
sh
