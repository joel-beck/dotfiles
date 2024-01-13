#!/usr/bin/env zsh

# Use stow to symlink dotfiles to the home directory

export DOTFILES_DIRPATH="$HOME/dotfiles"
export ICLOUD_DIRPATH="$HOME/Library/Mobile Documents"

# Navigate to the dotfiles directory
cd "$DOTFILES_DIRPATH" || exit

# for local Obsidian sync
stow --adopt obsidian --target="$HOME/Documents/ObsidianVault/.obsidian"

# for iCloud Obsidian sync
# stow --adopt obsidian --target="$ICLOUD_DIRPATH/iCloud~md~obsidian/Documents/Personal/.obsidian"

stow --adopt zsh
