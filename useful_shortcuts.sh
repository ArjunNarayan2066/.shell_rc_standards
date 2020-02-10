# Time Saved File
# This file accumulates time saved using the alias commands
TSF=~/'time_saved_using_alias_commands.txt'
# Aliases
# Bazel
# All commands enter repo root to execute Bazel and then 'cd -' back to the original directory
alias bab='ts 1;echo "bazel build [target]";bazel build'
# Build All
alias bba='ts 2;echo "bazel build //... [build all]";bazel build //...'
alias bat='ts 2;echo "bazel test [bazel run one test]";bazel test'
# Test All
alias bata='ts 2;echo bazel test //... [bazel run all tests];bazel test //...'
alias bar='ts 1;echo "bazel run [bazel run an executable]";bazel run'
alias bac='ts 1;echo bazel clean;bazel clean'
alias baf='ts 2;echo "bazel fetch [target] [fetch a target]";bazel fetch $1'
alias bas='ts 2;echo "bazel sync [sync all repos specified in WORKSPACE to work offline]";bazel sync'
# Git Aliases
alias ga='ts 1;echo git add;git add '
alias gaa='ts 1;echo git add --all;git add --all'
alias gb='ts 2;echo git branch;git branch'
alias gbf='ts 10;echo "Get Full Branch: gplo; gsy; gsuir"; gplo; gsy; gsuir'
alias gd='ts 1;echo git diff;git diff'
alias gc='ts 2;echo git checkout;git checkout'
alias gdh='ts 3;echo git diff HEAD;git diff HEAD~'
alias gdc='ts 2;echo git diff --cached;git diff --cached'
alias gf='ts 2;echo git fetch;git fetch'
alias gl='ts 1;echo git log;git log'
alias gr='ts 2;echo git rebase;git rebase'
alias gri='ts 2;echo git rebase -i;git rebase -i'
alias grm='ts 2;echo git rebase master;git rebase master'
alias gs='ts 2;echo git status;git status'
alias gst='ts 2;echo git stash;git stash'
alias gstpo='ts 2;echo git stash pop;git stash pop'
alias gstpu='ts 2;echo git stash push;git stash push'
alias gsts='ts 2;echo git stash show;git stash show'
alias gstc='ts 2;echo git stash clear;git stash clear'
alias gbig='ts 2;echo git bisect good;git bisect good'
alias gbib='ts 2;echo git bisect bad;git bisect bad'
alias gbir='ts 2;echo git bisect reset;git bisect reset'
#
# Submodules
alias gsu='ts 2;echo git submodule update;git submodule update'
alias gsui='ts 2;echo git submodule update --init;git submodule update --init'
alias gsuir='ts 2;echo git submodule update --init --recursive;git submodule update --init --recursive'
alias gsy='ts 2;echo git submodule sync --recursive;git submodule sync --recursive'
#
alias gcp='ts 2;echo git cherry-pick;git cherry-pick'
alias gcm='ts 3;echo git commit -m;git commit -m'
alias gcan='ts 5;echo git commit --amend --no-edit;git commit --amend --no-edit'
alias gco='ts 2;echo git checkout;git checkout'
alias gcom='ts 2;echo git checkout master;git checkout master'
#
# Push / Pull
alias gpso='ts 2;echo git push origin;git push origin'
alias gpsof='ts 2;echo git push origin -f;git push origin -f'
alias gpsoh='ts 3;echo git push origin head;git push origin head'
alias gpsohf='ts 3;echo git push origin head -f;git push origin head -f'
alias gplo='ts 2;echo git pull origin;git pull origin'
alias gplom='ts 2;echo git pull origin master;git pull origin master'
alias gploh='ts 3;echo git pull origin head;git pull origin head'
#
# Selects the 'modified' files and adds them to git
alias gam='ts 10;git status | grep modified | awk '\''{print $2}'\'' | xargs git add && git status'
# Update a PR by adding modified files, commit, squash, and then push to git with force flag
alias gupr='ts 15;echo "git [add modified]";echo git commit --amend --noedit;echo git push origin head -f;gam;git commit --amend --no-edit;git push origin head -f;git status'
#
# Clang Format
alias cfi='ts 3;echo clang-format -style=file -i;clang-format -style=file -i'
alias cf='ts 3;echo clang-format -style=file;clang-format -style=file'
#
# Rake
alias rau='ts 2;echo rake unit;rake unit'
alias rac='ts 1;echo rake coverage;rake coverage'
alias racl='ts 1;echo rake clean;rake clean'
alias ra='ts 2;echo ranger;ranger'

# Company Specific Stuff 
# # Performs 'git checkout -b user/username/SW-<param>
 gcobG() {
     ts 5;git checkout -b user/$GIT_USER/SW-$1
 }
# # Performs 'git checkout user/arnarayan/SW-<param>
 gcoG() {
     ts 4;git checkout user/$GIT_USER/SW-$1
 }
gcod() {
     ts 4; git checkout develop/2020.$1
}

gcof() {
     ts 5; git checkout feature/$1
}

# Performs 'git bisect start; git bisect bad; git bisect good <param>
gbi() {
    ts 6;git bisect start;git bisect bad; git bisect good $1
}
bacb() {
  ts 3;bazel clean;bazel build $1
}
bacbr() {
  ts 4;bazel clean;bazel build $1;bazel run $1
}
# Log time saved in seconds with a timestamp
ts() {
    echo $1 \# $(date) >> $TSF
}
