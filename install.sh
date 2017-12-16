#!/usr/bin/env bash

{
	caffeinate &
	caffeinate_pid=$!

	echo "==>  MyOSX Installer"

	until sudo -n true 2> /dev/null; do
		read -s -p $'\n> Password: ' PASS < /dev/tty
		echo
		sudo -S -v <<< "$PASS" 2> /dev/null
	done
	sudo sh -c 'echo "\nDefaults timestamp_timeout=-1" >> /etc/sudoers' &> /dev/null

	read -e -p $'\n> Mac App Store Username: ' MAS_USER < /dev/tty
	read -s -p "> Mac App Store Password: " MAS_PASS < /dev/tty
	echo

	read -e -p $'\n> Host Name: ' HOST_NAME < /dev/tty
	read -e -p "> Computer Name: " COMPUTER_NAME < /dev/tty

	until [[ $INSTALL_MYPRIVATEOSX == 'y' || $INSTALL_MYPRIVATEOSX == 'n' ]]; do
		read -n1 -e -p $'\n> Install MyPrivateOSX? (y/n): ' INSTALL_MYPRIVATEOSX < /dev/tty
		read -e -p "  > GitHub Username: " GH_USER < /dev/tty
		read -s -p "  > GitHub Password: " GH_PASS < /dev/tty
		GH_PASS=$(python -c 'import urllib, sys; print urllib.quote(sys.argv[1])' "$GH_PASS")
	done

	echo -e "\n\n==> Starting instalation..."
	sleep 3

	echo -e "\n==> Setting user mask to 077..."
	sudo launchctl config user umask 077 &> /dev/null
	umask 077

	echo -e "\n==> Installing Command Line Developer Tools..."
	"xcode-select" --install 2> /dev/null
	sleep 5
	osascript -e 'tell application "System Events" to tell process "Install Command Line Developer Tools" to keystroke return' &> /dev/null
	sleep 3
	osascript -e 'tell application "System Events" to tell process "Install Command Line Developer Tools" to click button "Agree" of window "License Agreement"' &> /dev/null
	until [[ $("xcode-select" -p 2> /dev/null | grep -e '/Library/Developer/CommandLineTools') ]]; do
		sleep 15
	done
	sleep 15
	osascript -e 'tell application "Install Command Line Developer Tools" to quit' &> /dev/null

	echo -e "\n==> Downloading MyOSX..."
	git clone -q "https://github.com/flaviocamilo/myosx.git" "${HOME}/.myosx" &> /dev/null
	cd "${HOME}/.myosx" &> /dev/null
	git checkout refined &> /dev/null
	cd - &> /dev/null
	MYOSX_HOME="${HOME}/.myosx"

	if [ $INSTALL_MYPRIVATEOSX == 'y' ]; then
		echo -e "\n==> Downloading MyPrivateOSX..."
		git config --global credential.helper osxkeychain
		git clone -q "https://$GH_USER:$GH_PASS@github.com/$GH_USER/myprivateosx.git" "${HOME}/.myprivateosx" &> /dev/null
		MYPRIVATEOSX_HOME="${HOME}/.myprivateosx"
	fi

	echo -e "\n==> Bootstrapping MyOSX..."
	. "$MYOSX_HOME/bootstrap.sh"

	if [ $INSTALL_MYPRIVATEOSX == 'y' ]; then
		echo -e "\n==> Bootstrapping MyPrivateOSX..."
		. "$MYPRIVATEOSX_HOME/bootstrap.sh"
	fi

	echo -e '\n------------- Done! -------------\n THIS SYSTEM IS GOING TO REBOOT!\n\a'
	kill $caffeinate_pid; wait $caffeinate_pid &> /dev/null
	sleep 5
	sudo sed -i "/Defaults timestamp_timeout=-1/d" /etc/sudoers
	osascript -e 'tell app "loginwindow" to «event aevtrrst»' &> /dev/null
}
