#!/bin/sh

BREW_EXISTS=[ -x "$(command -v brew)" ]
APT_EXISTS=[ -x "$(command -v apt)" ]
SNAP_EXISTS=[ -x "$(command -v snap)" ]

# install neovim
if $BREW_EXISTS; then
  brew install neovim
elif $APT_EXISTS; then
  sudo apt install neovim -y
fi

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
if $BREW_EXISTS; then
  brew install --HEAD universal-ctags/universal-ctags/universal-ctags
elif $SNAP_EXISTS; then
  sudo snap install universal-ctags
fi

# fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
echo "Remember to update the fonts on your terminal (eg. set Hack Nerd Font)"

# language servers
pip install python-language-server
