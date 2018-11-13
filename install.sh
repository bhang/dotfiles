#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Add homebrew bash to /etc/shells and make it the default shell environment
echo "/usr/local/bin/bash" >> /etc/shells
chsh -s /usr/local/bin/bash

# Add stow stuff here

#

# Set macOS prefs
source .macos


