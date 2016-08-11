#!/usr/bin/env bash

sudo -S mkdir -p /opt/homebrew-cask/Caskroom <<< "${PASSWORD}" 2> /dev/null
sudo -S chown -R ${USER}:staff /opt/homebrew-cask <<< "${PASSWORD}" 2> /dev/null

brew tap caskroom/cask
brew install brew-cask-completion
brew tap caskroom/fonts

sudo -S -v <<< "${PASSWORD}" 2> /dev/null
brew cask install java
brew cask install eclipse-installer
brew cask install android-studio

brew cask install atom
brew cask install cheatsheet
brew cask install dash
brew cask install discord
brew cask install dropbox
brew cask install firefox
brew cask install freemind
brew cask install github-desktop
brew cask install gitkraken
brew cask install gpgtools
#brew cask install hopper-disassembler
brew cask install kaleidoscope
brew cask install kindle
brew cask install macdown
brew cask install opera-developer
brew cask install paw
brew cask install postico
brew cask install postman
brew cask install remote-desktop-manager
brew cask install sequel-pro
sudo -S -v <<< "${PASSWORD}" 2> /dev/null
brew cask install slack
brew cask install sqlitebrowser
brew cask install things
brew cask install vagrant
#brew cask install virtualbox
brew cask install whatsapp

brew cask install adguard
brew cask install bettertouchtool
#brew cask install diskmaker-x
brew cask install keka
brew cask install macs-fan-control
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install qlimagesize
brew cask install scroll-reverser
#brew cask install unetbootin

brew cask install handbrake
brew cask install transmission

brew cask install openemu
brew cask install steam

brew cask install font-camingocode
brew cask install font-courier-prime
brew cask install font-droid-sans
brew cask install font-droid-sans-mono
brew cask install font-fira-code
brew cask install font-fira-mono
brew cask install font-fira-sans
brew cask install font-inconsolata
brew cask install font-office-code-pro
brew cask install font-source-code-pro

brew cask cleanup
