#!/usr/bin/env zsh

# Set up directory structure with the following directories in the home directory:
# - Documents: Files not synced with iCloud (present by default)
# - iCloud: Symbolic Link to iCloud Drive Folder, i.e. the *source* files live in iCloud
# - Backup: Copy of `iCloud` folder to have a local backup of the iCloud files

# Navigate to the home directory
cd "$HOME"

# creates new `iCloud` folder automatically
ln -s "$HOME/Library/Mobile Documents/com~apple~CloudDocs" iCloud

mkdir -p Backup
