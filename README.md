These are .dotfiles for Lucas Knupp personal.

# Useful things to set up arch

## adding parallel downloads to pacman

```bash
sudo vim /etc/pacman.conf
```

There will be to options in `Misc options section`: `Color` and `ParallelDownloads`. Just unmark those and done.


## install a bunch of things
```bash
sudo pacman -Syu arandr autorandr gnome-terminal gnome-screenshot blueman
```
then change the `.bashrc` file to inclue: `export TERMINAL=/usr/bin/gnome-terminal`
```bash
sudo pacman -Syu neovim git ranger pavucontrol nitrogen man xclip
```

## how to install pkgfile for auto complete on bash
```bash
sudo pacman -Syu pkgfile
```
```bash
sudo pkgfile -u
```

## continue installing a bunch of things
```bash
sudo pacman -Syu volumeicon j4-dmenu-desktop 
```
```bash
sudo pacman -Syu qbittorrent vlc
```

## build yay
```bash
git clone https://aur.archlinux.org/yay.git
```
```bash
cd yay
```
```bash
makepkg -sirc
```
```bash
cd ..
```
```bash
rm -rf yay
```
## solve japanese fonts problem
```bash
sudo pacman -Syu noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-liberation
```
```bash
yay -Syu ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family
```

## dark theme support
```bash
sudo pacman -Syu lxappearance arc-gtk-theme
```

## more stuff
```bash
sudo pacman -Syu unzip p7zip
```
## pdf time
```bash
yay -Syu sumatrapdf
```
```bash
vim ~/.config/mimeapps.list
```
Then add to the default apps section:
```bash
image/pdf=sumatrapdf.desktop
```

## Gaming stuff
```bash
sudo pacman -Syu steam
```
```bash
yay -Syu heroic-games-launcher-bin
```
```bash
sudo pacman -Syu wine
```

After this, usually the wine appplication tells which extra package related to wine it wants, just install with pacman instead of asking wine to download it.

## as a backup
```bash
yay -Syu microsoft-edge-stable-bin google-chrome
```

# Maybe useful things?

## custom arandr resolution settings

```bash
cvt 1832 1010 60
```
1832x1010 59.93 Hz (CVT) hsync: 62.81 kHz; pclk: 153.25 MHz
Modeline "1832x1010_60.00"  153.25  1832 1944 2136 2440  1010 1013 1023 1048 -hsync +vsync
```bash
xrandr --newmode "1832x1010_60.00" 153.25 1832 1994 2136 2440 1010 1013 1023 1048 -hsync +vsync
```
```bash
xrandr --addmode HDMI-1 1832x1010_60.00
```
```bash
arandr
```
And then set the new resolution
