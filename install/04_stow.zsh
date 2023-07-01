#!/usr/bin/env zsh

# Use stow to symlink dotfiles to the home directory

export DOTFILES_DIRPATH="$HOME/dotfiles"

# Navigate to the dotfiles directory
cd "$DOTFILES_DIRPATH" || exit

# Keep the packages in alphabetical orders
# The `--adopt` flag overwrites existing config files with symlinks
# The `--target` flag specified the location of the target directory in the file system
# By default, the target directory is the parent directory of the current working
# directory (here the home directory)

stow --adopt git # equivalent to `stow --adopt git --target="$HOME"`
stow --adopt karabiner --target="$HOME/.config/karabiner"
stow --adopt obsidian --target="$HOME/Documents/ObsidianVault/.obsidian"
stow --adopt rstudio
stow --adopt starship --target="$HOME/.config"
stow --adopt vscode --target="$HOME/Library/Application Support/Code/User"
stow --adopt warp --target="$HOME/.warp"
stow --adopt zsh
