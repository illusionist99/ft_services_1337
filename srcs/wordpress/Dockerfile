FROM alpine:3.12

EXPOSE  5050


# Updating and adding Stuff i may need
RUN     apk update && apk upgrade
RUN     apk add nginx
RUN     apk add openrc --no-cache
RUN     apk add vim
RUN     apk add curl
RUN     apk add sudo
RUN     apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/
#nginx config nginx -t
RUN     mkdir -p /run/nginx
RUN     adduser -D -g 'www' www
RUN     mkdir /www
RUN     chown -R www:www /var/lib/nginx
RUN     chown -R www:www /www/
COPY    ./srcs/nginx.conf /etc/nginx/

# adding mysql 

RUN     openrc reboot

RUN     apk add php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
RUN     rc-update add nginx default
RUN     rc-update add php-fpm7 default

# Wordpress
RUN     apk add php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
RUN     apk add wget php7-zlib
COPY    ./srcs/script.sh /
ADD     https://wordpress.org/latest.tar.gz /
RUN     tar -xzvf latest.tar.gz
RUN     rm latest.tar.gz
RUN     mv  /wordpress   /www/wordpress

COPY     ./srcs/wp-config.php /www/wordpress/
COPY    ./srcs/telegraf.conf /etc/telegraf.conf
RUN     chown -R www:www /www/wordpress

RUN     chmod +x /script.sh

ENTRYPOINT ["sh", "/script.sh"]