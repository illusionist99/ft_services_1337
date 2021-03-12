openrc reboot

/etc/init.d/mariadb setup
/etc/init.d/mariadb start

/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mariadb start && rc-update add mariadb default
/usr/bin/mysqladmin -u root password '1234'


echo "CREATE DATABASE wordpress;" | mysql -u  root
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '1234';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root



mysql -u root -e 'GRANT SELECT, INSERT, DELETE, UPDATE ON phpmyadmin.* TO 'pma'@'%' IDENTIFIED BY "1234"'
mysql < /create_pma.sql
openrc reboot

rc-service mariadb start
export  TELEGRAF_CONFIG_PATH=/etc/telegraf.conf

telegraf /etc/telegraf.conf 
tail -f /dev/null
# Open a Shell  
sh
