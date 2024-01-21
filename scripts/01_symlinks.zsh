#!/usr/bin/env zsh

set -uxo pipefail

# Create symlinks within file system:
# - iCloud: Symbolic Link to iCloud Drive Folder, i.e. the *source* files live in iCloud
# - Dotfiles

# creates new `iCloud` folder automatically
ln -s "$HOME/Library/Mobile Documents/com~apple~CloudDocs" "$HOME/iCloud"

# run dotbot install script for dotfiles
"$HOME/dotfiles/install"
