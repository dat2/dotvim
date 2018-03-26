#!/bin/sh

# install vim plug (for nvim)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# setup prettier for neoformatter
npm install -g prettier

# setup nvim
mkdir -p ~/.config/nvim
CWD=`pwd`
cd ~/.config/nvim
ln -s $CWD/init.vim init.vim
cd -
