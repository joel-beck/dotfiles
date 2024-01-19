# SECTION: General Command Line Plugins
# auto-closing quotes and parentheses
source /opt/homebrew/share/zsh-autopair/autopair.zsh
autopair-init

# SECTION: Oh My Zsh Plugins
plugins=(
    macos pdm z zsh-autosuggestions zsh-syntax-highlighting
)

# NOTE for zsh-autosuggestions
# Type 'cat' in Terminal and press Shortcut to see correct symbols for 'bindkey' command
# Accept Next Word: Option + Rightarrow or Cmd + Rightarrow
# Accept whole Line: Rightarrow
bindkey '^E' forward-word

# NOTE: Has to be placed AFTER sourcing plugins
source "$ZSH/oh-my-zsh.sh"

# NOTE: Has to be placed AFTER sourcing oh-my-zsh.sh
# NOTE: Does not work in RStudio
eval "$(mcfly init zsh)"
