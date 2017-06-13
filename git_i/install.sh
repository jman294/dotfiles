#!/bin/bash
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but its not installed. Installing."; sudo apt-get install git;}
ln -s $DOT_FILE_DIRECTORY/git/.gitconfig ~/.gitconfig
