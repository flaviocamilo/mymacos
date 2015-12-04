#!/usr/bin/env bash

MYOSX_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$MYOSX_HOME"

git pull origin master

. osx.sh

. brew.sh

. cask.sh

rsync --exclude ".DS_Store" -avh --no-perms dotfiles/.[^.]* $HOME

sed -i -e 's|MYOSX_HOME=|MYOSX_HOME='"'$MYOSX_HOME'"'|' $HOME/.bash_profile

. $HOME/.bash_profile
