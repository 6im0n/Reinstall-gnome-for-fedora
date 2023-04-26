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
    array=( https://extensions.gnome.org/extension/779/clipboard-indicator/
            https://extensions.gnome.org/extension/1160/dash-to-panel/)

    for i in "${array[@]}"
    do
        EXTENSION_ID=$(curl -s $i | grep -oP 'data-uuid="\K[^"]+')
        VERSION_TAG=$(curl -Lfs "https://extensions.gnome.org/extension-query/?search=$EXTENSION_ID" | jq '.extensions[0] | .shell_version_map | map(.pk) | max')
        wget -O ${EXTENSION_ID}.zip "https://extensions.gnome.org/download-extension/${EXTENSION_ID}.shell-extension.zip?version_tag=$VERSION_TAG"
        gnome-extensions install --force ${EXTENSION_ID}.zip
        if ! gnome-extensions list | grep --quiet ${EXTENSION_ID}; then
            busctl --user call org.gnome.Shell.Extensions /org/gnome/Shell/Extensions org.gnome.Shell.Extensions InstallRemoteExtension s ${EXTENSION_ID}
        fi
        gnome-extensions enable ${EXTENSION_ID}
        rm ${EXTENSION_ID}.zip
    done
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
