#!/usr/bin/env zsh

# Use stow to symlink dotfiles to the home directory

# Navigate to the dotfiles directory
cd "$HOME/dotfiles"

# Keep the packages in alphabetical orders
# The `--adopt` flag overwrites existing config files with symlinks
stow --adopt conda
stow --adopt git
stow --adopt homebrew
stow --adopt karabiner
stow --adopt macos
stow --adopt obsidian
stow --adopt rstudio
stow --adopt starship
stow --adopt vscode
stow --adopt warp
stow --adopt zsh
