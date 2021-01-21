FROM alpine:3.12

# default port http
EXPOSE  80
# default port https
EXPOSE  443

# Updating and adding Stuff i may need
RUN     apk update && apk upgrade
RUN     apk add nginx
RUN     apk add openrc --no-cache
RUN     apk add vim
RUN     apk add curl
RUN     apk add sudo

#nginx config nginx -t
RUN     mkdir -p /run/nginx
RUN     adduser -D -g 'www' www
RUN     mkdir /www
RUN     chown -R www:www /var/lib/nginx
RUN     chown -R www:www /www
COPY    ./srcs/nginx.conf /etc/nginx/
COPY    ./srcs/index.html  /www/index.html
COPY    ./srcs/default.conf /etc/nginx/conf.d/
COPY    ./srcs/config.sample.inc.php /
# ssl 
RUN     apk add openssl
RUN     openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;

RUN     apk add php7-fpm php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
RUN     rc-update add nginx default
RUN     rc-update add php-fpm7 default


#PHP MY ADMIN
RUN     openrc reboot
RUN     apk add php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
COPY    ./srcs/script.sh /
#RUN     apk add mariadb mariadb-common mariadb-client
RUN     apk add phpmyadmin php-mbstring php-gettext
RUN     chmod +x /script.sh
CMD ["/script.sh"]
