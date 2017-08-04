#!/bin/bash
if [ -e ~/.vimrc ]; then
  echo "You already have a .vimrc in ~/, renaming it to .vimrc.before\n"
  mv ~/.vimrc ~/.vimrc.before
fi

# Install vim if it is not installed
command -v vim >/dev/null 2>&1 || { echo >&2 "I require vim but its not installed. Installing."; sudo apt-get install vim;}

# Link .vimrc file in this directory to the home directory
ln -s $INSTALL_DATA_DIR/vim/.vimrc ~/.vimrc

# Vundle package manager for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Fonts for vim-airline
wget -P ~/.fonts/ https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget -P ~/.config/fontconfig/conf.d/ https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

# Update the font cache
fc-cache -vf ~/.fonts/

# Run vim to install plugins
vim -c PluginInstall
