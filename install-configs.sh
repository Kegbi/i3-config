#!/bin/bash

user=$1

if [ -z "$user" ]; then
  echo "[-] You should specify the user in the script parameter!"
  echo "Basic script syntax: ./install.sh username"
  exit
fi

if [ ! -d "/home/$user/" ]; then
  echo "[-] Please, specify the right user in the script parameter!"
  echo "Basic script syntax: ./install.sh username"
  exit
fi

echo "[+] Installing configs..."

cp -rf ./~/.config/ /home/$user/
cp -rf ./~/.i3/ /home/$user/
cp -rf ./~/VSCodium/ /home/$user/
cp -f ./~/.dmenurc /home/$user/
cp -f ./~/.Xresources /home/$user/

cp -f ./images/1277916.jpg /usr/share/backgrounds/

cp -f ./etc/i3status.conf /etc/

cp -rf ./usr/share/ /usr/

cp -f ./bin/start_conky_blue /bin/

chown -R $user /home/$user/ 

echo "[+] Configs installed. Please, reload your i3 seesion (Super+Shift+r by default) and chose right theme in lxappearance, qt5ct and lightdm-settings"