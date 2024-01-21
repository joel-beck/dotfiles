#!/usr/bin/env zsh

set -uxo pipefail

export DOTFILES_DIRPATH="$HOME/dotfiles"
export HOMEBREW_DIRPATH="$DOTFILES_DIRPATH/homebrew"

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
source "$HOMEBREW_DIRPATH/packages/programming.zsh"
source "$HOMEBREW_DIRPATH/packages/cli-tools.zsh"

# Install Homebrew Apps
source "$HOMEBREW_DIRPATH/apps/apple.zsh"
source "$HOMEBREW_DIRPATH/apps/automation.zsh"
source "$HOMEBREW_DIRPATH/apps/backup.zsh"
source "$HOMEBREW_DIRPATH/apps/browser.zsh"
source "$HOMEBREW_DIRPATH/apps/media.zsh"
source "$HOMEBREW_DIRPATH/apps/messages.zsh"
source "$HOMEBREW_DIRPATH/apps/productivity.zsh"
source "$HOMEBREW_DIRPATH/apps/programming.zsh"
source "$HOMEBREW_DIRPATH/apps/system.zsh"
source "$HOMEBREW_DIRPATH/apps/uni.zsh"
source "$HOMEBREW_DIRPATH/apps/utils.zsh"

# Install Homebrew Fonts
source "$HOMEBREW_DIRPATH/fonts.zsh"

# Remove outdated versions of installed formulae
brew cleanup
