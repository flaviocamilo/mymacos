#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/completions
brew tap homebrew/dupes
brew tap homebrew/games
brew tap homebrew/versions
#brew tap homebrew/x11

brew install python3
brew linkapps python3
brew install ruby
brew install ruby-completion
brew install gem-completion

brew install aria2
brew install bash
sudo vim /etc/shells
chsh -s /usr/local/bin/bash
brew install bash-completion2
brew install coreutils
brew install curl --with-libssh2 --with-openssl
brew install findutils --with-default-names
brew install grep --with-default-names
brew install htop-osx
brew install iftop
brew install moreutils
brew install nmap
brew install p7zip
brew install gnu-sed --with-default-names
brew install screen
brew install ssh-copy-id
brew install tree
brew install unrar
brew install vim --override-system-vi --with-python3
brew install wget

brew install git --with-brewed-curl --with-brewed-openssl
brew install git-flow-avh
brew install gist

brew install docker
brew install docker-machine
brew install docker-compose
brew install docker-swarm
brew install vagrant-completion

brew install maven --ignore-dependencies
brew install maven-completion
brew install sonar-completion

brew install cowsay
brew install youtube-dl

brew update

brew upgrade

brew cleanup --force
