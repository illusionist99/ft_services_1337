FROM alpine:3.12

EXPOSE  3000

RUN     apk add openrc

RUN     apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY    script.sh /

RUN     chmod 777 /script.sh

ENTRYPOINT ["sh","/script.sh"]
