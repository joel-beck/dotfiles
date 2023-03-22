source "./zshrc/config.zsh"

source "./zshrc/aliases.zsh"

source "./zshrc/ohmyzsh.zsh"

source "./zshrc/plugins.zsh"

source "./zshrc/starship.zsh"

# NOTE: iTerm2 Configuration breaks Warp's custom prompt
# NOTE: Powerlevel 10k is NOT supported for Warp, only for iTerm2!
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    source "./zshrc/iterm.zsh"
    source "./zshrc/powerlevel10k.zsh"
fi

source "./zshrc/pnpm.zsh"

source "./zshrc/bun.zsh"

source "./zshrc/pyenv.zsh"

source "./zshrc/conda.zsh"

source "./zshrc/tex.zsh"

source "./zshrc/perl.zsh"
