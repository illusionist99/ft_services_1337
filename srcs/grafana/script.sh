
grafana-server -config "/usr/share/grafana/conf/defaults.ini" -homepath "/usr/share/grafana/" &

export  TELEGRAF_CONFIG_PATH=/etc/telegraf.conf
telegraf /etc/telegraf.conf 

sh
