#!/bin/bash

while [[ ! "${action-}" =~ ^[Nn]$ ]]
do
  echo "[?] Do you really want to delete all configs from this folder?"
  read -n 1 -p $'[Y]es, [N]o: \n' action

  if [[ "${action-}" =~ ^[Yy]$ ]]
  then
    echo "[+] Deleting configs from this folder..."
    rm -rf ../~/
    rm -rf ../bin/
    rm -rf ../etc/
    rm -rf ../usr/
    echo "[+] Configs deleted."
    break
  fi
done