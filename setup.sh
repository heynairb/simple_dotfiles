#!/usr/bin/env bash

git clone https://github.com/tomasr/molokai.git ~/.vim/colors
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall
cp tmux.conf ~/.tmux.conf
