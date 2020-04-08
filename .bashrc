# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# 固有の設定が必要だったら、このファイルに書く。
if [ "$(uname -s)" == "Linux" ]; then
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 7)" == "MINGW64" ]; then
  OS='MINGW'
fi
#echo "$OS"

if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

if [ -f /usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash ]; then
  . /usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash
fi

if [ -f /usr/share/doc/git-1.8.3.1/contrib/completion/git-completion.bash ]; then
  . /usr/share/doc/git-1.8.3.1/contrib/completion/git-completion.bash
fi

if [ -f /usr/share/doc/git2u-core-doc-2.16.5/contrib/completion/git-completion.bash ]; then
  . /usr/share/doc/git2u-core-doc-2.16.5/contrib/completion/git-completion.bash
fi

if [ -f /usr/share/doc/git/contrib/completion/git-completion.bash ]; then
  . /usr/share/doc/git/contrib/completion/git-completion.bash
fi

if [ -f /usr/share/doc/git-1.8.3.1/contrib/completion/git-prompt.sh ]; then
  . /usr/share/doc/git-1.8.3.1/contrib/completion/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1='[\[\033[1;32m\]\u\[\033[00m\]@\h \[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]]\$ '
fi

if [ -f /usr/share/doc/git2u-core-doc-2.16.5/contrib/completion/git-prompt.sh ]; then
  . /usr/share/doc/git2u-core-doc-2.16.5/contrib/completion/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1='[\[\033[1;32m\]\u\[\033[00m\]@\h \[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]]\$ '
fi

if [ -f /usr/share/doc/git/contrib/completion/git-prompt.sh ]; then
  . /usr/share/doc/git/contrib/completion/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1='[\[\033[1;32m\]\u\[\033[00m\]@\h \[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]]\$ '
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias a='alias'
alias h='history'
alias la='ls -al'
alias ll='ls -al'
alias view='vi -R'

alias b='git branch -v'
alias ba='git branch -a -v'
alias d='git diff'
alias g='git grep'
alias l='git log'
alias s='git status'

if [ -f /usr/local/bin/docker-compose ]; then
  alias dc='sudo /usr/local/bin/docker-compose'
fi

if [ "$OS" == "MINGW" ]; then
  alias py='winpty py'
  alias python='winpty python'
fi
