#!/bin/bash

echo "[+] Installing base tools..."

sudo pacman -Syu --noconfirm linux-headers

git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri --noconfirm
cd ..
rm -rf pikaur

echo "[+] Base tools installed"