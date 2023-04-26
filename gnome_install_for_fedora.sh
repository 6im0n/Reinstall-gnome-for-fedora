#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${YELLOW}== GNOME Installer Menu ==${NC}"
echo ""
echo "Choose an option:"
echo -e "  ${GREEN}1${NC}: Install GNOME and extensions to make it better"
echo -e "  ${GREEN}2${NC}: Install GNOME extensions (only works if you have GNOME preinstalled)"
echo -e "  ${GREEN}3${NC}: Only install GNOME (no extensions)"

read input
if [ "$input" = "1" ] || [ "$input" = "3" ]; then
    echo -e "${YELLOW}Installing GNOME and extensions...${NC}"
    sudo dnf update -y
    sudo systemctl disable lightdm
    sudo dnf install gdm -y
    sudo systemctl enable gdm
    sudo dnf install @gnome-desktop --nogpgcheck -y
fi
if [ "$input" = "1" ] || [ "$input" = "2" ]; then
    if [ "$input" = "2" ]; then
        echo -e "${YELLOW}Installing extensions...${NC}"
    fi
    wget -O gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer"
    chmod +x gnome-shell-extension-installer
    ./gnome-shell-extension-installer 3193
    ./gnome-shell-extension-installer 1160
    ./gnome-shell-extension-installer 779
    ./gnome-shell-extension-installer 19
    rm gnome-shell-extension-installer
fi

if [ "$input" = 1 ]; then
    echo "Press Enter to reboot the system..."
    read
    sleep 1s
    echo "Rebooting... in 4 sec"*
    sleep 1s
    echo "Rebooting... in 3 sec"
    sleep 1s
    echo "Rebooting... in 2 sec"
    sleep 1s
    echo "Rebooting... in 1 sec"
    sleep 1s
    echo "Rebooting..."
    sudo reboot
fi
if [ "$input" != "1" ] || [ "$input" != "2" ] || [ "$input" != "3" ]; then
    echo -e "${RED}Invalid input, please choose a valid option.${NC}"
    exit 1
fi

