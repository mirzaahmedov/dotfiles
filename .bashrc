#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -alh --color'
alias grep='grep --color'

alias status='git status'
alias add='git add'
alias commit='commit -m'
alias pull='git pull origin'
alias push='git push origin'

export PATH=$PATH:$HOME/go/bin

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
sway
fi

# PS1='[\u@\h \W]\$ '
PS1=' \[\e[00;34m\]λ \W \[\e[0m\]'
. "$HOME/.cargo/env"
