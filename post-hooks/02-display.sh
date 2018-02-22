#!/usr/bin/env bash

FILENAME="/etc/systemd/system/display-manager.service"
if [[ ! -e "$FILENAME" ]]; then
    _msg "Setting up SDDM"
    sudo ln -sf /usr/lib/systemd/system/sddm.service "$FILENAME"
fi


_msg "Changing default shell to FISH"
chsh -s $(which fish)

FILENAME="$HOME/.config/fish/functions/fisher.fish"
if [[ ! -e "$FILENAME" ]]; then
    _msg "Installing Fisher"
    curl -Lo $FILENAME --create-dirs https://git.io/fisher
    source $FILENAME
fi


_msg "Installing Fisher Packages"
fisher install fzf
fisher install edc/bass
fisher install hauleth/agnoster
fisher up
