#!/usr/bin/env bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv vimrc ~/.vimrc
vim +PluginInstall +qall
mv tmux.conf ~/.tmux.conf
