#!/bin/bash

# install zsh and oh-my-zsh
sudo apt-get -y install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Get theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
( cd && curl -fsSLO https://raw.githubusercontent.com/romkatv/dotfiles-public/master/.purepower )

# Install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# move the repo .zshrc into HOME
mv ./.zshrc ~/.zshrc

# Apparently this speeds up pasting into the terminal...
mkdir -p $ZSH_CUSTOM/lib && touch $ZSH_CUSTOM/lib/misc.zsh

source ~/.zshrc