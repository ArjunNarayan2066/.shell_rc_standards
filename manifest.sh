#!/bin/zsh

export EDITOR='vim'
export SHELL_RC=~/.shell_tools
export SHELL_RC_STUFF=~/.shell_tools/helpful_stuff
export SHELL_RC_WORK=~/work_specific

source $SHELL_RC_STUFF/useful_shortcuts.sh

alias get_time_saved="python3 $SHELL_RC_STUFF/time_saved.py"
alias edit_shortcuts="vim $SHELL_RC_STUFF/useful_shortcuts.sh"
alias copyfiles="python3 $SHELL_RC_STUFF/copy_files.py"

if [[ "$OSTYPE" == "darwin"* ]]; then
	alias update="brew update && brew upgrade"
else
	alias update="sudo apt-get update && sudo apt-get upgrade"
fi

if [ -f "$SHELL_RC_WORK/manifest_specific.zsh" ]; then
	source $SHELL_RC_WORK/manifest_specific.zsh
fi
