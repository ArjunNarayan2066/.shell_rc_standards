#!/bin/zsh

echo "In zsh setup"

echo "source ~/.shell_tools/manifest.sh" >> ~/.zshrc

~/.shell_tools/create_work_specific.zsh

echo "In Terminator Setup"

sudo apt install terminator

echo "DONE"

