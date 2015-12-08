#!/usr/bin/env bash

function finder_show_all_files() {
	if [ $# -lt 1 ]; then
		defaults write com.apple.finder AppleShowAllFiles true
	else
		defaults write com.apple.finder AppleShowAllFiles $1
	fi
	killall Finder
}

function finder_show_desktop_icons() {
	if [ $# -lt 1 ]; then
		defaults write com.apple.finder CreateDesktop true
	else
		defaults write com.apple.finder CreateDesktop $1
	fi
	killall Finder
}

function git_init() {
	git init
	echo "target .classpath .project .settings .svn .DS_Store *.swp" | tr " " "\n" > .gitignore
	git add .gitignore
	git commit -m "Initialize the project"
}

#function home_fix_permissions() {
#	sudo chown -R $(whoami):staff $HOME
#	find $HOME -type d -print0 | xargs -0 chmod 770
#	find $HOME -type f -print0 | xargs -0 chmod 660
#	chmod 771 $HOME
#	find $HOME/Public -type d -print0 | xargs -0 chmod 775
#	find $HOME/Public -type f -print0 | xargs -0 chmod 664
#	find $HOME/Public/Drop\ Box -type d -print0 | xargs -0 chmod 773
#	find $HOME/Public/Drop\ Box -type f -print0 | xargs -0 chmod 662
#	sudo chown -R $(whoami):_www $HOME/Sites
#	find $HOME/Sites -type d -print0 | xargs -0 chmod 770
#	find $HOME/Sites -type f -print0 | xargs -0 chmod 660
#}
