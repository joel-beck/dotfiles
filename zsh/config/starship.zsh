eval "$(starship init zsh)"

# custom window title: https://starship.rs/advanced-config/#change-window-title
function set_win_title() {
    echo -ne "\033]0; $(basename "$PWD") \007"
}
precmd_functions+=(set_win_title)
