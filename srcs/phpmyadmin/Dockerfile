FROM alpine:3.12

EXPOSE  5000


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
RUN     chown -R www:www /www

RUN     apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl
RUN     apk add php7-fpm php7-mcrypt php7-soap php7-session php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
RUN     rc-update add nginx default
RUN     rc-update add php-fpm7 default


#PHP MY ADMIN
RUN     openrc reboot
RUN     apk add php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
COPY    ./srcs/script.sh /

RUN     apk add   php-mbstring php-gettext

RUN     cd /www/ \ 
    && wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz \
    && tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz \
    && rm phpMyAdmin-5.0.2-all-languages.tar.gz \
    && mv phpMyAdmin-5.0.2-all-languages phpmyadmin \
    && mkdir -p /www/phpmyadmin/tmp \
    && chmod 777 /www/phpmyadmin/tmp \
    && chmod 755 /www/phpmyadmin

COPY    ./srcs/nginx.conf /etc/nginx/
COPY    ./srcs/index.html  /www/index.html
COPY    ./srcs/config.inc.php /www/phpmyadmin/
COPY    ./srcs/telegraf.conf /etc/telegraf.conf
RUN     chmod +x /script.sh

ENTRYPOINT ["sh", "/script.sh"]
