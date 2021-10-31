#!/usr/bin/env bash

# |  \/  |/ _ \|  \/  | ____| \ | ( ) ___|   / _ \/ ___|
# | |\/| | | | | |\/| |  _| |  \| |/\___ \  | | | \___ \
# | |  | | |_| | |  | | |___| |\  |  ___) | | |_| |___) |
# |_|  |_|\___/|_|  |_|_____|_| \_| |____/   \___/|____/

echo
echo "INSTALLING DESKTOP"
echo

sudo pacman -S lightdm xorg-server lightdm-gtk-greeter deepin
sudo systemctl enable lightdm

echo 
echo "Done!"
echo





echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
    'bash-completion'       # Tab completion for Bash
    'bc'                    # Precision calculator language
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'elinks'                # Terminal based web browser
    'feh'                   # Terminal-based image viewer/manipulator
    'ark'                   # Archive utility
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'inxi'                  # System information utility
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'neofetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    'rsync'                 # Remote file sync utility
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'tlp'                   # Advanced laptop power management
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'konsole'               # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'autofs'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility
    'catfish'               # Filesystem search
    'conky'                 # System information viewer
    'pcmanfm'               # Filesystem browser
    'xfburn'                # CD burning application
    'atom'                  # Text editor
    'codeblocks'            # Text editor
    'notepadqq'             # Text editor
    'blender'               # 3D Designing
    'audacity'              # Sound editor
    'darktable'             # image editor (like adobe's lightsroom)
    'discord'               # for chatting
    'vlc'                   # for multimedia
    'youtube-dl'            # for downloading yt videos
    'jre-openjdk'           # java runtime
    'jdk-openjdk'           # java dev environment
    'gnome-software'        # appstore
    'gnome-software-packagekit-plugin' # gnome software plugin
    'steam'                 # for games
    'qbittorrent'           # for torrenting
    'vim'                   # Text editor
    'apache'                # Apache web server
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'mariadb'               # Drop-in replacement for MySQL
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'php'                   # Web application scripting language
    'php-apache'            # Apache PHP driver
    'postfix'               # SMTP mail server
    'python'                # Scripting language
    'qtcreator'             # C++ cross platform IDE
    'qt5-examples'          # Project demos for Qt
    'yarn'                  # Dependency management (Hyper needs this)
    'vivaldi'               # Web browser
    'vivaldi-ffmpeg-codecs' # Vivaldi additional codecs
    'filezilla'             # FTP Client
    'hexchat'               # Multi format chat
    'irssi'                 # Terminal based IIRC
    'lollypop'              # Music player
    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player
    'xfce4-screenshooter'   # Screen capture.
    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'inkscape'              # Vector image creation app
    'imagemagick'           # Command line image manipulation tool
    'nomacs'                # Image viewer
    'pngcrush'              # Tools for optimizing PNG images
    'ristretto'             # Multi image viewer
    'galculator'            # Gnome calculator
    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'libreoffice-fresh'     # Libre office with extra features
    'xpdf'                  # PDF viewer
    'virtualbox'            # For virtual machines
    'virtualbox-host-modules-arch' # Virtualbox modules
    'base-devel'            # For compiling and building apps
    'obs-studio'            # A screen recorder and broadcasting software
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo


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


echo
echo "INSTALLING AUR"
echo
git clone https://aur.archlinux.org/paru.git ~/ && cd paru
makepkg -si
paru

echo
echo "Done!"
echo


echo "INSTALLING AUR PACKAGES"
echo

for AURPKG in "${AURPKGS[@]}"; do
  echo "INSTALLING: ${AURPKG}"
  paru -S "${AURPKG}"
done
