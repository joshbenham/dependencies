#!/usr/bin/env bash

export DEPENDENCIES=~/.dependencies
set -e

# Helper Functions
source "functions.sh"


# Make sure GIT is installed
if _uncallable git; then
  _msg "Installing git"
  _install git
fi


# Pull down and/or update Dependencies
if [[ ! -d $DEPENDENCIES ]]; then
    _msg "Installing dependencies repository"
    git clone http://github.com/joshbenham/dependencies $DEPENDENCIES
    cd $DEPENDENCIES
else 
    _msg "Upgrading dependencies repository"
    cd $DEPENDENCIES
    git pull origin master
fi


# Installation of Packages
for package in packages/*; do
    _msg "Installing $package packages"
    source "$package"
done


_msg
_msg "And done!"
_msg
