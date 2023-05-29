#!/bin/bash

# Displays basic system information for current device

echo -e "\nSystem Information\n"
printf "%0.s=" {1..40}

# Display Linux system information
echo -e "\n\nLinux system information:"
uname -a

# Display kernel release information
echo -e "\nKernel release information:"
uname -r

# Show operating system information such as distribution name and version
echo -e "\nOperating system information:"
cat /etc/os-release

# Show how long the system has been running + load
echo -e "\nSystem uptime:"
uptime

# Show system hostname
echo -e "\nSystem hostname:"
hostname

# Display all local IP addresses
echo -e "\nIP Addresses of host:"
hostname -I

# Show system reboot history
echo -e "\nSystem reboot history:"
last reboot

# Show the current date and time
echo -e "\nCurrent date and time:"
date

# Show this month's calendar
echo -e "\nCurrent month's calendar:"
cal

# Display who is online
echo -e "\nCurrent online users:"
w

# Display who you are logged in as
echo -e "\nWho am I?"
whoami
