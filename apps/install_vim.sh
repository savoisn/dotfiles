#!/bin/zsh

sudo apt-get install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
ruby-dev git liblua5.1-dev luajit libluajit-5.1

sudo apt-get remove -y vim vim-runtime gvim
sudo apt-get remove -y vim-tiny vim-common vim-gui-common
sudo apt-get remove -y vim-nox

sudo mkdir /usr/include/lua5.1/include
sudo ln -s /usr/include/luajit-2.0 /usr/include/lua5.1/include


sudo apt-get install -y checkinstall
 
mkdir -p ~/tmp
cd ~/tmp
sudo rm -Rf vim
git clone https://github.com/vim/vim.git
cd vim
make distclean
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr

make VIMRUNTIMEDIR=/usr/share/vim/vim74

#checkinstall is used to install vim, 
# remove it with dpkg -r vim
sudo checkinstall
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim



