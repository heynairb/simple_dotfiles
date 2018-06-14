#!/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc ~/.vimrc
vim +PlugInstall +qall
~/.vim/plugged/YouCompleteMe/install.py --all
cp tmux.conf ~/.tmux.conf
cp tmux-airline.conf ~/.tmux-airline.conf
cp bash_profile ~/.bash_profile


git clone https://github.com/tomasr/molokai.git ~/temp
mkdir ~/.vim/colors
mv ~/temp/colors/molokai.vim ~/.vim/colors/molokai.vim


git clone git@github.com:powerline/fonts.git ~/temp/fonts
~/temp/fonts/install.sh

git clone git@github.com:sgolovine/PlexNerdfont.git ~/temp/plexfonts
cp -r ~/temp/plexfonts/patched/ttf/ ~/Library/Fonts

#sudo rm -rd ~/temp


