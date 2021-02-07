FROM alpine:3.12


# Updating and adding Stuff i may need
RUN     apk update && apk upgrade
RUN     apk add openrc --no-cache
RUN     apk add vim
RUN     apk add curl
RUN     apk add sudo

# adding mysql 

RUN     apk add mariadb mariadb-common mariadb-client
RUN     openrc reboot

COPY    ./script.sh /
RUN     chmod +x /script.sh
COPY    mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY    ./script.sh /

ENTRYPOINT ["sh", "/script.sh"]
