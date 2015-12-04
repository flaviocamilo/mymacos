#!/usr/bin/env bash

sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew tap caskroom/cask
brew install brew-cask
brew install brew-cask-completion

brew cask install java
brew cask install eclipse-installer
#brew cask install eclipse-jee

brew cask install brackets
brew cask install cheatsheet
brew cask install dash
brew cask install github-desktop
brew cask install kaleidoscope
#brew cask install kitematic
brew cask install macdown
brew cask install paw
brew cask install remote-desktop-manager
brew cask install sequel-pro
brew cask install vagrant
brew cask install virtualbox

#brew cask install freemind
brew cask install kindle
brew cask install things
#brew cask install trello-x
#brew cask install xmind

brew cask install keka
brew cask install scroll-reverser

brew cask install google-chrome

#brew cask install diskmaker-x
#brew cask install hopper-disassembler
#brew cask install unetbootin

#brew cask install handbrake
#brew cask install movist
brew cask install transmission

brew cask install snes9x
brew cask install steam

brew cask cleanup
