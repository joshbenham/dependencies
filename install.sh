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


# Pre Hooks to run before Package Installation
for hook in pre-hooks/*; do
    _msg "Running $hook pre hooks"
    source "$hook"
done


# Installation of Packages
for package in packages/*; do
    _msg "Installing $package packages"
    source "$package"
done


# Post Hooks to run after Package Installation
for hook in post-hooks/*; do
    _msg "Running $hook post hooks"
    source "$hook"
done
