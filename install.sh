#!/usr/bin/env bash

{
	caffeinate &
	caffeinate_pid=$!

	until sudo -n true 2> /dev/null; do
		read -s -p "macOS Password: " PASSWORD < /dev/tty
		echo
		sudo -S -v <<< "${PASSWORD}" 2> /dev/null
	done

#	read -e -p "Do you want to install your MyPrivateOSX (y/n)? " WILL_INSTALL_MYPRIVATEOSX < /dev/tty
#	echo
#	if [ $WILL_INSTALL_MYPRIVATEOSX == 'y' ]; then
		read -e -p "GitHub User: " GH_USER < /dev/tty
		read -s -p "GitHub Password: " GH_PASS < /dev/tty
		echo
#	fi

	sudo -S -v <<< "${PASSWORD}" 2> /dev/null
	sudo launchctl config user umask 027 &> /dev/null
	umask 027

	"xcode-select" --install 2> /dev/null
	until [[ $("xcode-select" -p 2> /dev/null | grep -e '/Applications/Xcode.app' -e '/Library/Developer/CommandLineTools') ]]; do
		sleep 5
	done
	sudo -S -v <<< "${PASSWORD}" 2> /dev/null
	sudo xcodebuild -license accept

#	if [ $WILL_INSTALL_MYPRIVATEOSX == 'y' ]; then
		MYPRIVATEOSX_DOWNLOAD_RETURN_CODE=$(curl -w %{http_code} -u "$GH_USER:$GH_PASS" -fsSL "https://github.com/$GH_USER/myprivateosx/archive/master.zip" -o myprivateosx.zip 2> /dev/null)
		if [ $MYPRIVATEOSX_DOWNLOAD_RETURN_CODE == '200' ]; then
			unzip -oq myprivateosx.zip
			rm -f myprivateosx.zip

			mv myprivateosx-master "${HOME}/.myprivateosx"
			cd "${HOME}/.myprivateosx"

			git init -q &> /dev/null
			git remote add -t master origin "https://github.com/$GH_USER/myprivateosx.git"
			git add .
			git clean -q -f &> /dev/null
			git pull -q &> /dev/null
		else
			echo "Couldn't install MyPrivateOSX."
		fi
#	fi

	MYOSX_DOWNLOAD_RETURN_CODE=$(curl -w %{http_code} -u "$GH_USER:$GH_PASS" -fsSL "https://github.com/$GH_USER/myosx/archive/master.zip" -o myosx.zip 2> /dev/null)
	if [ $MYOSX_DOWNLOAD_RETURN_CODE == '200' ]; then
		unzip -oq myosx.zip
		rm -f myosx.zip

		mv myosx-master "${HOME}/.myosx"
		cd "${HOME}/.myosx"
		. bootstrap.sh

		git init -q &> /dev/null
		git remote add -t master origin "https://github.com/$GH_USER/myosx.git"
		git add .
		git clean -q -f &> /dev/null
		git pull -q &> /dev/null
	else
		echo "Couldn't install MyOSX."
	fi

	read -n1 -s -p $'\n-------------- Done! --------------\n-----------------------------------\n  THIS SYSTEM IS GOING TO REBOOT!  \n---- Press any key to continue ----\n\n\a'

	kill $caffeinate_pid; wait $caffeinate_pid &> /dev/null

	sudo -S -v <<< "${PASSWORD}" 2> /dev/null
	sudo shutdown -r now &
}
