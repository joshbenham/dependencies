#!/usr/bin/env bash

packages=(

xorg
xorg-server

)

sudo pacman -Sy --noconfirm ${packages[@]}
