# MOfig
My ArchLinux desktop config in seprate bash scripts, original script was published in ArchMatic repository. I basically made my own "version" of it.


## Info
Base: Arch Linux (universal edition soon)

Desktop: KDE

Themes: Comes with preinstalled gtk and icon themes such as adapta, numix, breeze, etc.

## Software
 The script installs LibreOffice for the office suite, Joplin note-taking app, IDE's for programmers of most programming languages as well as development environments such as JDK, nodeJS, etc. The script also installs software for image and video editing.

## Gaming
The script also installs steam, heroic launcher, lutris, and other libraries and applications for gamers.

It also installs OBS-Studio for streamers and installs simple screen recorder for basic screen recording.

## Contribution
You can fork the project, edit on it, and report any issue that happens in it.

## Known issues

sometimes after installing the desktop, system boots up to a normal Terminal interface, to fix this just run:

```bash
sudo systemctl enable sddm
```