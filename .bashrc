#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -llh'
alias la='ls -lah'

alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
	.  ~/.bash_aliases
fi

source /usr/share/doc/pkgfile/command-not-found.bash

export EDITOR=vim

