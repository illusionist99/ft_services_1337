#!bin/sh
minikube start
eval $(minikube docker-env)
docker build -t my_nginx .
minikube addons enable metallb
kubectl apply -f nginx.yaml
minikube dashboard&