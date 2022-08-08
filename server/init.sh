#! /bin/sh

if [ ! -d "/tmp/check" ]; then
  # prepare
  mkdir -p /app/steam
  cd /app/steam
  # install steam
  wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
  tar xvzf steamcmd_linux.tar.gz
  ./steamcmd.sh +quit
  # install rust
  ./steamcmd.sh +runscript ../update_script.txt
  # post init
  chmod +x startrust.sh
  mkdir /tmp/check
fi
./startrust.sh
