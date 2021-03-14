FROM alpine:3.12


# Updating and adding Stuff i may need
RUN     apk update && apk upgrade
RUN     apk add openrc --no-cache
RUN     apk add vim
RUN     apk add curl
RUN     apk add sudo
RUN     apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/
# adding mysql 

RUN     apk add mariadb mariadb-common mariadb-client


COPY    ./script.sh /
RUN     chmod +x /script.sh
COPY    mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY    telegraf.conf /etc/telegraf.conf
COPY    ./script.sh /
COPY    ./create_pma.sql /
COPY    health_check.sh /
ENTRYPOINT ["sh", "/script.sh"]
