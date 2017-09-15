#!/bin/bash
if [ -e ~/.inputrc ]; then
  echo "You already have a .inputrc in ~/, renaming it to .inputrc.before\n"
  mv ~/.inputrc ~/.inputrc.before
fi

# Link .vimrc file in this directory to the home directory
ln -s $INSTALL_DATA_DIR/inputrc/.inputrc ~/.inputrc
