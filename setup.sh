cd

echo "Starting setup"

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Fish and make it the default shell
brew install fish
sudo echo /usr/local/bin/fish >> /etc/shells
chsh -s /usr/local/bin/fish

# Add Subl Command
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Setup dev dir
mkdir dev
cd dev

# Download config files
git clone https://github.com/Kdoherty11/config-files.git
git config -f ~/dev/config-files/.git/config --add core.worktree $HOME
git config -f ~/dev/config-files/.git/config --add core.excludesFile ~/dev/config-files/.gitignore

#cp ~/dev/config-files/.gitignore ~/.gitignore

# Adds document files
cd ~/Documents
touch todo
touch how-to

# Make screenshots go to the screenshots directory
mkdir ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots
killall SystemUIServer

cd

echo "Setup completed successfully!"
