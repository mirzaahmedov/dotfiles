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
export _JAVA_AWT_WM_NONREPARENTING=1

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
sway
fi

# pnpm
export PNPM_HOME="/home/mirzaahmedov/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
