#!/usr/bin/env bash

packages=(

fish
dmenu
rofi
termite
vim

)

sudo pacman -Sy ${packages[@]}
