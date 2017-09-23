#!/bin/bash
# Install tilda if it is not installed
command -v tilda >/dev/null 2>&1 || { echo >&2 "I require tilda but its not installed. Installing."; sudo apt-get install tilda;}

mkdir -p ~/.config/tilda/

# Link .vimrc file in this directory to the home directory
ln -s $INSTALL_DATA_DIR/tilda/config_0 ~/.config/tilda/config_0
