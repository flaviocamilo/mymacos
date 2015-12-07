#!/usr/bin/env bash

sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

MYOSX_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$MYOSX_HOME"

git pull origin master

. osx.sh

. brew.sh

. cask.sh

rsync --exclude ".DS_Store" -avh --no-perms dotfiles/.[^.]* $HOME

sed -i -e 's|MYOSX_HOME=|MYOSX_HOME='"'$MYOSX_HOME'"'|' $HOME/.bash_profile

read -rsp $'-----------------------------------\n- This system is going to reboot! -\n---- Press any key to continue ----\n'

sudo shutdown -r now &
