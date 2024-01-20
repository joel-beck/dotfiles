# Enable animation for information panes
defaults write com.apple.finder AnimateInfoPanes -bool false

# Enable animation for window zoom
defaults write com.apple.finder AnimateWindowZoom -bool false

# Set the add number to option for bulk rename
defaults write com.apple.finder BulkRenameAddNumberTo -int 0

# Set the add text to option for bulk rename
defaults write com.apple.finder BulkRenameAddTextTo -int 0

# Set the add text text for bulk rename
defaults write com.apple.finder BulkRenameAddTextText -string ""

# Set the find text for bulk rename
defaults write com.apple.finder BulkRenameFindText -string " 2"

# Set the last formatter for bulk rename
defaults write com.apple.finder BulkLastFormatter -int 0

# Set the name for bulk rename
defaults write com.apple.finder BulkRenameName -string "File "

# Set the place number at option for bulk rename
defaults write com.apple.finder BulkRenamePlaceNumberAt -int 0

# Set the replace text for bulk rename
defaults write com.apple.finder BulkRenameReplaceText -string ""

# Set the start index for bulk rename
defaults write com.apple.finder BulkRenameStartIndex -int 1

# Disable the creation of .DS_Store files on network or USB volumes
defaults write com.apple.finder CreateDesktop -bool false

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Expand the information in preview pane
defaults write com.apple.finder PreviewPaneInfoExpanded -bool true

# Set the width of the gallery view in preview pane
defaults write com.apple.finder PreviewPaneGalleryWidth -int 250

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set Documents as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Documents/"

# Set the last selected section in Finder preferences window
defaults write com.apple.finder PreferencesWindow.LastSelection -string "GNRL"

# Set the arrangement of group view in Recents to Date Last Opened
defaults write com.apple.finder RecentsArrangeGroupViewBy -string "Date Last Opened"

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show recent tags
defaults write com.apple.finder ShowRecentTags -bool true

# Show sidebar
defaults write com.apple.finder ShowSidebar -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Set disclosed state of devices section in sidebar
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -int 1

# Set disclosed state of iCloud drive section in sidebar
defaults write com.apple.finder SidebariCloudDriveSectionDisclosedState -int 1

# Show iCloud desktop in sidebar
defaults write com.apple.finder SidebarShowingiCloudDesktop -bool false

# Show iCloud signed in status in sidebar
defaults write com.apple.finder SidebarShowingSignedIntoiCloud -bool true

# Set sidebar width
defaults write com.apple.finder SidebarWidth -int 223

# Set disclosed state of places section in sidebar
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -int 1

# Set disclosed state of tags section in sidebar
defaults write com.apple.finder SidebarTagsSctionDisclosedState -int 0

# Enable spawning of tabs in Finder
defaults write com.apple.finder FinderSpawnTab -bool true

# Open window for new removable disk
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
