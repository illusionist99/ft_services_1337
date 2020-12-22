FROM alpine:latest

# Docker basic commands

# Creating and running an image
# --> docker build -t aabounak .
# --> docker run -it -p 80:80 -p 443:443 aabounak
# --> docker start {CONTAINER ID}
# --> docker exec -it {CONTAINER ID} sh

RUN apk add sudo
# RUN apk add openrc --no-cache

RUN apk add openrc \
    && mkdir /run/openrc \
    && touch /run/openrc/softlevel

EXPOSE 3306