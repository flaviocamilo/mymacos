#!/usr/bin/env bash

python2_packages=(
	'neovim'
)

python3_packages=(
	'neovim'
)

echo -e "\n==> Installing Python 2 packages..."
for package in ${python2_packages[@]}; do
	pip2 install $package &> /dev/null
done

echo -e "\n==> Installing Python 3 packages..."
for package in ${python3_packages[@]}; do
	pip3 install $package &> /dev/null
done
