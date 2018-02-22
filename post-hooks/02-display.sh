#!/usr/bin/env bash

FILENAME="/etc/systemd/system/display-manager.service"
if [[ ! -e "$FILENAME" ]]; then
    _msg "Setting up SDDM"
    sudo ln -sf /usr/lib/systemd/system/sddm.service "$FILENAME"
fi


FILENAME="$HOME/.config/fish/functions/fisher.fish"
if [[ ! -e "$FILENAME" ]]; then
    _msg "Installing Fisher"
    curl -Lo "$FILENAME" --create-dirs https://git.io/fisher
fi


_msg "Changing default shell to FISH"
chsh -s $(which fish)


_msg "Installing Fisher Packages"
fish -c "fisher install fzf"
fish -c "fisher install edc/bass"
fish -c "fisher install hauleth/agnoster"
fish -c "fisher up"
