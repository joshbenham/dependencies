#!/usr/bin/env bash

et -x VISUAL 'vim'


packages=(

# Fonts
ttf-ms-fonts
ttf-vista-fonts
ttf-monaco
ttf-qurancomplex-fonts
nerd-fonts-complete


# Tools
python-pywal

)

yaourt -Sy --noconfirm --needed ${packages[@]}
