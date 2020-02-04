#!/bin/bash

# Setup script for oh-my-zsh and helpful shortcuts

sudo apt-get update
sudo apt-get upgrade

if [ ! -d "~/.oh-my-zsh" ]
then
	sudo apt-get install zsh

	# Install oh-my-zsh https://github.com/ohmyzsh/ohmyzsh
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	# Set zsh to default shell
	chsh -s $(which zsh)
fi

