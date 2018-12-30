#!/usr/bin/env bash
current_directory=$(pwd)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc ~/.vimrc
vim +PlugInstall +qall
echo 'running youcompleteme setup'
brew reinstall macvim 
brew unlink vim
brew link --overwrite macvim
cd ~/.vim/plugged/YouCompleteMe/; git submodule update --init --recursive
~/.vim/plugged/YouCompleteMe/install.py --all
echo 'finished youcompleteme setup'
echo 'rbenv install'
brew install rbenv

cp "${current_directory}/tmux.conf ~/.tmux.conf"
cp "${current_directory}/tmux-airline.conf ~/.tmux-airline.conf"
cp "${current_directory}/bash_profile ~/.bash_profile"


git clone https://github.com/tomasr/molokai.git ~/temp
mkdir ~/.vim/colors
mv ~/temp/colors/molokai.vim ~/.vim/colors/molokai.vim


git clone git@github.com:powerline/fonts.git ~/temp/fonts
~/temp/fonts/install.sh

git clone git@github.com:sgolovine/PlexNerdfont.git ~/temp/plexfonts
cp -r ~/temp/plexfonts/patched/ttf/ ~/Library/Fonts

sudo rm -rd ~/temp


