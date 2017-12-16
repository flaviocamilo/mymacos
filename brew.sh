#!/usr/bin/env bash

echo -e "\n==> Installing Homebrew..."
if [[ ! -f /usr/local/bin/brew ]]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" <<< '' &> /dev/null
fi

brew tap neovim/neovim &> /dev/null

echo -e "\n==> Installing MAS..."
brew install mas &> /dev/null
sleep 5
open -a 'App Store' &> /dev/null
sleep 15
osascript -e 'tell application "System Events" to click menu item "Sign Out" in menu "Store" of menu bar item "Store" in menu bar 1 of process "App Store"' &> /dev/null
sleep 15
osascript -e 'tell application "App Store" to quit' &> /dev/null
sleep 5
mas signin "${MAS_USER}" "${MAS_PASS}" &> /dev/null
sleep 10

echo -e "\n==> Installing Xcode..."
no_echo=$(mas install 497799835 &> /dev/null & sleep 30 && osascript -e 'tell application "System Events" to tell process "Terminal" to keystroke return' &> /dev/null)
until [[ $("xcode-select" -p 2> /dev/null | grep -e '/Applications/Xcode.app/Contents/Developer') ]]; do
	sleep 15
done
sudo xcodebuild -license accept

brew_packages=(
	'go'
	'node --with-openssl'
	'perl'
	'python'
	'python3'
	'ruby'
	'ruby-completion'
	'gem-completion'
	'rails-completion'

	'apm-bash-completion'
	'aria2'
	'asciinema'
	'aspell --with-lang-pt_BR'
	'bash'
	'bash-completion@2'
	'ccat'
	'certbot'
	'checkbashisms'
	'coreutils'
	'cpulimit'
	'ctop'
	'curl --with-libssh2 --with-openssl'
	'diffutils'
	'doctl'
	'duff'
	'duti'
	'fdupes'
	'findutils --with-default-names'
	'fish'
	'flow'
	'gnu-sed --with-default-names'
	'grep --with-default-names'
	'highlight'
	'htop-osx'
	'httpie'
	'iftop'
	'imagemagick'
	'jbake'
	'jrnl'
	'moreutils'
	'namebench'
	'neovim'
	'nmap'
	'p7zip'
	'postgresql'
	'pow'
	'psqlodbc'
	'pstree'
	'ripgrep'
	'screen'
	'shellcheck'
	# 'sourcekitten' // FIXME - Needs to be compiled when <= El Capitan and so needs Xcode >= 8.3, not available for <= El Capitan
	'sqlite'
	'ssh-copy-id'
	# 'swiftlint' // FIXME - Needs to be compiled when <= El Capitan and so needs Xcode >= 9.0, not available for <= El Capitan
	'tidy-html5'
	'tmux'
	'tmuxinator-completion'
	'tomcat --ignore-dependencies'
	'tor'
	'tree'
	'unrar'
	'vim --with-override-system-vi --with-python3'
	'watchman'
	'wget'
	'wiki'
	'yarn'
	'z'
	'zsh'

	'git --with-curl --with-openssl'
	'git-flow-avh'
	'gist'
	# 'ghi' // FIXME - Needs gem pygments.rb (and we haven't loaded the new Ruby yet)
	'hub'

	'docker'
	'docker-machine'
	'docker-compose'
	'docker-swarm'
	'docker-cloud'
	'vagrant-completion'
	'maven --ignore-dependencies'
	'maven-completion'
	'sonar-completion'

	'bitlbee'
	'cowsay'
	'epic5'
	'figlet'
	'gifify'
	'irssi'
	'libvo-aacenc'
	'weechat --with-aspell --with-curl --with-ruby'
	'youtube-dl'
)

echo -e "\n==> Installing Homebrew packages..."
for package in "${brew_packages[@]}"; do
	brew install $package &> /dev/null
done

echo -e "\n==> Configuring Bash..."
sudo -S sh -c 'echo "/usr/local/bin/bash" >> /etc/shells' <<< "${PASS}" 2> /dev/null
sudo -S chsh -s '/usr/local/bin/bash' "${USER}" <<< "${PASS}" 2> /dev/null

echo -e "\n==> Configuring Pow..."
mkdir -p "${HOME}/Library/Application Support/Pow/Hosts"
ln -s "${HOME}/Library/Application Support/Pow/Hosts" "${HOME}/.pow"
sudo pow --install-system &> /dev/null
sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
pow --install-local &> /dev/null
launchctl load -w "${HOME}/Library/LaunchAgents/cx.pow.powd.plist"

brew update &> /dev/null

brew upgrade &> /dev/null

brew cleanup --force &> /dev/null
