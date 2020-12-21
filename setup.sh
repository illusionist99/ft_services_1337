# 1 - Brew Installation
chmod 777 setup.sh 
rm -rf /Users/$USER/goinfre/.brew && git clone --depth=1 https://github.com/Homebrew/brew /Users/$USER/goinfre/.brew && export PATH=/Users/$USER/goinfre/.brew/bin:$PATH && brew update && echo "export PATH=/Users/$USER/goinfre/.brew/bin:$PATH" >> ~/.zshrc

# 2 - Install Docker | Docker-Machine | Minikube | Kubectl
brew install docker
brew install docker-machine
brew install minikube
brew install kubectl

# 3 - Ft_server in VM
