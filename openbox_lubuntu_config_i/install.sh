#!/bin/bash

mv ~/.config/openbox/lubuntu-rc.xml ~/.config/openbox/lubuntu-rc.xml.backup
ln -s $INSTALL_DATA_DIR/openbox_lubuntu_conif/lubuntu-rc.xml ~/.config/openbox/lubuntu-rc.xml
