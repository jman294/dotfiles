#!/bin/bash
if [ -e ~/.Xresources ]; then
  echo "You already have a .Xresources in ~/, renaming it to .Xresources.before\n"
  mv ~/.Xresources ~/.Xresources.before
fi

# Install urxvt if it is not installed
command -v urxvt-unicode-256colors >/dev/null 2>&1 || { echo >&2 "I require urxvt-unicode-256colors but its not installed. Installing."; sudo apt-get install urxvt-unicode-256colors;}

# Link .Xresources
ln -s $INSTALL_DATA_DIR/urxvt/.Xresources ~/.Xresources

xrdb ~/.Xresources
