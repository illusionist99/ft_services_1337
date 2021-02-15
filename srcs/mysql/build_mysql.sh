

eval $(minikube docker-env)
docker build -t mysql .
kubectl apply -f mysql.yaml

