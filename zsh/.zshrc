# NOTE: The order of sourcing the files is important!

export DOTFILES_DIRPATH="$HOME/dotfiles"
# do not overwrite ZSH environment variable, used for oh my zsh!
export ZSH_DIRPATH="$DOTFILES_DIRPATH/zsh"
export ZSHRC_DIRPATH="$ZSH_DIRPATH/zshrc"

source "$ZSHRC_DIRPATH/config.zsh"

# must be sourced before plugins
source "$ZSHRC_DIRPATH/ohmyzsh.zsh"

source "$ZSHRC_DIRPATH/plugins.zsh"

# iTerm2 Configuration breaks Warp's custom prompt
# Powerlevel 10k is NOT supported for Warp, only for iTerm2!
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    source "$ZSHRC_DIRPATH/iterm.zsh"
    source "$ZSHRC_DIRPATH/powerlevel10k.zsh"
fi

source "$ZSHRC_DIRPATH/pnpm.zsh"

source "$ZSHRC_DIRPATH/bun.zsh"

source "$ZSHRC_DIRPATH/pyenv.zsh"

source "$ZSHRC_DIRPATH/conda.zsh"

source "$ZSHRC_DIRPATH/tex.zsh"

source "$ZSHRC_DIRPATH/perl.zsh"

# run second to last to make initilization work correctly and display time on end of
# same line
source "$ZSHRC_DIRPATH/starship.zsh"

# run last to remove aliases from all plugins
source "$ZSHRC_DIRPATH/aliases.zsh"
