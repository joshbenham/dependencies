#!/usr/bin/env bash

FOLDER="$HOME/.config/base16-shell"
if [[ ! -e "$FOLDER" ]]; then
    _msg "Cloning base16-shell colours"
    git clone https://github.com/chriskempson/base16-shell.git "$FOLDER"
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
