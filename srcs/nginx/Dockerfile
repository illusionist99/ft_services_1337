FROM alpine:3.12

# default port http
EXPOSE  80
# default port https
EXPOSE  443
# default ssh port
EXPOSE  22

# Updating and adding Stuff i may need
RUN     apk update
RUN     apk upgrade
RUN     apk add nginx
RUN     apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/
RUN     apk add openrc --no-cache
RUN     apk add vim
RUN     apk add curl
RUN     apk add sudo
RUN     apk add openssh
RUN     rc-update add sshd


#nginx config nginx -t
RUN     mkdir -p /run/nginx
RUN     adduser -D -g 'www' www
RUN     mkdir /www
RUN     chown -R www:www /var/lib/nginx
RUN     chown -R www:www /www
COPY    ./srcs/nginx.conf /etc/nginx/
COPY    ./srcs/index.html  /www/index.html
COPY    ./srcs/sshd_config /etc/ssh/
# ssl 
RUN     apk add openssl
RUN     openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
COPY    ./srcs/telegraf.conf /etc/telegraf.conf
COPY    ./srcs/script.sh /

ENTRYPOINT ["sh", "/script.sh"]
