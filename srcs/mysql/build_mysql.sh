

eval $(minikube docker-env)
docker build -t sqldb .
kubectl apply -f mysql.yaml

