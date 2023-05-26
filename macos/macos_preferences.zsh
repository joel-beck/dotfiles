#!/usr/bin/env zsh

# inspired by https://github.com/mathiasbynens/dotfiles/blob/main/.macos
# a selected list of common (but often outdated) settings with explanations is available
# at https://macos-defaults.com

# SECTION: Setup
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
# This runs in the background and regularly renews the sudo timestamp to prevent it from expiring
while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
done 2>/dev/null &

# SECTION: Dock
# Set Dock position to the bottom of the screen
defaults write com.apple.dock "orientation" -string "bottom" && killall Dock
# Set Dock icon size to 54
defaults write com.apple.dock "tilesize" -int "54" && killall Dock
# Enable Dock autohide feature
defaults write com.apple.dock "autohide" -bool "true" && killall Dock
# Remove Dock show/hide animation
defaults write com.apple.dock "autohide-time-modifier" -float "0" && killall Dock
# Remove Dock show/hide delay
defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock
# Don't show recent applications in Dock
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
# Set Dock minimization effect to scale (as opposed to genie)
defaults write com.apple.dock "mineffect" -string "scale" && killall Dock

# SECTION: Finder
# Enable Finder Quit command
defaults write com.apple.finder "QuitMenuItem" -bool "true" && killall Finder
# Show all file extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder
# Show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder
# Show the path bar at the bottom of Finder windows
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder
# Set default Finder view to Column view
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" && killall Finder
# Search the current folder by default in Finder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" && killall Finder
# Automatically remove items from the Trash after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true" && killall Finder
# Disable warning when changing a file extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder
# Set the default Finder column view width to 'Auto'
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2" && killall Finder

# SECTION: Desktop
# Disable the creation of .DS_Store files on network or USB volumes
defaults write com.apple.finder "CreateDesktop" -bool "false" && killall Finder
# Show internal hard drives on the desktop
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "true" && killall Finder
# Show external hard drives on the desktop
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "true" && killall Finder
# Show removable media (like CDs or DVDs) on the desktop
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true" && killall Finder
# Show servers (network volumes) on the desktop
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true" && killall Finder

# SECTION: Time Machine
# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"

# SECTION: Clean up
# Kill a list of apps for the changes to take effect
for app in "Activity Monitor" \
    "Address Book" \
    "Calendar" \
    "cfprefsd" \
    "Contacts" \
    "Dock" \
    "Finder" \
    "Google Chrome Canary" \
    "Google Chrome" \
    "Mail" \
    "Messages" \
    "Opera" \
    "Photos" \
    "Safari" \
    "SizeUp" \
    "Spectacle" \
    "SystemUIServer" \
    "Terminal" \
    "Transmission" \
    "Tweetbot" \
    "Twitter" \
    "iCal"; do
    killall "${app}" &>/dev/null
done

echo "Done. Note that some of these changes require a logout/restart to take effect."
