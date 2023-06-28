#!/usr/bin/env zsh

# Set up directory structure with the following directories in the home directory:
# - Documents: Files not synced with iCloud (present by default)
# - iCloud: Symbolic Link to iCloud Drive Folder, i.e. the *source* files live in iCloud
# - iCloudBackup: Copy of `iCloud` folder to have a local backup of the iCloud files
# - ownCloudBackup: Copy of `ownCloud - sdw@gwdg.de@owncloud.gwdg.de` folder to have a
#   local backup of the sdw ownCloud files

# Navigate to the home directory
cd "$HOME"

# creates new `iCloud` folder automatically
ln -s "$HOME/Library/Mobile Documents/com~apple~CloudDocs" iCloud

mkdir -p iCloudBackup

mkdir -p ownCloudBackup
