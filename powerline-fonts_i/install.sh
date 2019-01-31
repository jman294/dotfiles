#!/bin/bash
mkdir $INSTALL_DATA_DIR/powerline-fonts/
cd $INSTALL_DATA_DIR/powerline-fonts/
git clone https://github.com/powerline/fonts/
cd fonts
./install.sh
