if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH $HOME/.local/bin $PATH
    set PATH $HOME/bin $PATH

    export EDITOR=nvim
    export VISUAL=nvim

    alias vim='nvim'
    alias ls='ls --color=auto'
    alias pick_color='grim -g "$(slurp -p)" -t ppm - | convert - -format \'%[pixel:p{0,0}]\' txt:-'

    alias cd..='cd ..'
    alias cd...='cd ../../'
    alias cd....='cd ../../../'

    alias c:fish='vim .config/fish/config.fish'
    alias c:sway='vim .config/sway/config'
    alias c:waybar='vim .config/waybar/config'
end
