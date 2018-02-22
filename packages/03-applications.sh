#!/usr/bin/env bash

packages=(

fish
rofi
termite
vim

)

sudo pacman -Sy --noconfirm ${packages[@]}
