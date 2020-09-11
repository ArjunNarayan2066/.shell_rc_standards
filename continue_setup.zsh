#!/bin/zsh

echo "In zsh setup"
echo "export SHELL_TOOLS=~/.shell_tools" >> ~/.zshrc
echo "source ~/.shell_tools/manifest.sh" >> ~/.zshrc
~/.shell_tools/create_work_specific.zsh

echo "In Apt Install Setup"
sudo apt install terminator
sudo apt install vim
sudo apt install python3-distutils

echo "DONE"

