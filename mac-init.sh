#!/bin/zsh

echo "Installing commandline tools..."
xcode-select --install

echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae

brew install gh starship zsh-autosuggestions zsh-syntax-highlighting bottom lsd fzf zoxide tmux zotero
brew install --cask skim latest miniconda raycast joplin font-caskaydia-cove-nerd-font

# macOS Settings
# echo "Changing macOS defaults..."
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
# defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# defaults write com.apple.spaces spans-displays -bool false
# defaults write com.apple.dock autohide -bool true
# defaults write com.apple.dock "mru-spaces" -bool "false"
# defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
# defaults write com.apple.LaunchServices LSQuarantine -bool false
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# defaults write NSGlobalDomain KeyRepeat -int 1
# defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# defaults write NSGlobalDomain _HIHideMenuBar -bool true
# defaults write NSGlobalDomain AppleAccentColor -int 1
# defaults write com.apple.screencapture location -string "$HOME/Desktop"
# defaults write com.apple.screencapture disable-shadow -bool true
# defaults write com.apple.screencapture type -string "png"
# defaults write com.apple.finder DisableAllAnimations -bool true
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
# defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
# defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
# defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
# defaults write com.apple.Finder AppleShowAllFiles -bool true
# defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# defaults write com.apple.finder ShowStatusBar -bool false
# defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool YES
# defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
# defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
# defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

echo "Link Configuration Files..."
mkdir -p $HOME/.config
./mac-install-dotfiles.sh
source $HOME/.zshrc

echo "Installation complete..."