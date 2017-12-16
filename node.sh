#!/usr/bin/env bash

packages=(
	'node-gyp'
	'flow-typed'
	'create-react-app'
	'serve'
	'neovim'
)

echo -e "\n==> Installing global Node packages..."
for package in ${packages[@]}; do
	yarn global add $package &> /dev/null
done
