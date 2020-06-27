#!/bin/bash

user=$1

if [ -z "$user" ]; then
  echo "[-] You should specify the user in the script parameter!"
  echo "Basic script syntax: ./full-install.sh username"
  exit
fi

if [ ! -d "/home/$user/" ]; then
  echo "[-] Please, specify the right user in the script parameter!"
  echo "Basic script syntax: ./full-install.sh username"
  exit
fi

echo "[+] Installing base tools..."
cd scripts
sudo chmod +x base-tools.sh
./base-tools.sh
echo "[+] Base tools installed"

echo "[+] Installing apps..."
sudo chmod +x programs.sh
sudo ./programs.sh
echo "[+] Apps installed."

echo "[+] Installing pulseaudio..."
sudo chmod +x install-pulse.sh
./install-pulse.sh
echo "[+] Pulseaudio installed"

echo "[+] Enabling services..."
sudo chmod +x services.sh $user
sudo ./services.sh
cd ..
echo "[+] Services enabled"

chsh -s /bin/fish

sudo chmod +x install-configs.sh
sudo ./install-configs.sh $user

echo "[+] All set, happy hacking!"