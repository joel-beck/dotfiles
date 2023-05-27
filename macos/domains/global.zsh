# Set action on double click to Maximize
defaults write NSGlobalDomain "AppleActionOnDoubleClick" -string "Maximize"

# Set the anti-aliasing threshold to "4"
defaults write NSGlobalDomain "AppleAntiAliasingThreshold" -int 4

# Enable swipe navigate with scrolls
defaults write NSGlobalDomain "AppleEnableSwipeNavigateWithScrolls" -int 1

# Set interface style to Dark
defaults write NSGlobalDomain "AppleInterfaceStyle" -string "Dark"

# Set the keyboard UI mode to "2"
defaults write NSGlobalDomain "AppleKeyboardUIMode" -int 2

# Set measurement units to Centimeters
defaults write NSGlobalDomain "AppleMeasurementUnits" -string "Centimeters"

# Set the menu bar visible in fullscreen
defaults write NSGlobalDomain "AppleMenuBarVisibleInFullscreen" -int 1

# Set metric units
defaults write NSGlobalDomain "AppleMetricUnits" -int 1

# Disable minimization on double click
defaults write NSGlobalDomain "AppleMiniaturizeOnDoubleClick" -int 0

# Set scroller paging behavior
defaults write NSGlobalDomain "AppleScrollerPagingBehavior" -int 1

# Enable showing all extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true

# Show scroll bars only when scrolling
defaults write NSGlobalDomain "AppleShowScrollBars" -string "WhenScrolling"

# Set temperature unit to Celsius
defaults write NSGlobalDomain "AppleTemperatureUnit" -string "Celsius"

# Set window tabbing mode to fullscreen
defaults write NSGlobalDomain "AppleWindowTabbingMode" -string "fullscreen"

# Set the last IDMS environment to "0"
defaults write NSGlobalDomain "AKLastIDMSEnvironment" -int 0

# Set the last locale to English (Germany)
defaults write NSGlobalDomain "AKLastLocale" -string "en_DE"

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Enable context menu gesture
defaults write NSGlobalDomain "ContextMenuGesture" -int 1

# Set initial key repeat speed
defaults write NSGlobalDomain "InitialKeyRepeat" -int 15

# Set double quote option
defaults write NSGlobalDomain "KB_DoubleQuoteOption" -string "\\"abc\\""

# Set single quote option
defaults write NSGlobalDomain "KB_SingleQuoteOption" -string "'abc'"

# Set key repeat speed
defaults write NSGlobalDomain "KeyRepeat" -int 2

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain "NSAutomaticCapitalizationEnabled" -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain "NSAutomaticDashSubstitutionEnabled" -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain "NSAutomaticPeriodSubstitutionEnabled" -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain "NSAutomaticQuoteSubstitutionEnabled" -bool false

# Disable auto-correct
defaults write NSGlobalDomain "NSAutomaticSpellingCorrectionEnabled" -bool false

# Enable automatic text completion
defaults write NSGlobalDomain "NSAutomaticTextCompletionEnabled" -bool true

# Set the last list mode for open and save modes
defaults write NSGlobalDomain "NSNavPanelFileLastListModeForOpenModeKey" -int 1
defaults write NSGlobalDomain "NSNavPanelFileLastListModeForSaveModeKey" -int 1

# Set file list mode for open and save modes (version 2)
defaults write NSGlobalDomain "NSNavPanelFileListModeForOpenMode2" -int 1
defaults write NSGlobalDomain "NSNavPanelFileListModeForSaveMode2" -int 1

# Set default display name order
defaults write NSGlobalDomain "NSPersonNameDefaultDisplayNameOrder" -int 2

# Set preferred web services
defaults write NSGlobalDomain "NSPreferredWebServices" -dict-add "NSWebServicesProviderWebSearch" -dict "NSDefaultDisplayName" "Google" "NSProviderIdentifier" "com.google.www"

# Set quit always keeps windows
defaults write NSGlobalDomain "NSQuitAlwaysKeepsWindows" -bool "false"

# Set default size mode for table view
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int 2

# Set file list mode for open and save modes
defaults write NSGlobalDomain "NavPanelFileListModeForOpenMode" -int 1
defaults write NSGlobalDomain "NavPanelFileListModeForSaveMode" -int 1

# Disable automatic spelling correction for web
defaults write NSGlobalDomain "WebAutomaticSpellingCorrectionEnabled" -bool "false"

# Set hide menu bar
defaults write NSGlobalDomain "_HIHideMenuBar" -bool "false"
