#!/usr/bin/env bash

echo "==> Installing Homebrew and packages..."

sudo -S -v <<< "${PASSWORD}" 2> /dev/null

if [[ ! -f /usr/local/bin/brew ]]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
fi

brew tap homebrew/completions
brew tap homebrew/dupes
brew tap homebrew/games
brew tap homebrew/versions

brew install go
brew install node --with-openssl
brew install perl
brew install python
brew linkapps python
brew install python3
brew linkapps python3
brew install ruby
brew install ruby-completion
brew install gem-completion

brew install apm-bash-completion
brew install aria2
brew install asciinema
brew install bash
sudo -S sh -c 'echo "/usr/local/bin/bash" >> /etc/shells' <<< "${PASSWORD}" 2> /dev/null
sudo -S chsh -s '/usr/local/bin/bash' "${USER}" <<< "${PASSWORD}" 2> /dev/null
brew install bash-completion2
brew install ccat
brew install checkbashisms
brew install coreutils
brew install cpulimit
brew install curl --with-libssh2 --with-openssl
brew install diffutils
brew install doctl
brew install duff
brew install duti
brew install fdupes
brew install findutils --with-default-names
brew install flow
brew install gnu-sed --with-default-names
brew install grep --with-default-names
brew install highlight
brew install htop-osx
brew install httpie
brew install iftop
brew install imagemagick
brew install jbake
brew install moreutils
brew install nmap
brew install p7zip
brew install postgresql
brew install pow
mkdir -p "${HOME}/Library/Application Support/Pow/Hosts"
ln -s "${HOME}/Library/Application Support/Pow/Hosts" "${HOME}/.pow"
sudo -S -v <<< "${PASSWORD}" 2> /dev/null
sudo pow --install-system &> /dev/null
sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
pow --install-local &> /dev/null
launchctl load -w "${HOME}/Library/LaunchAgents/cx.pow.powd.plist"
brew install psqlodbc
brew install pstree
brew install screen
brew install shellcheck
# brew install sourcekitten # FIXME - Needs Xcode
brew install ssh-copy-id
# brew install swiftlint # FIXME - Needs Xcode
brew install tidy-html5
brew install tomcat --ignore-dependencies
brew install tree
brew install unrar
brew install vim --with-override-system-vi --with-python3
brew install watchman
brew install wget
brew install wiki
brew install yarn
brew install z

brew install git --with-brewed-curl --with-brewed-openssl
brew install git-flow-avh
brew install gist
# brew install ghi // FIXME - Needs to install gem pygments.rb prior to it (and we haven't loaded the new Ruby yet)
brew install hub

brew install docker
brew install docker-machine
brew install docker-compose
brew install docker-swarm
brew install docker-cloud
brew install vagrant-completion
brew install maven --ignore-dependencies
brew install maven-completion
brew install sonar-completion

brew install cowsay
brew install epic5
brew install gifify
brew install irssi
brew install libvo-aacenc
brew install mpv --with-bundle --with-libdvdnav --with-libdvdread
brew linkapps mpv

brew update

brew upgrade

brew cleanup --force
