#!/usr/bin/env bash

apps=(
	1278508951 # Trello
	409789998  # Twitter
)

echo -e "\n==> Installing apps..."
for app in ${apps[@]}; do
	mas install $app &> /dev/null
done
