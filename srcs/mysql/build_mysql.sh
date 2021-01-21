

#minikube start

eval $(minikube docker-env)
docker build -t sql_db .
minikube addons enable metallb
kubectl apply -f mysql.yaml
minikube dashboard&
