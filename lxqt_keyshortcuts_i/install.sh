#!/bin/bash

mv ~/.config/lxqt/globalkeyshortcuts.config ~/.config/lxqt/globalkeyshortcuts.conf.backup
ln -s $INSTALL_DATA_DIR/lxqt/globalkeyshortcuts.conf ~/.config/lxqt/globalkeyshortcuts.conf
