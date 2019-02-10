#!/bin/sh

BREW_EXISTS="$(command -v brew)"
APT_EXISTS="$(command -v apt)"
SNAP_EXISTS="$(command -v snap)"

# install neovim
if [ -x $BREW_EXISTS ]; then
    brew install neovim
elif [ -x $APT_EXISTS ]; then
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt update
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
if [ -x $BREW_EXISTS ]; then
  brew install --HEAD universal-ctags/universal-ctags/universal-ctags
elif [ -x $SNAP_EXISTS ]; then
  sudo snap install universal-ctags
fi

# fonts
mkdir -p ~/.fonts
git clone https://github.com/ryanoasis/nerd-fonts ~/.fonts/nerd-fonts
cd ~/.fonts/nerd-fonts
./install.sh
cd -
echo "Remember to update the fonts on your terminal (eg. set Hack Nerd Font)"

# language servers
pip3 install python-language-server
