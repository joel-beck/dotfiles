# Set XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_LIB_HOME="$HOME/.local/lib"
export XDG_CACHE_HOME="$HOME/.cache"

# Minimal PATH for all zsh invocations (interactive and non-interactive)
# Keep appending to respect existing order
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/Library/TeX/texbin"
