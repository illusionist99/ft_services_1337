#!bin/sh

eval $(minikube docker-env)
docker build -t my_nginx .
kubectl apply -f nginx.yaml
minikube dashboard&
