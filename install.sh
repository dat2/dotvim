#!/bin/sh

# install neovim
brew install neovim

# install vim plug (for nvim)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# setup nvim
mkdir -p ~/.config/nvim
CWD=`pwd`
cd ~/.config/nvim
ln -s $CWD/init.vim init.vim
cd -

# ctags
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
echo "Remember to update the fonts on your terminal (eg. set Hack Nerd Font)"
