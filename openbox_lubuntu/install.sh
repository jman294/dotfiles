#!/bin/bash

mv ~/.config/openbox/lubuntu-rc.xml ~/.config/openbox/lubuntu-rc.xml.backup
mv ~/.config/openbox/lxqt-rc.xml ~/.config/openbox/lxqt-rc.xml.backup
ln -s $INSTALL_DATA_DIR/openbox_lubuntu_config/lubuntu-rc.xml ~/.config/openbox/lubuntu-rc.xml
ln -s $INSTALL_DATA_DIR/openbox_lubuntu_config/lxqt-rc.xml ~/.config/openbox/lxqt-rc.xml
