#!/usr/bin/env zsh

# Create symlinks within file system:
# - iCloud: Symbolic Link to iCloud Drive Folder, i.e. the *source* files live in iCloud

# creates new `iCloud` folder automatically
ln -s "$HOME/Library/Mobile Documents/com~apple~CloudDocs" iCloud
