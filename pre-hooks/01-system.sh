#!/usr/bin/env bash

FILE="/etc/pacman.conf"
if _uncallable yaourt; then
    _msg "Adding yaort repositories"
    sudo sh -c "echo '' >> $FILE"
    sudo sh -c "echo '' >> $FILE"
    sudo sh -c "echo '[archlinuxfr]' >> $FILE"
    sudo sh -c "echo 'SigLevel = Never' >> $FILE"
    sudo sh -c "echo 'Server = http://repo.archlinux.fr/\$arch' >> $FILE"
fi
