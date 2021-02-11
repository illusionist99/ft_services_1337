
eval $(minikube docker-env)
docker build -t my_ftps .
minikube addons enable metallb

kubectl apply -f ftps.yaml
minikube dashboard&

