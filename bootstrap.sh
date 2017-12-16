#!/usr/bin/env bash

rm -rf "${HOME}/.bash*" "${HOME}/.gitconfig"

cd "${MYOSX_HOME}" || exit

. osx.sh

. brew.sh

. mas.sh

. cask.sh

. node.sh

. ruby.sh

. python.sh

. atom.sh

echo -e "\n==> Assigning file extensions..."
for extension in {conf,css,js,json,md,php,plist,py,rb,sh,txt,xhtml,xml,yml}; do duti -s com.github.atom $extension all; done
for extension in {avi,flv,mkv,mov,mp4,mpeg,mpg,webm,wmv}; do duti -s io.mpv $extension all; done
for extension in {7z,bz2,gz,rar,tar,zip}; do duti -s com.aone.keka $extension all; done

echo -e "\n==> Synchronizing MyOSX dotfiles..."
rsync --exclude ".DS_Store" -avh --no-perms dotfiles/.[^.]* "${HOME}" &> /dev/null
sed -i -e 's|MYOSX_HOME=|MYOSX_HOME='"'${MYOSX_HOME}'"'|' "${HOME}/.bash_profile"
sed -i -e 's|projectHome:|projectHome: "'"${HOME}"'/Developer"|' "${HOME}/.atom/config.cson"
