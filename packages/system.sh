#!/usr/bin/env bash

packages=(

# Display Manager
xorg
xorg-server
i3-gaps

# Applications
vim
)

sudo pacman -Sy ${packages[@]}
