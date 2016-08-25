cd

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Fish
brew install fish

sudo echo /usr/local/bin/fish >> /etc/shells
chsh -s /usr/local/bin/fish

# Add Subl Command
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Setup dev dir
mkdir ~/dev
cd dev

# Download config files
git clone https://github.com/Kdoherty11/config-files.git

# Make android out files in ~/dev
mkdir android-out
mkdir android-out/screenshots
mkdir android-out/demos

cd ~/Documents
touch todo
touch pinned-info

mkdir ~/Desktop/screenshots

# Make screenshots go to the screenshots directory
defaults write com.apple.screencapture location ~/Desktop/screenshots

killall SystemUIServer

cd

echo "set up complete!"






