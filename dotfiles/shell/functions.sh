#!/usr/bin/env bash

brew_cask_upgrade() {
	for app in $(brew cask list -1 | sort); do
		auto_updates=$(brew cask cat $app | grep 'auto_updates true')
		if [[ -z $auto_updates ]]; then
			info=$(brew cask info $app)
			latest_version=$(grep "$app: " <<< $info | sed -e "s/$app: //g")
			installed_version=$(grep "${HOMEBREW_CASKROOM}" <<< $info | tail -n 1 | sed -e "s:${HOMEBREW_CASKROOM}/$app/::g" | sed -e 's: [[:graph:][:space:]]*::')
			if [[ $latest_version != $installed_version ]]; then
				echo "Upgrading $app [$installed_version -> $latest_version]..."
				brew cask reinstall $app &> /dev/null
			fi
		fi
	done
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

associate_extensions() {
	for ext in {conf,css,js,json,md,php,plist,py,rb,sh,txt,xhtml,xml,yml}; do duti -s com.github.atom $ext all; done
	for ext in {avi,flv,mkv,mov,mp4,mpeg,mpg,webm,wmv}; do duti -s io.mpv $ext all; done
	for ext in {7z,bz2,gz,rar,tar,zip}; do duti -s com.aone.keka $ext all; done
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
