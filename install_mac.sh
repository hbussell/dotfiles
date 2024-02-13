#!/bin/bash
echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Enable xcode"
xcode-select --install

brew update
brew upgrade
brew install --cask iterm2
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install --cask  homebrew/cask-fonts/font-caskaydia-cove-nerd-font
#brew install starship
brew install fzf
brew install htop
brew install stow
$(brew --prefix)/opt/fzf/install

sudo apt-get install fonts-powerline

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


read  -n 1 -p "Open iterm2 and set font to caskaydia?:" fontinput


echo "Download Java Corretto..."
curl https://corretto.aws/downloads/latest/amazon-corretto-8-x64-macos-jdk.pkg -o amazon-corretto-8-x64-macos-jdk.pkg

#read  -n 1 -p "Run amazon-corretto-8-x64-macos-jdk.pkg?:" javainput
sudo installer -pkg amazon-corretto-8-x64-macos-jdk.pkg -target /

echo "Installing AWS CLI v2"
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
echo "Checking AWS version"
aws --version


npm install -g aws-azure-login

brew install kubectl
echo "Checking kubectl version"
kubectl version --client
