#!/bin/bash

function cloneOrUpdate () {
  URL="/$1"
  BUNDLE_FOLDER=$2
  clone_folder_name=$3
  if [ -z $clone_folder_name ]
  then
    clone_folder_name="$2/${URL##/*/}"
    echo $clone_folder_name
  else
    clone_folder_name="$2/$3"
  fi

  if [ -d $clone_folder_name/.git ]
  then
#    cd $clone_folder_name
    echo $PWD
    git -C $clone_folder_name pull
  else
    git clone $1 $clone_folder_name
  fi

}

BUNDLE_PATH=~/.vim/bundle


ONLY_LINKS="false"
while getopts ":o" opt; do
  case $opt in
    o)
      ONLY_LINKS="true" 
      echo "hum o"
      ;;
  esac
done



#PLUGINS
mkdir -p ~/.vim/

if [[ $ONLY_LINKS == "false" ]]
then
  mkdir -p ~/.vim/autoload/
  mkdir -p ~/.vim/bundle/
  cloneOrUpdate https://github.com/tpope/vim-pathogen.git ~/.vim pathogen
  ln -fs ~/.vim/pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim
  cloneOrUpdate https://github.com/scrooloose/nerdtree.git $BUNDLE_PATH nerdtree
  cloneOrUpdate https://github.com/kchmck/vim-coffee-script.git $BUNDLE_PATH vim-coffee-script
  cloneOrUpdate git://github.com/digitaltoad/vim-jade.git $BUNDLE_PATH vim-jade
  cloneOrUpdate https://github.com/genoma/vim-less.git $BUNDLE_PATH vim-less
  cloneOrUpdate https://github.com/Shougo/neocomplete.vim.git $BUNDLE_PATH neocomplete.vim
  cloneOrUpdate https://github.com/szw/vim-ctrlspace.git $BUNDLE_PATH vim-ctrlspace
  cloneOrUpdate https://github.com/rking/ag.vim $BUNDLE_PATH ag
  cloneOrUpdate https://github.com/plasticboy/vim-markdown.git $BUNDLE_PATH vim-markdown
  
fi

#vimrc
rm -Rf ~/.vim/vimrc
ln -fs $PWD/vim ~/.vim/vimrc

#colors
rm -Rf ~/.vim/colors
ln -fs $PWD/vim/colors ~/.vim/colors

ln -fs ~/.vim/vimrc/vimrc ~/.vimrc
ln -fs $PWD/tmux/tmux-session ~/tmux-session
ln -fs $PWD/tmux/tmux.conf ~/.tmux.conf

