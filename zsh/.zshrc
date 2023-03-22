export DOTFILES="$HOME/dotfiles"
export ZSH="$DOTFILES/zsh"
export ZSHRC="$ZSH/zshrc"

source "$ZSHRC/config.zsh"

source "$ZSHRC/ohmyzsh.zsh"

source "$ZSHRC/plugins.zsh"

source "$ZSHRC/starship.zsh"

# iTerm2 Configuration breaks Warp's custom prompt
# Powerlevel 10k is NOT supported for Warp, only for iTerm2!
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    source "$ZSHRC/iterm.zsh"
    source "$ZSHRC/powerlevel10k.zsh"
fi

source "$ZSHRC/pnpm.zsh"

source "$ZSHRC/bun.zsh"

source "$ZSHRC/pyenv.zsh"

source "$ZSHRC/conda.zsh"

source "$ZSHRC/tex.zsh"

source "$ZSHRC/perl.zsh"

# run last to remove aliases from all plugins
source "$ZSHRC/aliases.zsh"
