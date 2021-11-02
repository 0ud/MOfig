#!/usr/bin/env bash

# |  \/  |/ _ \( ) ___|   / _ \/ ___|
# | |\/| | | | |/\___ \  | | | \___ \
# | |  | | |_| |  ___) | | |_| |___) |
# |_|  |_|\___/  |____/   \___/|____/

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(
    'bash-completion'       # Tab completion for Bash
    'bc'                    # Precision calculator language
    'dolphin'                    # Precision calculator language
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
    'kdenlive'              # A great video editing software, competes with Adobe Premiere
    'openshot'              # Another video editor known for it's simplicity
    'lutris'                # For emulating windows games on linux
    'rust'                  # Rust programming language
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo