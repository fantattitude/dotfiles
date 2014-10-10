# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "🍺  Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "🍺  Installing brew binaries..."

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Install several other binaries
binaries=(
  rbenv
  pyenv
  trash
  node
  tree
  git
  hub
  reattach-to-user-namespace
  autojump
)

brew install ${binaries[@]}

# Nettoyage !
brew cleanup

brew install caskroom/cask/brew-cask

echo "📱  Installing apps..."

# Apps
apps=(
  alfred
  google-chrome
  qlcolorcode
  slack
  appcleaner
  firefox
  qlmarkdown
  vagrant
  flash
  iterm2
  qlprettypatch
  sublime-text3
  virtualbox
  qlstephen
  vlc
  quicklook-json
  skype
  transmission
)

# Needed for Sublime Text 3
brew tap caskroom/versions

# Install apps to /Applications
# Default is: /Users/$user/Applications
brew cask install --appdir="/Applications" ${apps[@]}
brew cask alfred link

brew tap caskroom/fonts

echo "✏️  Installing fonts..."

# Fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
  font-input
)

# Install fonts
brew cask install ${fonts[@]}


# MACkUP !

brew install mackup
