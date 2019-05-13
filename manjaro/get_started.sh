#!/bin/bash

sudo pacman -S base-devel
sudo pacman -S pacaur
pacaur -S google-chrome
sudo pacman -S neofetch
pacaur -S nvm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
exec $SHELL
nvm --version
nvm install node
nvm use node
npm install -g yarn
echo 'export PATH=$PATH:~/.yarn/bin' >> ~/.bashrc
sudo pacman -S yay
sudo pacman -S unzip
sudo pacman -S zip

# Install SDKMAN!
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
# SDK setups
sdk install java
sdk install gradle

# Information
echo "On Manjaro, set default browser in ~/.profile"
