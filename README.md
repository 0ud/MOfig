# MOfig
My ArchLinux desktop config in seprate bash scripts, original script was published in ArchMatic repository. I basically made my own "version" of it.

**IMPORTANT: WILL REWRITE IN A BETTER WAY AND CROSS-SYSTEM**

## Info
Base: Arch Linux

Desktop: KDE

Themes: Comes with preinstalled gtk and icon themes such as adapta, numix, breeze, etc.

## Software
 The script installs LibreOffice for the office suite, Joplin note-taking app, IDE's for programmers of most programming languages as well as development environments such as JDK, nodeJS, etc. The script also installs software for image and video editing.

## Gaming
The script also installs steam, heroic launcher, lutris, and other libraries and applications for gamers.

It also installs OBS-Studio for streamers and installs simple screen recorder for basic screen recording.

## Installation
You just need to have a minimal arch linux installation (if you install it using ArchInstall you choose minimal/xorg profile), then type the following commands:

1- To install the KDE desktop with the essential xorg server, run:
```bash
sh ./1-moarch-desktop.sh
```
2- To install the main repository applications, run:
```bash
sh ./2-moarch-applications.sh
```
note: you can use **sudo** as well when installing the desktop and applications

3- To enable the AUR and install paru AUR helper, run:
```bash
sh ./3-moarch-enable-aur.sh
```
note: **DON'T** use sudo when enabling the AUR, just run it as it is

4- To install the additional AUR applications, run:
```bash
sh ./4-moarch-aur-apps.sh
```

## Known issues

sometimes after installing the desktop, system boots up to a normal Terminal interface, to fix this just run:

```bash
sudo systemctl enable sddm
```

## Contribution
You can fork the project, edit on it, and report any issue that happens in it.
