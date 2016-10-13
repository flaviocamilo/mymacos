#!/usr/bin/env bash

MYOSX_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$MYOSX_HOME" || exit

. osx.sh
. brew.sh
. cask.sh
. atom.sh

for ext in {conf,css,js,json,md,php,plist,py,rb,sh,txt,xhtml,xml,yml}; do duti -s com.github.atom $ext all; done
for ext in {avi,flv,mkv,mov,mp4,mpeg,mpg,webm,wmv}; do duti -s io.mpv $ext all; done
for ext in {7z,bz2,gz,rar,tar,zip}; do duti -s com.aone.keka $ext all; done

rsync --exclude ".DS_Store" -avh --no-perms "dotfiles/.[^.]*" "${HOME}"
[ -d "${HOME}/.myprivateosx/dotfiles" ] && rsync --exclude ".DS_Store" -avh --no-perms "${HOME}/.myprivateosx/dotfiles/.[^.]*" "${HOME}"
sed -i -e 's|MYOSX_HOME=|MYOSX_HOME='"'$MYOSX_HOME'"'|' "${HOME}/.bash_profile"
sed -i -e 's|projectHome:|projectHome: "/Users/'"${USER}"'/Developer"|' "${HOME}/.atom/config.cson"
