#!/usr/bin/env bash

# |  \/  |/ _ \( ) ___|   / _ \/ ___|
# | |\/| | | | |/\___ \  | | | \___ \
# | |  | | |_| |  ___) | | |_| |___) |
# |_|  |_|\___/  |____/   \___/|____/


echo
echo "INSTALLING XORG"
echo

XPKGS=(
        'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'xf86-video-intel'      # 2D/3D video driver
        'mesa'                  # Open source version of OpenGL
        'xf86-input-libinput'   # Trackpad driver for Dell XPS
)

for XPKG in "${XPKGS[@]}"; do
    echo "INSTALLING: ${XPKG}"
    sudo pacman -S "$XPKG" --noconfirm --needed
done

echo
echo "Done!"
echo


echo
echo "INSTALLING DESKTOP"
echo

sudo pacman -S lightdm lightdm-gtk-greeter plasma kde-system-meta kde-accessibility-meta kde-games-meta --noconfirm --needed
sudo systemctl enable lightdm

echo 
echo "Done!"
echo