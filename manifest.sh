#!/bin/zsh
export EDITOR='vim'
export SHELL_TOOLS_STUFF=~/.shell_tools/helpful_stuff
export SHELL_TOOLS_WORK=~/work_specific

source $SHELL_TOOLS_STUFF/useful_shortcuts.sh

alias get_time_saved="python3 $SHELL_TOOLS_STUFF/time_saved.py"
alias edit_shortcuts="vim $SHELL_TOOLS_STUFF/useful_shortcuts.sh"
alias copyfiles="python3 $SHELL_TOOLS_STUFF/copy_files.py"
alias pd="python3 $SHELL_TOOLS_STUFF/pd.py"

if [[ "$OSTYPE" == "darwin"* ]]; then
	alias update="brew update && brew upgrade"
else
	alias update="sudo apt-get update && sudo apt-get upgrade"
fi

if [ -f "$SHELL_TOOLS_WORK/manifest_specific.zsh" ]; then
	source $SHELL_TOOLS_WORK/manifest_specific.zsh
fi
