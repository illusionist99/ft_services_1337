minikube delete
minikube start --driver=virtualbox
eval $(minikube -p minikube docker-env)

docker build -t ftps srcs/ftps/
docker build -t mysql srcs/mysql/
docker build -t nginx srcs/nginx/
docker build -t phpmyadmin srcs/phpmyadmin/
docker build -t wordpress srcs/wordpress/
docker build -t grafana srcs/grafana/
docker build -t influxdb srcs/influxdb/

minikube addons enable metallb

kubectl apply -f srcs/metallb.yaml
kubectl apply -f srcs/ftps/ftps.yaml
kubectl apply -f srcs/wordpress/wordpress.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f srcs/nginx/nginx.yaml
kubectl apply -f srcs/mysql/mysql.yaml
kubectl apply -f srcs/grafana/grafana.yaml
kubectl apply -f srcs/influxdb/influxdb.yaml

minikube dashboard &
