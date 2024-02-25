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
alias diff='diff --color=auto'
alias ip='ip -color=auto'

if [ -f ~/.bash_aliases ]; then
	.  ~/.bash_aliases
fi

source /usr/share/doc/pkgfile/command-not-found.bash

export EDITOR=nvim
export LESS='-RFX --use-color -Dd+r$Du+b$'
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"

## colors for terminal ##
#Black       0;30     Dark Gray     1;30
#Blue        0;34     Light Blue    1;34
#Green       0;32     Light Green   1;32
#Cyan        0;36     Light Cyan    1;36
#Red         0;31     Light Red     1;31
#Purple      0;35     Light Purple  1;35
#Brown       0;33     Yellow        1;33
#Light Gray  0;37     White         1;37

PATH="$HOME/.local/bin:$PATH"
PS1='\[\e[91m\][\[\e[93;1m\]\u\[\e[38;5;83m\]@\[\e[38;5;33m\]\H\[\e[0m\] \[\e[38;5;93;1m\]\w\[\e[0;91m\]]\[\e[0m\]\$ '

