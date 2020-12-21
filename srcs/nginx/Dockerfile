FROM alpine:latest

RUN apk add sudo
RUN apk add openrc --no-cache

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/index.html
COPY script.sh /

RUN sudo chmod +x /script.sh

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["sh", "/script.sh"]
