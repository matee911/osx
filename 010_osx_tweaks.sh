# Inspired by https://github.com/mathiasbynens/dotfiles/blob/master/.osx

#
# Tune Dock
#

# Move dock to left side
defaults write com.apple.dock orientation -string left
# And to top
defaults write com.apple.dock pinning -string start

# Turn on autohide
defaults write com.apple.dock autohide -boolean yes

# Tune display
defaults write com.apple.dock hide-mirror -bool true

# Display only active application in the Mac OS X Dock
#defaults write com.apple.dock static-only -bool yes

# Show icons from hidden application translucent in OS X Dock    
defaults write com.apple.dock showhidden -bool true

# Show single-app only
# defaults write com.apple.dock single-app -bool true

# Disable dashboard
defaults write com.apple.dashboard mcx-disabled -boolean true

# Set the icon size of Dock items to 24 pixels
defaults write com.apple.dock tilesize -int 24

killall Dock

#
# Tune Finder
#

# Show full POSIX path in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Show file extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show the ~/Library folder
#chflags nohidden ~/Library

killall Finder

#
# Dialog boxes
#

# Mac OS X has dialog boxes that are displayed as an animated panel (named sheets) 
# that emerges from the window's title bar. 
# The most popular sheet would be the 'Save As'-box. 
# It is possible to speed up the 'sheet' animation in the native Mac (Cocoa) applications. Restart is needed.
# .2 = default; .001 = instant
defaults write NSGlobalDomain NSWindowResizeTime .1

# Store screenshots in custom location
mkdir -p ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots

killall SystemUIServer

# If you access a network share on Windows desktops or server, 
# your Mac leaves .DS_store files wherever you browse. 
# These Mac OS X system files contain data about the directory and are hidden for Mac users. 
# You can deactivate the Writing of .DS_store Files on Networks shares, 
# so your Windows friends will stop complaining. Reboot needed
defaults write com.apple.desktopservices DSDontWriteNetworkStores TRUE

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#
# SSD Tweaks
#

# After a Macbook is upgraded to an SSD, the sudden motion sensor remains enabled. This disables the sensor.
sudo pmset -a sms 0

#
# Hardening
#

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false


#
# Hot corners
#

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Bottom left
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-bl-modifier -int 0
