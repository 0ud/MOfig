#!/usr/bin/env bash

# |  \/  |/ _ \( ) ___|   / _ \/ ___|
# | |\/| | | | |/\___ \  | | | \___ \
# | |  | | |_| |  ___) | | |_| |___) |
# |_|  |_|\___/  |____/   \___/|____/


echo
echo "INSTALLING XORG"
echo


sudo pacman -S xorg-server xorg-apps xorg-xinit xf86-video-intel xf86-video-amdgpu mesa --noconfirm --needed


echo
echo "Done!"
echo


echo
echo "INSTALLING DESKTOP"
echo

sudo pacman -S python python-pip sddm plasma kde-system-meta kde-accessibility-meta kde-games-meta --noconfirm --needed
sudo systemctl enable sddm


echo 
echo "Done!"
echo


echo
echo "INSTALLING AND APPLYING THEMES"
echo

sudo pip install konsave
konsave -i mofig.knsv
konsave -a mofig

echo
echo "Done!"
echo
