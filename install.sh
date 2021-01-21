#!bin/bash

curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

cd /Users/$USER

mv .brew /goinfre/$USER/

ln -s /goinfre/$USER/.brew .brew 

cd /Users/$USER/Desktop/ft_services

echo "DONE !\n"

source /Users/$USER/.zshrc

brew install    docker

mv .docker /goinfre/$USER/

ln -s /goinfre/$USER/.docker .docker

# installing minikube

brew install minikube

mv .minikube /goinfre/$USER/
