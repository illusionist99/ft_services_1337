FROM    alpine:3.12

EXPOSE  8086

RUN     apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

RUN     apk add openrc influxdb 


COPY    script.sh /
RUN     chmod 777 /script.sh 

ENTRYPOINT [ "sh", "/script.sh" ]

