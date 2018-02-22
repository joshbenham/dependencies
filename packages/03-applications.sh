#!/usr/bin/env bash

packages=(

# System
termite
fish
rofi

# Development
python

# Editors
vim

)

sudo pacman -Sy --noconfirm ${packages[@]}
