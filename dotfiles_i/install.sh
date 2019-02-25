for row in $(cat $INSTALL_DATA_DIR/dotfiles/map.json | jq -r '.home.files[]'); do
  mkdir -p ~/$(dirname ${row#*/})

  if [ -e ~/$(dirname ${row#*/}) ]; then
    echo "exists"
    mv ~/${row#*/} ~/${row#*/}.before.$(date +%Y-%m-%d.%H:%M:%S)
  fi

  ln -s $INSTALL_DATA_DIR/${row} ~/${row#*/}
done
for row in $(cat $INSTALL_DATA_DIR/dotfiles/map.json | jq -r '.".config".files[]'); do
  mkdir -p ~/.config/$(dirname ${row})

  if [ -e ~/$(dirname ${row#*/}) ]; then
    echo "exists"
    mv ~/${row#*/} ~/${row#*/}.before.$(date +%Y-%m-%d.%H:%M:%S)
  fi

  ln -s $INSTALL_DATA_DIR/${row} ~/.config/${row}
done
