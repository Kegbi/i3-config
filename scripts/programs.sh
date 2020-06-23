#!/bin/bash

cd ./apps/

chmod +x install-aur-apps.sh
chmod +x install-pacman-apps.sh

./install-aur-apps.sh
./install-pacman-apps.sh

cd ..