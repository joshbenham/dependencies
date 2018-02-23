#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Building
yaourt
fakeroot


# System
xorg
xorg-server


# Desktop
sddm
i3-gaps
i3lock
i3status
i3blocks
network-manager-applet
ttf-dejavu
termite
fish
rofi


# Development
python


# Editors
vim

)

sudo pacman -Sy --noconfirm --needed ${packages[@]}
