FROM alpine:3.12

EXPOSE 21

RUN     apk update && apk upgrade
RUN     apk add vsftpd && apk add openrc && apk add  openssl sudo 


COPY	./vsftpd.conf /etc/vsftpd/

COPY    ./script.sh /
RUN     chmod +x /script.sh


ENTRYPOINT ["sh","/script.sh"]
# RUN     rc-update add vsftpd default && rc-service vsftpd restart
