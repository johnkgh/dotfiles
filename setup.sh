#!/bin/bash

chsh -s /bin/bash

# Disable accents pop-up and enable key repeats
defaults write -g ApplePressAndHoldEnabled -bool false
# No animations for new windows
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# Gray out hidden icons in dock
defaults write com.apple.dock showhidden -bool true
# No delay for showing dock during mouse hover
defaults write com.apple.dock autohide-delay -float 0
# No animation for showing/hiding dock
defaults write com.apple.dock autohide-time-modifier -float 0
# Change where screenshots are saved
defaults write com.apple.screencapture location ~/Downloads/
# To add option to disable developer searches in Spotlight
touch /Applications/Xcode.app

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install \
    bash \
    vim \
    git \
    fzf \
    jq \
    python3 \
    node \
    openjdk \
    kotlin \
    groovy \
    gradle \
    go
