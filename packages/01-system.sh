#!/usr/bin/env bash

sudo pacman -Syu --noconfirm


packages=(

yaourt
xorg
xorg-server

)

sudo pacman -Sy --noconfirm ${packages[@]}
