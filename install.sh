#!/usr/bin/env bash
set -e


# Helper Functions
_msg() { printf "\r\033[2K\033[0;32m[ \$\$\$ ] %s\033[0m\n" "$*"; }

_uncallable() { ! command -v "$1" >/dev/null; }

_install() {
    if [[ -f /etc/arch-release ]]; then
        sudo pacman -Sy "$*"
    elif [[ -f /etc/debian_version ]]; then
        sudo apt install -y "$*"
    fi
}


# Installation of Packages
for package in packages/*; do
    _msg "Installing $package packages"
    source "$package"
done


# Post Hooks to run after Packages
for hook in post-hooks/*; do
    _msg "Running $hook post hooks"
    source "$hook"
done
