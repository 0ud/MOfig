#!/usr/bin/env bash

# |  \/  |/ _ \|  \/  | ____| \ | ( ) ___|   / _ \/ ___|
# | |\/| | | | | |\/| |  _| |  \| |/\___ \  | | | \___ \
# | |  | | |_| | |  | | |___| |\  |  ___) | | |_| |___) |
# |_|  |_|\___/|_|  |_|_____|_| \_| |____/   \___/|____/

echo
echo "INSTALLING AUR"
echo
git clone https://aur.archlinux.org/paru.git ~/ && cd paru
makepkg -si
paru

echo
echo "Done!"
echo
