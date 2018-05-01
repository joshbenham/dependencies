#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Fonts
nerd-fonts-complete
ttf-iosevka

)

yaourt -Sy --noconfirm --needed ${packages[@]}
