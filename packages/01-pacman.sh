#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Building
yaourt
fakeroot
wget
binutils


# Fonts
ttf-bitstream-vera
ttf-inconsolata
ttf-ubuntu-font-family
ttf-dejavu
ttf-freefont
ttf-linux-libertine
ttf-liberation


# Desktop
i3-gaps
network-manager-applet
rxvt-unicode
termite
thunar
rofi
fzf
neofetch
feh


# Browsers
chromium


# Development
python


# Editors
vim
neovim

)

sudo pacman -Sy --noconfirm --needed ${packages[@]}
