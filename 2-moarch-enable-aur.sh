#!/usr/bin/env bash

# |  \/  |/ _ \( ) ___|   / _ \/ ___|
# | |\/| | | | |/\___ \  | | | \___ \
# | |  | | |_| |  ___) | | |_| |___) |
# |_|  |_|\___/  |____/   \___/|____/

echo
echo "INSTALLING AUR"
echo
git clone https://aur.archlinux.org/paru.git ~/paru
cd ~/paru
makepkg -si
paru

echo
echo "Done!"
echo
