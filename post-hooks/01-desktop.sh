#!/usr/bin/env bash

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
fish -c "agnoster powerline"
