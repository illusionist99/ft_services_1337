FROM alpine:latest

EXPOSE 21

RUN     apk update && apk upgrade
RUN     apk add vsftpd && apk add openrc && apk add  openssl sudo 

COPY    ./script.sh /
RUN     chmod +x /script.sh

RUN     adduser -D 'ftpsuser'
RUN		echo "ftpsuser:1234" | chpasswd

COPY	./vsftpd.conf /etc/vsftpd/

ENTRYPOINT ["sh","/script.sh"]
# RUN     rc-update add vsftpd default && rc-service vsftpd restart
