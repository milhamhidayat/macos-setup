# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Hello $(whoami)! Let's get you set up."

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install cask"
brew tap caskroom/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-drivers

echo "Install xcode-select --install"
xcode-select --install

echo "Install node"
brew install node
echo "node --version: $(node --version)"
echo "npm --version: $(npm --version)"

echo "Install python3"
brew install python3

echo "Install go - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/go"
brew install go

echo "Install tree"
brew install tree

echo "Install wget"
brew install wget

echo "Install curl"
brew install curl

echo "Install yarn"
brew install yarn

echo "Install zsh"
brew install zsh

echo "Install oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Install git"
brew install git

echo "set git email and username"
git config --global user.name "Your Name Here"
git config --global user.email "your_email@youremail.com"

echo "set git color output"
git config --global color.ui auto

echo "custom git log"
git config --global format.pretty format:"%C(auto)%h %d%Creset %s%n%Cgreen%ad%Creset %aN <%aE>%n"

echo "Install dep"
brew install dep

echo "Install redis"
brew install redis

echo "Install mongodb - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/mongo-db"
brew install mongodb

echo "Install postgres - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/postgres-db"
brew install postgres

echo "Install mariadb - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/maria-db"
brew install mariadb

echo "Install chrome"
brew cask install google-chrome

echo "Install chrome canary"
brew cask install homebrew/cask-versions/google-chrome-canary

echo "Install firefox"
brew cask install firefox

echo "Install firefox developer"
brew cask install homebrew/cask-versions/firefox-developer-edition

echo "Install brave"
brew cask install brave

echo "Install postman"
brew cask install postman

echo "Install flux"
brew cask install flux

echo "Install franz"
brew cask install franz

echo "Install hyperswitch"
brew cask install hyperswitch

echo "Install alfred"
brew cask install alfred

echo "Install iterm2 - NEED MORE SETUP. CHECK https://my-setup.gitbook.io/project/iterm"
brew cask install iterm2

echo "Install docker"
brew cask install docker

echo "Install vscode"
brew cask install visual-studio-code

echo "Install vscode insider"
brew cask install homebrew/cask-versions/visual-studio-code-insiders

echo "Install open in code"
brew cask install open-in-code

echo "Install vlc"
brew cask install vlc

echo "Install vox"
brew cask install vox

echo "Install sequel pro"
brew cask install sequel-pro

echo "Install kap"
brew cask install kap

echo "Install slack"
brew cask install slack

echo "Install spark"
brew cask install spark

echo "Install notion"
brew cask install notion

echo "Install robo 3t"
brew cask install robo-3t

echo "Install logitech options"
brew cask install homebrew/cask-drivers/logitech-options

echo "Install dropbox"
brew cask install dropbox

echo "Finish install all app, check doc to complete these app setup : \n
1. go \n
2. postgres \n
3. maria db \n
4. mongodb \n
5. open in code \n
6. vscode \n
7. vscode insider \n
8. iterm2 \n"
