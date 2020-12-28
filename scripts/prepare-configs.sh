#!/bin/bash

user=$1

if [ -z "$user" ]; then
  echo "[-] You should specify the user in the script parameter!"
  echo "Basic script syntax: ./prepare-configs.sh username"
  exit
fi

if [ ! -d "/home/$user/" ]; then
  echo "[-] Please, specify the right user in the script parameter!"
  echo "Basic script syntax: ./prepare-configs.sh username"
  exit
fi

echo "[+] Preparing configs..."

# Creating folders
mkdir ../bin/
mkdir ../etc/
mkdir ../usr/
mkdir ../usr/share/
mkdir ../usr/share/conky/
mkdir ../usr/share/icons/
mkdir ../usr/share/rofi/
mkdir ../usr/share/rofi/themes/
mkdir ../usr/share/themes/
mkdir ../~/
mkdir ../~/.config/
mkdir ../~/.config/gtk-3.0/
mkdir ../~/.i3/
mkdir ../~/VSCodium/
mkdir ../~/VSCodium/User

# User folder
cp -f /home/$user/.dmenurc ../~/
cp -f /home/$user/.profile ../~/
cp -f /home/$user/.Xresources ../~/

# User/.config folder

cp -f /home/$user/.config/gtk-3.0/gtk.css ../~/.config/gtk-3.0/
cp -f /home/$user/.config/gtk-3.0/settings.ini ../~/.config/gtk-3.0/

cp -rf /home/$user/.config/gxkb/ ../~/.config/

cp -rf /home/$user/.config/kitty/ ../~/.config/

cp -rf /home/$user/.config/morc_menu/ ../~/.config/

cp -rf /home/$user/.config/nitrogen/ ../~/.config/

cp -rf /home/$user/.config/qt5ct/ ../~/.config/

cp -rf /home/$user/.config/rofi/ ../~/.config/

cp -rf /home/$user/.config/vlc/ ../~/.config/

cp -f /home/$user/.config/compton.conf ../~/.config/

cp -f /home/$user/.config/mimeapps.list ../~/.config/

cp -f /home/$user/.config/redshift.conf ../~/.config/

# User/.i3 folder
cp -rf /home/$user/.i3/ ../~/.i3/

# User/VSCodium folder
cp -f /home/$user/VSCodium/User/keybindings.json ../~/VSCodium/User/


# bin folder
cp -f /bin/start_conky_blue ../bin/


# etc folder
cp -f /etc/i3status.conf ../etc/


# usr/share folder

# conky folder
cp -f /usr/share/conky/conky_blue ../usr/share/conky/
cp -f /usr/share/conky/conky_shortcuts_live_blue ../usr/share/conky/

# icons/Tela-blue folder
cp -rf /usr/share/icons/Tela-blue/ ../usr/share/icons/

# rofi/themes
cp -f /usr/share/rofi/themes/dmenu-style.rasi ../usr/share/rofi/themes/

# themes/Layan-dark-solid
cp -rf /usr/share/themes/Layan-dark-solid/ ../usr/share/themes/


echo "[+] Configs prepared."