#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Fonts
ttf-ms-fonts
ttf-vista-fonts
ttf-monaco
ttf-qurancomplex-fonts
nerd-fonts-complete

)

yaourt -Sy --noconfirm --needed ${packages[@]}
