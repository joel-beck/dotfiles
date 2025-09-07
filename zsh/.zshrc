# IMPORTANT: Always append to the PATH variable, do not prepend!
# The order of sourcing the files is important for the following reasons:
# 1. Some scripts might depend on the environment variables set in other scripts
# 2. Several scripts add to the PATH variable, scripts that are run first take priority
#    in the PATH variable

export DOTFILES_DIRPATH="$HOME/dotfiles"
export ZSHRC_DIRPATH="$DOTFILES_DIRPATH/zsh/zshrc"

# Sets environment variables and modifies PATH, must be sourced first
source "$ZSHRC_DIRPATH/env.zsh"

# Must be sourced before plugins
source "$ZSHRC_DIRPATH/ohmyzsh.zsh"

# Must be sourced after oh my zsh
source "$ZSHRC_DIRPATH/plugins.zsh"

# iTerm2 Configuration breaks Warp's custom prompt
# Powerlevel 10k is NOT supported for Warp, only for iTerm2!
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    source "$ZSHRC_DIRPATH/iterm.zsh"
    source "$ZSHRC_DIRPATH/powerlevel10k.zsh"
fi

source "$ZSHRC_DIRPATH/ruff.zsh"

source "$ZSHRC_DIRPATH/pixi.zsh"

source "$ZSHRC_DIRPATH/direnv.zsh"

source "$ZSHRC_DIRPATH/just.zsh" # currently not working

source "$ZSHRC_DIRPATH/bun.zsh"

source "$ZSHRC_DIRPATH/go.zsh"

source "$ZSHRC_DIRPATH/perl.zsh"

source "$ZSHRC_DIRPATH/tex.zsh"

# Must be second to last to make initilization work correctly and display time on end of
# same line
source "$ZSHRC_DIRPATH/starship.zsh"

# Must be last to remove aliases from all plugins
source "$ZSHRC_DIRPATH/aliases.zsh"
