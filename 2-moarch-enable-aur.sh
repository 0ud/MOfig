#!/usr/bin/env bash

# |  \/  |/ _ \( ) ___|   / _ \/ ___|
# | |\/| | | | |/\___ \  | | | \___ \
# | |  | | |_| |  ___) | | |_| |___) |
# |_|  |_|\___/  |____/   \___/|____/
echo
echo "INSTALLING NECESSERY PACKAGES"
echo

pacman -S --needed base-devel 

echo
echo "DONE"
echo




echo
echo "INSTALLING AUR"
echo
git clone https://aur.archlinux.org/paru.git /tmp/paru
cd /tmp/paru
makepkg -si
paru

echo
echo "Done!"
echo
