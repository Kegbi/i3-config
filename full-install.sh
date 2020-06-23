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
cd ..
echo "[+] Base tools installed"

echo "[+] Installing apps..."
cd ./scripts/
sudo chmod +x programs.sh
sudo ./programs.sh
cd ..
echo "[+] Apps installed."

sudo chmod +x install-configs.sh
sudo ./install-configs.sh $user

echo "[+] All set, happy hacking!"