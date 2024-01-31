#!/bin/sh

if [ "$(uname)" != "Darwin" ]; then
  echo "Not macOS!"
  exit 1
fi

# Finder --------------------------------------------------

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -int 1
# Enable Quit Finder
defaults write com.apple.finder "QuitMenuItem" -int 1

# Display -------------------------------------------------

# TODO: More Space Display, but not working
# defaults write "com.apple.Terminal" "NSWindow Frame TTWindow Pro" -string "0 12 1690 1057 0 0 1710 1069"

# Control Center ------------------------------------------

defaults write "com.apple.controlcenter" "NSStatusItem Visible MusicRecognition" -int 0
defaults write "com.apple.controlcenter" "NSStatusItem Visible Hearing" -int 0

# Dock ----------------------------------------------------

# Position on screen
defaults write com.apple.dock orientation right
defaults write com.apple.dock autohide -bool True
# Size
defaults write com.apple.dock tilesize -int 45
# Animation
defaults write com.apple.dock launchanim -int 0
# Magnification
defaults write com.apple.dock largesize -int 16
killall Dock

# Keyboard ------------------------------------------------

# Key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
# Delay until repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# For vim extension in VSCode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Mouse ---------------------------------------------------

defaults write "Apple Global Domain" "com.apple.mouse.scaling" -int 3

# Trackpad ------------------------------------------------

# Tracking speed
defaults write "Apple Global Domain" "com.apple.trackpad.scaling" -int 3
# Scroll speed
defaults write "Apple Global Domain" "com.apple.trackpad.scrolling" -int 1
# Natural scrolling
defaults write "Apple Global Domain" "com.apple.swipescrolldirection" -int 0
# Click weight
defaults write "com.apple.AppleMultitouchTrackpad" "FirstClickThreshold" -int 0
defaults write "com.apple.AppleMultitouchTrackpad" "SecondClickThreshold" -int 0
# Use trackpad for dragging (Tree Finger Drag)
defaults write "com.apple.AppleMultitouchTrackpad" "TrackpadThreeFingerDrag" -int 1
# Tap to click
defualts write "com.apple.AppleMultitouchTrackpad" "Clicking" -int 1

# Shortcuts -----------------------------------------------

# Use function keys as standard function keys
defaults write "Apple Global Domain" "com.apple.keyboard.fnState" -int 1
