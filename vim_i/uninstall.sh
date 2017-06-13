#!/bin/bash
rm ~/.fonts/PowerlineSymbols.*
rm ~/.config/fontconfig/conf.d/10-powerline-symbols.*
[ -s ~/.vimrc ] && rm ~/.vimrc
[ -d ~/.vim/bundle ] && rm -rf ~/.vim/bundle/
