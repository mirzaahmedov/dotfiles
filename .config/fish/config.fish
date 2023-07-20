if status is-interactive
    # enable fish_vi_key_bindings
    fish_vi_key_bindings

    # Commands to run in interactive sessions can go here
    set PATH $HOME/.local/bin $PATH
    set PATH $HOME/.scripts $PATH
    set PATH $HOME/.local/share/pnpm $PATH

    export EDITOR=nvim
    export VISUAL=nvim

    alias v='nvim $(fzf)'
    alias c='cd $(find . -maxdepth 3 -type d | fzf)'
    alias e='cd $(find . -maxdepth 3 -type d | fzf) && nvim .'
    alias vim='nvim'
    alias rn='ranger'
    alias ls='ls --color=auto'
    alias pick_color='grim -g "$(slurp -p)" -t ppm - | convert - -format \'%[pixel:p{0,0}]\' txt:-'

    alias cd..='cd ..'
    alias cd...='cd ../../'
    alias cd....='cd ../../../'

    alias c:fish='vim .config/fish/config.fish'
    alias c:sway='vim .config/sway/config'
    alias c:waybar='vim .config/waybar/config'

    alias screenshot='$HOME/bin/screenshot.sh'

    alias pn='pnpm'
    alias pc='sudo pacman'

    alias x='exa --icons --git -T -R -L 3 --git-ignore'
end

# pnpm
set -gx PNPM_HOME "/home/mirzaahmedov/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
