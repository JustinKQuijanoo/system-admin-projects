#!/bin/bash

# This script checks the existence of a directory based on distribution
# Example 1. Arch Linux uses Pacman as its package manager and /etc/pacman.d will exist 
# Example 2. Ubuntu and Debian uses apt and /etc/apt will exist

# check for the existence of pacman
if [ -d /etc/pacman.d ]
then
    echo "==================================="
    echo -e "Updating system using pacman...\n"
    echo "==================================="
    sudo pacman -Syu

# check for the existence of apt
elif [ -d /etc/apt ]
then
    echo "==================================="
    echo "Updating system using apt..."
    echo -e "===================================\n"
    sleep 1.25
    sudo apt update -y
    sudo apt upgrade -y

    echo -e "\n==================================="
    echo "System update was successful."
    echo "==================================="

fi

