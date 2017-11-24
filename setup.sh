#!/usr/bin/env bash

git clone https://github.com/tomasr/molokai.git ~/temp
mkdir ~/.vim/colors
mv ~/temp/colors/molokai.vim ~/.vim/colors/molokai.vim
sudo rm -rd ~/temp

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc ~/.vimrc
vim +PlugInstall +qall
cp tmux.conf ~/.tmux.conf
