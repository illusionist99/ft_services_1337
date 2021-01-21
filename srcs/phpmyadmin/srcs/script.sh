#!bin/sh

#/etc/init.d/mariadb setup
#/etc/init.d/mariadb start

#/usr/bin/mysql_install_db --user=mysql
#/etc/init.d/mariadb start && rc-update add mariadb default
#/usr/bin/mysqladmin -u root password '1234'

cd /www/

wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz

tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz

rm phpMyAdmin-5.0.2-all-languages.tar.gz

mv phpMyAdmin-5.0.2-all-languages phpmyadmin

mv /config.sample.inc.php /www/phpmyadmin/
mkdir -p /www/phpmyadmin/tmp
chmod 777 /www/phpmyadmin/tmp
chmod 755 /www/phpmyadmin

# Open a Shell  

openrc reboot

rc-service nginx start
rc-service php-fpm7 start
#rc-service mariadb start

# Open a Shell  
sh

