#!/bin/bash

while getopts ":o" opt; do
  case $opt in
    o)
      echo "hum o"
      ;;
    \?)
      echo "default case"
  esac

done




#rm -Rf ~/.vim


#PLUGINS
mkdir ~/.vim/
rm -Rf ~/.vim/autoload
rm -Rf ~/.vim/bundle
mkdir -p ~/.vim/autoload/
mkdir -p ~/.vim/bundle/

rm -Rf ~/.vim/pathogen
git clone https://github.com/tpope/vim-pathogen.git  ~/.vim/pathogen
ln -fs ~/.vim/pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script/
git clone git://github.com/digitaltoad/vim-jade.git ~/.vim/bundle/vim-jade.git


#vimrc
rm -Rf ~/.vim/vimrc
#mkdir -p ~/.vim/vimrc
ln -fs $PWD/vim ~/.vim/vimrc
#ln -fs $PWD/vim/vimrc ~/.vim/vimrc/vimrc
#ln -fs $PWD/vim/basic.vim ~/.vim/vimrc/basic.vim
#ln -fs $PWD/vim/plugin.vim ~/.vim/vimrc/plugin.vim

#colors
rm -Rf ~/.vim/colors
ln -fs $PWD/vim/colors ~/.vim/colors

ln -fs ~/.vim/vimrc/vimrc ~/.vimrc
ln -fs $PWD/tmux/tmux-session ~/tmux-session
ln -fs $PWD/tmux/tmux.conf ~/.tmux.conf

