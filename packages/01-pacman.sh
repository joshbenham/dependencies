#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Building
yaourt
fakeroot
wget


# Desktop
i3-gaps
network-manager-applet
ttf-dejavu
termite
rofi


# Development
python


# Editors
vim

)

sudo pacman -Sy --noconfirm --needed ${packages[@]}
