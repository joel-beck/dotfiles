#!/usr/bin/env zsh

# Use stow to symlink dotfiles to the home directory

export DOTFILES_DIRPATH="$HOME/dotfiles"

# Navigate to the dotfiles directory
cd "$DOTFILES_DIRPATH" || exit

# Keep the packages in alphabetical orders
# The `--adopt` flag overwrites existing config files with symlinks
stow --adopt conda
stow --adopt git
stow --adopt karabiner
stow --adopt obsidian
stow --adopt rstudio
stow --adopt starship
stow --adopt vscode
stow --adopt warp
stow --adopt zsh
