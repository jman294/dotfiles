for row in $(cat $INSTALL_DATA_DIR/dotfiles/map.json | jq -r '.home.files[]'); do
  echo -n "Link $row (y/n)? "
  read answer

  if [ "$answer" != "${answer#[Yy]}" ] ;then
    mkdir -p ~/$(dirname ${row#*/})

    if [ -e ~/${row#*/} ]; then
      echo "exists"
      mv ~/${row#*/} ~/${row#*/}.before.$(date +%Y-%m-%d.%H:%M:%S)
    fi

    ln -s $INSTALL_DATA_DIR/${row} ~/${row#*/}
  fi
done
for row in $(cat $INSTALL_DATA_DIR/dotfiles/map.json | jq -r '.".config".files[]'); do
  echo -n "Link $row (y/n)? "
  read answer

  if [ "$answer" != "${answer#[Yy]}" ] ;then
    mkdir -p ~/.config/$(dirname ${row})

    if [ -e ~/.config/${row} ]; then
      echo "exists"
      mv ~/.config/${row} ~/.config/${row}.before.$(date +%Y-%m-%d.%H:%M:%S)
    fi

    ln -s $INSTALL_DATA_DIR/${row} ~/.config/${row}
  fi
done
