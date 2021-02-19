FROM alpine
EXPOSE  8086

RUN     wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN     tar xf telegraf-1.16.2_linux_amd64.tar.gz

RUN     rm -rf telegraf-1.16.2_linux_amd64.tar.gz
RUN     mv telegraf-1.16.2/ telegraf

RUN     wget https://dl.influxdata.com/influxdb/releases/influxdb-1.8.4-static_linux_amd64.tar.gz
RUN     tar xvfz influxdb-1.8.4-static_linux_amd64.tar.gz
RUN     rm -rf influxdb-1.8.4-static_linux_amd64.tar.gz

