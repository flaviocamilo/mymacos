#!/usr/bin/env bash

gems=(
	'neovim'
)

echo -e "\n==> Installing Ruby Gems..."
for gem in ${gems[@]}; do
	gem install $gem &> /dev/null
done
