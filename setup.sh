#!/usr/bin/env bash

git clone https://github.com/tomasr/molokai.git ~/temp
mkdir ~/.vim/colors
mv ~/temp/colors/molokai.vim ~/.vim/colors/molokai.vim
sudo rm -rd ~/temp

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall
cp tmux.conf ~/.tmux.conf
