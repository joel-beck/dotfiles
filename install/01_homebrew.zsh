#!/usr/bin/env zsh

export DOTFILES_DIRPATH="$HOME/dotfiles"
export INSTALL_DIRPATH="$DOTFILES_DIRPATH/install"
export HOMEBREW_DIRPATH="$INSTALL_DIRPATH/homebrew"

# Install Homebrew: https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/Users/joel/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Upgrade all installed casks
brew upgrade --cask

# Install Homebrew Packages
source "$HOMEBREW_DIRPATH/packages.zsh"

# Install Homebrew Apps
source "$HOMEBREW_DIRPATH/apps.zsh"

# Install Homebrew Fonts
source "$HOMEBREW_DIRPATH/nerd-fonts.zsh"

# Remove outdated versions of installed formulae
brew cleanup
