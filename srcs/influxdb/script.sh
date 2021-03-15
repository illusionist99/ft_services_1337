

influx -execute "CREATE DATABASE influx_db"
influx -execute "CREATE USER influx_user WITH PASSWORD 'influx_password'"
influx -execute "GRANT ALL ON influx_db TO influx_user"

influxd &


export  TELEGRAF_CONFIG_PATH=/etc/telegraf.conf
telegraf /etc/telegraf.conf 
