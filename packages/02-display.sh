#!/usr/bin/env bash

packages=(

sddm
i3-gaps
i3lock
i3status
i3blocks
network-manager-applet

)

sudo pacman -Sy --noconfirm ${packages[@]}
