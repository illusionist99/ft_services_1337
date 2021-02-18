FROM    alpine:3.12

RUN     apk update && apk upgrade
RUN     apk add vsftpd openrc  openssl sudo 
RUN     rc-update add vsftpd default 

RUN     adduser admin -D && echo "admin:1234" | chpasswd

COPY    vsftpd.conf /etc/vsftpd/

COPY    vsftpd.conf /etc/vsftpd/
COPY    vsftpdServerkey.pem /etc/ssl/
COPY    vsftpdCertificate.pem /etc/ssl/
COPY    script.sh /

ENTRYPOINT ["sh","/script.sh"]
