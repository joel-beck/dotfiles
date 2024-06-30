#!/usr/bin/env zsh

set -uxo pipefail

# - inspired by https://github.com/mathiasbynens/dotfiles/blob/main/.macos
# - a selected list of common (but often outdated) settings with explanations is
#   available at https://macos-defaults.com
# - also see https://lupin3000.github.io/macOS/defaults/

# Guidelines:
# - use a separate file for each domain
# - add a comment above each setting explaining what it does
# - do not put double quotes around numeric and boolean values
# - leave a blank line between each setting
# - sort settings alphabetically by their key

export DOTFILES_DIRPATH="$HOME/dotfiles"
export MACOS_DIRPATH="$DOTFILES_DIRPATH/macos"
export DOMAINS_DIRPATH="$MACOS_DIRPATH/domains"

# must come first
source "$MACOS_DIRPATH/setup.zsh"

source "$DOMAINS_DIRPATH/desktop.zsh"
source "$DOMAINS_DIRPATH/disk-images.zsh"
source "$DOMAINS_DIRPATH/dock.zsh"
source "$DOMAINS_DIRPATH/finder.zsh"
source "$DOMAINS_DIRPATH/global.zsh"
source "$DOMAINS_DIRPATH/launch.zsh"
source "$DOMAINS_DIRPATH/sound.zsh"
source "$DOMAINS_DIRPATH/time-machine.zsh"
source "$DOMAINS_DIRPATH/trackpad.zsh"

# must come last
source "$MACOS_DIRPATH/cleanup.zsh"

# specify default application to open files by file extension
duti "$MACOS_DIRPATH/duti.config"
