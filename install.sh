#!/bin/bash
echo "//////////////////////"
echo "////// step 1 ////////"
echo "//////////////////////"
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo "//////////////////////////////////////////////"
sudo sh -c 'echo "[chaotic-aur]" >> /etc/pacman.conf'
sudo sh -c 'echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf'
