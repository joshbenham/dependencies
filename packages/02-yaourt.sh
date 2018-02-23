#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

# Desktop
nerd-fonts-complete

)

yaourt -Sy --noconfirm --needed ${packages[@]}
