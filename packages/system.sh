#!/usr/bin/env bash

packages=(

# System
xorg
xorg-server
sddm

# Display
i3-gaps
i3lock
i3status
i3blocks
dmenu

# Applications
vim
)

sudo pacman -Sy ${packages[@]}
