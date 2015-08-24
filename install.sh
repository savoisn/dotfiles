rm -Rf ~/.vim

mkdir -p ~/.vim/vimrc
cp -R vimrc ~/.vim

git clone https://github.com/tpope/vim-pathogen.git  ~/.vim/pathogen

mkdir -p ~/.vim/autoload/

ln -s ~/.vim/pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script/

ln -s ~/.vim/vimrc/vimrc ~/.vimrc
ln -s tmux/tmux-session ~/tmux-session

