# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mirzaahmedov/.zshrc'

PROMPT="[%F{red}%m%f@%F{green}%d%f] %F{cyan}%t%f $"

alias vim="nvim"
alias ls="ls -a"

export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin
