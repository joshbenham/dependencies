#!/usr/bin/env bash

FILENAME="/etc/systemd/system/display-manager.service"
if [[ ! -f "$FILENAME" ]]; then
    _msg "Setting up SDDM"
    sudo ln -sf /usr/lib/systemd/system/sddm.service "$FILENAME"
fi
