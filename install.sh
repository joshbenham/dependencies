#!/usr/bin/env bash
set -e


# Helper Functions
source "functions.sh"


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


_msg
_msg "And done!"
_msg
