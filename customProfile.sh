#!/usr/bin/env bash

#Add configs
cp config/* ~/.config/ -r

if [ -z "$1" ]; then
  echo "Starting up visudo with this script as first parameter"
  export EDITOR=$0 && sudo -E visudo
else
  echo "Changing sudoers"
  echo "$USER ALL=(ALL) NOPASSWD: /usr/bin/xbacklight" >> $1
fi

chmod +x customProfile2.sh
sudo ./customProfile2.sh