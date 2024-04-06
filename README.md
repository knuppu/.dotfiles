These are .dotfiles for Lucas Knupp personal.

### Useful things to set up arch
## adding parallel downloads to pacman
```bash
sudo vim /etc/pacman.conf
```
There will be to options in `Misc options section`: `Color` and `ParallelDownloads`. Just unmark those and done.

## how to install pkgfile for auto complete on bash
```bash
sudo pacman -Syu pkgfile
```
```bash
sudo pkgfile -u
```
## install a bunch of things
```bash
sudo pacman -Syu neovim git blueman vlc qbittorrent neofetch sl neovim volumeicon j4-dmenu-desktop picom gnome-screenshot gnome-terminal man ranger pavucontrol arandr autorandr nitrogen steam
```
then change the `.bashrc` file to inclue: `export TERMINAL=/usr/bin/gnome-terminal`
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
### Maybe useful things?
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
