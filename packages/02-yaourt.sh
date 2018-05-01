#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Fonts
fontconfig-infinality
nerd-fonts-complete
ttf-iosevka

)

yaourt -Sy --noconfirm --needed ${packages[@]}
