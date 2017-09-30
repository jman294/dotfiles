#!/bin/bash
if [ -e ~/.Xmodmap ]; then
  echo "You already have a .Xmodmap in ~/, renaming it to .Xmodmap.before\n"
  mv ~/.Xmodmap ~/.Xmodmap.before
fi

# Link .Xmodmap file in this directory to the home directory
ln -s $INSTALL_DATA_DIR/xmodmap/.Xmodmap ~/.Xmodmap

if [ -e ~/.xinitrc ]; then
  echo "You already have a .xinitrc in ~/, renaming it to .xinitrc.before\n"
  mv ~/.xinitrc ~/.xinitrc.before
fi

# Link .Xinitrc file in this directory to the home directory
ln -s $INSTALL_DATA_DIR/xmodmap/.xinitrc ~/.xinitrc

xmodmap ~/.Xmodmap
