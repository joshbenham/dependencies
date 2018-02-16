#!/usr/bin/env bash

export DEPENDENCIES=~/.dependencies
set -e

_msg() { printf "\r\033[2K\033[0;32m[ dependencies ] %s\033[0m\n" "$*"; }

_uncallable() { ! command -v "$1" >/dev/null; }

_install() {
    if [[ -f /etc/arch-release ]]; then
        sudo pacman -Sy "$*"
    elif [[ -f /etc/debian_version ]]; then
        sudo apt install -y "$*"
    fi
}

if _uncallable git; then
  _msg "Installing git"
  _install git
fi

if [[ ! -d $DEPENDENCIES ]]; then
    _msg "Installing dependencies repository"
    git clone http://github.com/joshbenham/dependencies $DEPENDENCIES
    cd $DEPENDENCIES
else 
    _msg "Upgrading dependencies repository"
    cd $DEPENDENCIES
    git pull origin master
fi

for f in packages/*; do
    _msg "Installing $f packages"
    source "$f"
done

_msg
_msg "And done!"
_msg
