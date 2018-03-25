#!/bin/sh

# install vim plug (for nvim)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# setup swap dir for vimrc
mkdir -p ~/.vim/swapdir

# setup prettier for neoformatter
npm install -g prettier
