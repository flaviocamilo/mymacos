#!/usr/bin/env bash

{
	caffeinate &
	caffeinate_pid=$!

	echo -e "==> MyOSX Installer\n"

	until sudo -n true 2> /dev/null; do
		read -s -p "Password: " PASSWORD < /dev/tty
		echo
		sudo -S -v <<< "$PASSWORD" 2> /dev/null
	done

	read -e -p $'\nInstall MyPrivateOSX (y/n)? ' WILL_INSTALL_MYPRIVATEOSX < /dev/tty

	echo -e "\n==> Setting user mask to 077..."
	sudo -S -v <<< "$PASSWORD" 2> /dev/null
	sudo launchctl config user umask 077 &> /dev/null
	umask 077

	echo "==> Installing Command Line Tools..."
	"xcode-select" --install 2> /dev/null
	until [[ $("xcode-select" -p 2> /dev/null | grep -e '/Library/Developer/CommandLineTools') ]]; do
		sleep 5
	done
#	sudo -S -v <<< "$PASSWORD" 2> /dev/null
#	sudo xcodebuild -license accept

	git config --global credential.helper osxkeychain
	GH_USER=$(git credential-osxkeychain get <<< '' | grep username | sed -e 's/username=//g')

	if [ $WILL_INSTALL_MYPRIVATEOSX == 'y' ]; then
		echo "==> Installing MyPrivateOSX..."
		git clone -q "https://github.com/$GH_USER/myprivateosx.git" "${HOME}/.myprivateosx" &> /dev/null
		MYPRIVATEOSX_HOME="${HOME}/.myprivateosx"
	fi

	echo "==> Installing MyOSX..."
	git clone -q "https://github.com/flaviocamilo/myosx.git" "${HOME}/.myosx" &> /dev/null
	MYOSX_HOME="${HOME}/.myosx"

	rm -rf "${HOME}/.gitconfig" "${HOME}/.bash*"
	. "$MYOSX_HOME/bootstrap.sh"

	read -n1 -s -p $'\n-------------- Done! --------------\n  THIS SYSTEM IS GOING TO REBOOT!  \n---- Press any key to continue ----\n\a'
	kill $caffeinate_pid; wait $caffeinate_pid &> /dev/null
	sudo -S -v <<< "$PASSWORD" 2> /dev/null
	sudo shutdown -r now &
}
