minikube start
kubectl apply -f ../metallb.yaml
eval $(minikube docker-env)
cd ../mysql/
sh  build_mysql.sh
cd ../phpmyadmin/
docker build -t phpmyadmin .
minikube addons enable metallb



kubectl apply -f phpmyadmin.yaml
minikube dashboard&


