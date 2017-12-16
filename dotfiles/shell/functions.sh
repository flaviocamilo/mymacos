#!/usr/bin/env bash

brew_cask_upgrade() {
	outdated_apps=$(brew cask outdated -gv)

	counter=0
	for word in $outdated_apps; do
		counter=$((counter + 1))

		remainder=$((counter % 4))
		if [ $remainder -eq 1 ]; then
			app_name=$word
		else
			if [ $remainder -eq 2 ]; then
				actual_version=$word
			else
				if [ $remainder -eq 0 ]; then
					new_version=$word
					if [ $actual_version != "($new_version)" ]; then
						echo "Upgrading $app_name [${actual_version//[(|)]/} -> $new_version]..."
						brew cask reinstall $app_name
					fi
				fi
			fi
		fi
	done
}

brew_cask_upgrade_all() {
	echo "Upgrading all Cask apps..."
	brew cask reinstall $(brew cask outdated -g)
}

finder_show_all_files() {
	if [ $# -lt 1 ]; then
		defaults write com.apple.finder AppleShowAllFiles -bool true
	else
		defaults write com.apple.finder AppleShowAllFiles -bool ${1}
	fi
	killall Finder
}

finder_show_desktop_icons() {
	if [ $# -lt 1 ]; then
		defaults write com.apple.finder CreateDesktop -bool true
	else
		defaults write com.apple.finder CreateDesktop -bool ${1}
	fi
	killall Finder
}

git_init() {
	git init
	echo "target .classpath .project .settings .svn .DS_Store *.swp" | tr " " "\n" > .gitignore
	git add .gitignore
	git commit -m "Initialize the project"
}

assign_file_extensions() {
	for extension in {conf,css,js,json,md,php,plist,py,rb,sh,txt,xhtml,xml,yml}; do duti -s com.github.atom $extension all; done
	for extension in {avi,flv,mkv,mov,mp4,mpeg,mpg,webm,wmv}; do duti -s io.mpv $extension all; done
	for extension in {7z,bz2,gz,rar,tar,zip}; do duti -s com.aone.keka $extension all; done
}

get_application_bundle_id() {
	if [ $# -eq 1 ]; then
		for app in `find /Applications -maxdepth 4 -iname "${1}.app"`; do
			if [ -f "$app/Contents/Info.plist" ]; then
				/usr/libexec/PlistBuddy -c 'Print CFBundleIdentifier' "$app/Contents/Info.plist"
			fi
		done
		if [ -d "${HOME}/Applications" ]; then
			for app in `find "${HOME}/Applications" -maxdepth 4 -iname "${1}.app"`; do
				if [ -f "$app/Contents/Info.plist" ]; then
					/usr/libexec/PlistBuddy -c 'Print CFBundleIdentifier' "$app/Contents/Info.plist"
				fi
			done
		fi
	fi
}

pow_reconfigure() {
	until sudo -n true 2> /dev/null; do
		read -s -p "Password: " PASS < /dev/tty
		echo
		sudo -S -v <<< "$PASS" 2> /dev/null
	done
	echo -e "==> Reconfiguring Pow..."
	launchctl unload -w "${HOME}/Library/LaunchAgents/cx.pow.powd.plist"
	sudo launchctl unload -w /Library/LaunchDaemons/cx.pow.firewall.plist
	sudo rm -f "${HOME}/Library/LaunchAgents/cx.pow.powd.plist" /Library/LaunchDaemons/cx.pow.firewall.plist
	sudo pow --install-system &> /dev/null
	pow --install-local &> /dev/null
	sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
	launchctl load -w "${HOME}/Library/LaunchAgents/cx.pow.powd.plist"
}

#home_fix_permissions() {
#	sudo chown -R $(whoami):staff "${HOME}"
#	find "${HOME}" -type d -print0 | xargs -0 chmod 770
#	find "${HOME}" -type f -print0 | xargs -0 chmod 660
#	chmod 771 "${HOME}"
#	find "${HOME}/Public" -type d -print0 | xargs -0 chmod 775
#	find "${HOME}/Public" -type f -print0 | xargs -0 chmod 664
#	find "${HOME}/Public/Drop Box" -type d -print0 | xargs -0 chmod 773
#	find "${HOME}/Public/Drop Box" -type f -print0 | xargs -0 chmod 662
#	sudo chown -R $(whoami):_www "${HOME}/Sites"
#	find "${HOME}/Sites" -type d -print0 | xargs -0 chmod 770
#	find "${HOME}/Sites" -type f -print0 | xargs -0 chmod 660
#}
