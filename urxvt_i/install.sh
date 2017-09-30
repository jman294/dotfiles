#!/bin/bash
if [ -e ~/.Xresources ]; then
  echo "You already have a .Xresources in ~/, renaming it to .Xresources.before\n"
  mv ~/.Xresources ~/.Xresources.before
fi

# Install urxvt if it is not installed
#TODO

# Link .vimrc file in this directory to the home directory
ln -s $INSTALL_DATA_DIR/urxvt/.Xresources ~/.Xresources

xrdb ~/.Xresources
