#!/bin/bash
# echo "alias home='cd ~'" >> ~/.bashrc
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt install -y neovim
sudo apt install -y net-tools
sudo apt install -y neofetch
sudo apt install -y git
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y unzip
mkdir -p $HOME/.config/nvim
cp -r ./nvim $HOME/.config
mkdir -p $HOME/.vim
cd $HOME/.vim

git clone https://github.com/junegunn/vim-plug.git
cp vim-plug/plug.vim .
rm -rf ./vim-plug


