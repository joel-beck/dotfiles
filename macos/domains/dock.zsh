#!/usr/bin/env zsh

# Remove Dock show/hide delay
defaults write com.apple.dock "autohide-delay" -float 0

# Enable Dock autohide feature
defaults write com.apple.dock "autohide" -bool "true"

# Remove Dock show/hide animation
defaults write com.apple.dock "autohide-time-modifier" -float 0

# Group windows by application in Mission Control
defaults write com.apple.dock "expose-group-apps" -int 1

# Increase size of the application icons in the Dock
defaults write com.apple.dock "largesize" -int 63

# Disable Dock bounce on application launch
defaults write com.apple.dock "launchanim" -bool false

# Enable the feature to minimize windows into the application icon
defaults write com.apple.dock "minimize-to-application" -bool true

# Set Dock minimization effect to scale (as opposed to genie)
defaults write com.apple.dock "mineffect" -string "scale"

# Set Dock position to the bottom of the screen
defaults write com.apple.dock "orientation" -string "bottom"

# Hide non-active applications in the Dock
defaults write com.apple.dock "showhidden" -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock "show-process-indicators" -bool true

# Disable recent applications in the Dock
defaults write com.apple.dock "show-recents" -bool false

# Disable the gesture for showing the desktop
defaults write com.apple.dock "showDesktopGestureEnabled" -bool false

# Disable the gesture for showing Launchpad
defaults write com.apple.dock "showLaunchpadGestureEnabled" -bool false

# Disable the gesture for showing Mission Control
defaults write com.apple.dock "showMissionControlGestureEnabled" -bool false

# Set Dock icon size to 54
defaults write com.apple.dock "tilesize" -int 54

# Display a Trash icon when the Trash is full
defaults write com.apple.dock "trash-full" -bool true
