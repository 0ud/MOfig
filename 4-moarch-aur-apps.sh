#!/usr/bin/env bash

# |  \/  |/ _ \( ) ___|   / _ \/ ___|
# | |\/| | | | |/\___ \  | | | \___ \
# | |  | | |_| |  ___) | | |_| |___) |
# |_|  |_|\___/  |____/   \___/|____/

AURPKGS=(
  'dracula-gtk-theme'     # A wonderful GTK theme
  'joplin-beta'           # A note taking app
  'vscodium-bin'          # Text editor
  'brave-bin'             # Web browser
  'etcher-bin'            # Flash ISO to USB and SD
  'heroic-games-launcher-bin' # A game launcher alternative to EG launcher
  'paper-icon-theme'      # A good icon theme
  'adapta-gtk-theme-git'  # Another GTK theme
  'numix-icon-theme-git'  # Another icon theme
  'intellij-idea-ce'      # A great JAVA IDE
  'tlauncher-bin'         # Minecraft
)


echo "INSTALLING AUR PACKAGES"
echo

for AURPKG in "${AURPKGS[@]}"; do
  echo "INSTALLING: ${AURPKG}"
  paru -S "${AURPKG}" --noconfirm
done

echo
echo "Done"
echo