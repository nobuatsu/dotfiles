#!/bin/sh

#set -eu
set -u

function make_backup () {
  test -f ${1} && mv ${1} ${1}_$(date +%Y%m%d_%H%M%S).bak
}

function make_symlink () {
  make_backup ~/${1}
  ln -s ~/dotfiles/${1} ~/${1}
}

files=(.bash_logout .bash_profile .bashrc .gitconfig .gitignore_global .vimrc)
for filename in ${files[@]}
do
  make_symlink ${filename}
done
