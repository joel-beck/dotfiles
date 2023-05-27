#!/usr/bin/env zsh

export DOTFILES_DIRPATH="$HOME/dotfiles"
export HOMEBREW_DIRPATH="$DOTFILES_DIRPATH/homebrew"

# Install Homebrew: https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Upgrade all installed casks
brew upgrade --cask

# Install Homebrew Packages
source "$HOMEBREW_DIRPATH/install-homebrew-packages.zsh"

# Install Homebrew Apps
source "$HOMEBREW_DIRPATH/install-homebrew-apps.zsh"

# Remove outdated versions of installed formulae
brew cleanup
