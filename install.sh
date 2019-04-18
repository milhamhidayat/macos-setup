# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Mac OS Setting
./setup.sh

# Homebrew installer
./down.sh

sudo cp -R operator-mono/. /Library/Fonts

./post-setup.sh

echo "Finish install all app, complete these app setup : \n
1. vscode \n
2. vscode insider \n
3. iterm2 \n
4. Cobalt2 iterm2 & zsh \n
5. ZSH auto suggestion, auto complete & syntax highlighting \n
6. setapp \n
7. mac app store \n
8. open incode & insider \n
9. MS office \n
10. Navicat \n
11. Whichspace \n
12. Crossover + IDM \n
14. Mission control \n
15. keyboard shortcut for alfred & space \n
16. paragon ntfs \n
17. Postman Canary \n
18. Open terminal in finder"


echo "PLEASE RESTART"