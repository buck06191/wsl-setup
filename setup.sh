#!/bin/bash

# install zsh and oh-my-zsh
echo "1/5 Installing zsh and oh-my-zsh\n"
sudo apt-get -y install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Get theme
echo "2/5 Installing powerlevel10k\n"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
( cd && curl -fsSLO https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.purepower )

# Install plugins
echo "3/5 Installing plugins\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# move the repo .zshrc into HOME
echo "4/5 Copying over zshrc file"
cp ./.zshrc ~/.zshrc

# Apparently this speeds up pasting into the terminal...
echo "5/5 Speeding up pasting into terminal"
mkdir -p $ZSH_CUSTOM/lib && touch $ZSH_CUSTOM/lib/misc.zsh

source ~/.zshrc