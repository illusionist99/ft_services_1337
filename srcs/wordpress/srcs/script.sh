#!bin/sh

cd /www/
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
chown -R lighttpd /www/wordpress

cp /wp-config.php /www/wordpress/
rm latest.tar.gz

/etc/init.d/mariadb setup
/etc/init.d/mariadb start

/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mariadb start && rc-update add mariadb default
/usr/bin/mysqladmin -u root password ''

echo "CREATE DATABASE wordpress;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'wordpress password';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

openrc reboot

rc-service nginx start
rc-service php-fpm7 start
rc-service mariadb start
#rc-service lighttpd start
rc-update add lighttpd default

# Open a Shell  
sh

