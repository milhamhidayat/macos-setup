# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Hello $(whoami)! Let's get you set up."

echo "======================================"
echo "Installing homebrew"
echo "======================================"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "======================================"
echo "Install xcode-select --install"
xcode-select --install
echo "======================================"

echo "======================================"
echo "Install cask"
echo "======================================"
brew tap caskroom/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-drivers

echo "======================================"
echo "Install node"
echo "======================================"
brew install node
echo "node --version: $(node --version)"
echo "npm --version: $(npm --version)"

echo "======================================"
echo "Install python3"
echo "======================================"
brew install python3


echo "======================================"
echo "Install go - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/go"
echo "======================================"
brew install go

echo "======================================"
echo "Install tree"
echo "======================================"
brew install tree

echo "======================================"
echo "Install wget"
echo "======================================"
brew install wget

echo "======================================"
echo "Install curl"
echo "======================================"
brew install curl

echo "======================================"
echo "Install yarn"
echo "======================================"
brew install yarn

echo "======================================"
echo "Install zsh"
echo "======================================"
brew install zsh

echo "======================================"
echo "Install ruby - NEED MORE SETUP"
echo "======================================"
brew install rbenv ruby-build

echo "======================================"
echo "Install git"
echo "======================================"
brew install git

echo "======================================"
echo "set git email and name"
echo "What is your git name?"
read gitname
echo "What is your git email?"
read gitemail
echo "======================================"
git config --global user.name "$gitname"
git config --global user.email "$gitemail"

echo "======================================"
echo "set git color output"
echo "======================================"
git config --global color.ui auto

echo "======================================"
echo "custom git log"
echo "======================================"
git config --global format.pretty format:"%C(auto)%h %d%Creset %s%n%Cgreen%ad%Creset %aN <%aE>%n"

echo "======================================"
echo "set vscode as default git editor"
echo "======================================"
git config --global core.editor "code --wait"

echo "======================================"
echo "Install dep"
echo "======================================"
brew install dep

echo "======================================"
echo "Install redis"
echo "======================================"
brew install redis

echo "======================================"
echo "Install mongodb - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/mongo-db"
echo "======================================"
brew install mongodb

echo "======================================"
echo "Install postgres - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/postgres-db"
echo "======================================"
brew install postgres

echo "======================================"
echo "Install mariadb - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/maria-db"
echo "======================================"
brew install mariadb

echo "======================================"
echo "Install chrome"
echo "======================================"
brew cask install google-chrome

echo "======================================"
echo "Install chrome canary"
echo "======================================"
brew cask install homebrew/cask-versions/google-chrome-canary

echo "======================================"
echo "Install brave"
echo "======================================"
brew cask install brave-browser

echo "======================================"
echo "Install brave dev"
echo "======================================"
brew cask install brave-browser-dev

echo "======================================"
echo "Install postman"
echo "======================================"
brew cask install postman

echo "======================================"
echo "Install flux"
echo "======================================"
brew cask install flux

echo "======================================"
echo "Install franz"
echo "======================================"
brew cask install franz

echo "======================================"
echo "Install hyperswitch"
echo "======================================"
brew cask install hyperswitch

echo "======================================"
echo "Install alfred"
echo "======================================"
brew cask install alfred

echo "======================================"
echo "Install iterm2 - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/iterm"
echo "======================================"
brew cask install iterm2

echo "======================================"
echo "Install docker"
echo "======================================"
brew cask install docker

echo "======================================"
echo "Install kitematic"
echo "======================================"
brew cask install kitematic

echo "======================================"
echo "Install vscode"
echo "======================================"
brew cask install visual-studio-code

echo "======================================"
echo "Install vscode insider"
echo "======================================"
brew cask install homebrew/cask-versions/visual-studio-code-insiders

echo "======================================"
echo "Install vlc"
echo "======================================"
brew cask install vlc

echo "======================================"
echo "Install vox"
echo "======================================"
brew cask install vox

echo "======================================"
echo "Install sequel pro"
echo "======================================"
brew cask install sequel-pro

echo "======================================"
echo "Install table plus"
echo "======================================"
brew cask install tableplus

echo "======================================"
echo "Install slack"
echo "======================================"
brew cask install slack

echo "======================================"
echo "Install notion"
echo "======================================"
brew cask install notion

echo "======================================"
echo "Install robo 3t"
echo "======================================"
brew cask install robo-3t

echo "======================================"
echo "Install logitech options"
echo "======================================"
brew cask install homebrew/cask-drivers/logitech-options

echo "======================================"
echo "Install dropbox"
echo "======================================"
brew cask install dropbox

echo "======================================"
echo "Install oh my zsh"
echo "Install last, because it will need your confirmation to change terminal shell"
echo "======================================"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Finish install all app, check doc to complete these app setup : \n
1. go \n
3. ruby \n
2. postgres \n
3. maria db \n
4. mongodb \n
5. vscode \n
6. vscode insider \n
7. iterm2 \n"

echo "PLEASE RESTART"
