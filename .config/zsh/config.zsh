# enable vi mode
bindkey -M viins ';j' vi-cmd-mode
bindkey -v

# ls aliases
alias ls='ls --color'
alias la='ls --color -a'

alias c='cd'
alias cf='cd $(find -maxdepth 3 -type d | fzf)'

alias pc='sudo pacman'
alias pu='sudo pacman -Syyu'
alias yu='yay -Syyu'

alias v='nvim'
alias vf='vim $(find -maxdepth 3 -type f | fzf)'
alias vim='nvim'

alias pn='pnpm'

alias gitacp='gitacp.sh' 

export EDITOR=nvim 
export VISUAL=nvim
export OPENER=xdg-open

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME="/home/mirzaahmedov/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# start up window manager
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
sway
fi

