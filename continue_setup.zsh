#!/bin/zsh

echo "In zsh setup"
echo "export SHELL_TOOLS=~/.shell_tools" >> ~/.zshrc
echo "source ~/.shell_tools/manifest.sh" >> ~/.zshrc
echo "source ~/venv/bin/activate" >> ~/.zshrc
~/.shell_tools/create_work_specific.zsh

echo "In Apt Install Setup"
sudo apt install terminator
sudo apt install vim
sudo apt install python3-distutils
sudo apt install python3-venv

echo "Set Up Python3 venv"
python3 -m venv ~/venv
source ~/venv/bin/activate
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py


echo "DONE"

