#!/usr/bin/env bash

packages=(

# Desktop
polybar


# Fonts
ttf-ms-fonts
ttf-monaco
ttf-qurancomplex-fonts
nerd-fonts-complete


# Tools
python-pywal

)

yaourt -Sy --noconfirm --needed ${packages[@]}
