FROM alpine:3.12

RUN     apk update && apk upgrade
RUN     apk add vsftpd openrc  openssl sudo 
RUN     rc-update add vsftpd default 

RUN adduser admin -D && echo "admin:1234" | chpasswd

COPY vsftpd.conf /etc/vsftpd/
RUN openssl req -x509 -nodes -days 365 -subj "/C=MA/ST=BG/O=malaoui, Inc./CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/vsftpd.key -out /etc/ssl/vsftpd.crt

COPY vsftpd.conf /etc/vsftpd/

COPY script.sh /

ENTRYPOINT ["sh","/script.sh"]
# RUN     rc-update add vsftpd default && rc-service vsftpd restart
