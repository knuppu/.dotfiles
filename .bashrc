#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -llh'
alias la='ls -lah'
alias less='less -R'

alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

if [ -f ~/.bash_aliases ]; then
	.  ~/.bash_aliases
fi

source /usr/share/doc/pkgfile/command-not-found.bash

export EDITOR=vim

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
