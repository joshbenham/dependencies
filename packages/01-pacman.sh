#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Building
yaourt
fakeroot
wget


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
termite
rofi
neofetch


# Development
python


# Editors
vim

)

sudo pacman -Sy --noconfirm --needed ${packages[@]}
