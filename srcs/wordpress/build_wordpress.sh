#!bin/sh 

minikube start --driver=virtualbox
minikube addons enable metallb
kubectl apply -f ../metallb.yaml
eval $(minikube docker-env)

cd ../mysql/

sh  build_mysql.sh

cd ../wordpress

docker build -t wordpress .

kubectl apply -f wordpress.yaml

minikube dashboard &

