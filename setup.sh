# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mkaddani <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/09 10:30:51 by mkaddani          #+#    #+#              #
#    Updated: 2020/12/28 17:35:18 by mkaddani         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#install brew in goinfre -----------------------------

export MACHINE_STORAGE_PATH="/Users/$USER/goinfre/.docker"
export MINIKUBE_HOME="/Users/$USER/goinfre/.minikube"


if ! command -v brew &> /dev/null
then
  export HOME_BREW="/goinfre/$USER"
  rm -rf $HOME/.brew && rm -rf $HOME_BREW/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME_BREW/.brew && export PATH=$HOME_BREW/.brew/bin:$PATH && brew update && echo "export PATH=$HOME_BREW/.brew/bin:$PATH" >> ~/.zshrc && echo "export MINIKUBE_HOME=\"/Users/$USER/goinfre/.minikube\"" >> ~/.zshrc  && echo export "MACHINE_STORAGE_PATH=\"/Users/$USER/goinfre/.docker\"" >> ~/.zshrc
	echo	"export HOME_BREW=\"/goinfre/$USER\""	>> ~/.zshrc
	echo	"export PATH=$HOME_BREW/.brew/bin:$PATH"
	echo	"export MACHINE_STORAGE_PATH=\"/Users/$USER/goinfre/.docker\""	>> ~/.zshrc
	echo	"export MINIKUBE_HOME=\"/Users/$USER/goinfre/.minikube\""	>> ~/.zshrc
	echo	"export MACHINE_STORAGE_PATH=\"/Users/$USER/goinfre/.docker\""	>> ~/.zshrc

fi
# install docker -------------------------------------
if ! command -v docker &> /dev/null
then
  brew install docker
fi
# install kubectl -------------------------------------
if ! command -v kubectl &> /dev/null
then
  brew install kubectl
fi
# install minikube ------------------------------------- 
if ! command -v minikube &> /dev/null
then
  brew install minikube
fi
# install virtual box ; already installed

# docker machine installation
if ! command -v docker-machine &> /dev/null
then
  brew install docker-machine
fi




#brew install bash-completion
#brew install docker-completion
#brew install docker-compose-completion
#brew install docker-machine-completion


#docker-machine create default
#eval $(docker-machine env default)
#minikube start
#minikube docker-env
#eval $(minikube docker-env)
