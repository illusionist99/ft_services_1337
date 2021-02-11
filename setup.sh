minikube delete
minikube start
eval $(minikube -p minikube docker-env)

docker build -t ftps srcs/ftps/

# 1 - MetalLB Installation
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"



kubectl apply -f srcs/metallb.yaml
kubectl apply -f srcs/ftps/ftps.yaml

minikube dashboard &
