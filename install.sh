#!/bin/bash
RED='\e[1;31m'
REDn='\e[0m'
echo -e "${RED}######################${REDn}"
echo -e "${RED}          STEP 1      ${RED}"
echo -e "${RED}######################${REDn}"
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

echo -e "${RED}######################${REDn}"
sudo sh -c 'echo "[chaotic-aur]" >> /etc/pacman.conf'
sudo sh -c 'echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf'
echo -e "${RED}########### DONE !! ###########${REDn}"