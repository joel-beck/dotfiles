#!/usr/bin/env zsh

# Do not play a sound when connecting to the charger
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true

# Disable screen flashing for alert sounds
defaults write com.apple.sound.beep.flash -bool false

# Set the alert sound to "Tink"
defaults write com.apple.sound.beep.sound -string "/System/Library/Sounds/Tink.aiff"

# Set the volume of the alert sound
defaults write com.apple.sound.beep.volume -float 0.4936882

# Enable audio for User Interface (UI) actions
defaults write com.apple.sound.uiaudio.enabled -bool true
