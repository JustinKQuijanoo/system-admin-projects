#!/bin/bash

# This script will prepare the server for a wordpress blog

# 1. Install security patches
# Refresh list of available packages and install
echo -e "========================================================="
echo "Installing security patches and system packages..."
echo -e "=========================================================\n"
sleep 0.5

sudo apt update -y && sudo apt upgrade -y

# 2. Install Apache2 webserver and confirm the service status
#sleep 1.25
echo -e "\n========================================================="
echo "Installing Apache2 webserver..."
echo -e "=========================================================\n"
sleep 0.5

sudo apt install apache2 -y

echo -e "\n========================================================="
echo "Checking status of apache2..."
echo -e "=========================================================\n"

sudo systemctl status apache2


