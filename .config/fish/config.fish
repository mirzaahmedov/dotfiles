if status is-interactive
    # enable fish_vi_key_bindings
    fish_vi_key_bindings

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

    alias cd..='cd ..'
    alias cd...='cd ../../'
    alias cd....='cd ../../../'

end

export EDITOR=nvim
export VISUAL=nvim

set PATH $HOME/.local/bin $PATH
set PATH $HOME/.scripts $PATH
set PATH $HOME/go/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/mirzaahmedov/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# start up window manager
if test -z $DISPLAY && tty = /dev/tty1
    sway
end
