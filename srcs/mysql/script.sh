/etc/init.d/mariadb setup
/etc/init.d/mariadb start

/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mariadb start && rc-update add mariadb default
/usr/bin/mysqladmin -u root password ''

echo "CREATE DATABASE wordpress;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'wordpress password';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

openrc reboot

rc-service mariadb start
tail -f /dev/null
# Open a Shell  
sh
