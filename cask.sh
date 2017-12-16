#!/usr/bin/env bash

echo -e "\n==> Installing Cask..."
brew tap caskroom/cask &> /dev/null
brew install brew-cask-completion &> /dev/null
brew tap caskroom/versions &> /dev/null
brew tap caskroom/fonts &> /dev/null
brew tap flaviocamilo/fonts-nonfree &> /dev/null

cask_apps=(
	'java'
	'eclipse-installer'

	'atom'
	'cheatsheet'
	'dash'
	'db-browser-for-sqlite'
	'dbvisualizer'
	'devdocs'
	'discord'
	'dropbox'
	'enpass'
	'firefox'
	# 'freemind'
	# 'ghost'
	'github'
	'gitscout'
	'google-chrome-dev'
	'gpg-suite'
	# 'hopper-disassembler'
	'hyper'
	# 'kaleidoscope'
	'kap'
	'kindle'
	# 'macdown'
	# 'marvel'
	'opera'
	# 'origami-studio'
	'patchwork'
	'postico'
	'postman'
	'react-native-debugger'
	'reactotron'
	# 'remote-desktop-manager'
	'rocket-chat'
	'sequel-pro'
	# 'sip'
	# 'skype'
	'slack'
	'telegram'
	# 'things'
	'tunnelblick'
	'virtualbox'
	'virtualbox-extension-pack'
	'vagrant'
	'whatsapp'
	'wire'
	# 'zeplin'

	# 'adguard'
	'bartender'
	'bettertouchtool'
	'caffeine'
	'diskmaker-x'
	'etcher'
	'flux'
	'keka'
	'macs-fan-control'
	'namebench'
	'onyx'
	'scroll-reverser'
	'silverlight'
	'smoothmouse'
	# 'unetbootin'

	'battle-net'
	'calibre'
	# 'cumulus'
	'flixtools'
	'handbrake'
	'mpv'
	'openemu'
	# 'plug'
	# 'ramme'
	'spotify'
	'spotify-notifications'
	'starcraft'
	'steam'
	'subtitles'
	'transmission'
	'twitch'
	'xld'

	'qlcolorcode'
	'qlstephen'
	'qlmarkdown'
	'quicklook-json'
	'qlprettypatch'
	'qlimagesize'

	'font-camingocode'
	'font-courier-prime'
	'font-fira-code'
	'font-fira-mono'
	'font-fira-sans'
	'font-inconsolata'
	'font-microsoft-office'
	'font-office-code-pro'
	'font-source-code-pro'
)

echo -e "\n==> Installing Cask apps..."
for app in ${cask_apps[@]}; do
	brew cask install $app &> /dev/null
done

brew cask cleanup &> /dev/null
