#!/usr/bin/env bash


_msg() { printf "\r\033[2K\033[0;32m[ dependencies ] %s\033[0m\n" "$*"; }

_uncallable() { ! command -v "$1" >/dev/null; }

_install() {
    if [[ -f /etc/arch-release ]]; then
        sudo pacman -Sy "$*"
    elif [[ -f /etc/debian_version ]]; then
        sudo apt install -y "$*"
    fi
}
