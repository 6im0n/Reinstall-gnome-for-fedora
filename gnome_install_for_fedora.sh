#!/bin/sh


echo -e "\e[31m        _____________________________________"
echo -e "\e[31m        |             \e[33m  Gnome             \e[31m  |"
echo -e "\e[31m        |            \e[33m  Install          \e[31m    |"
echo -e "\e[31m        |            \e[33m   Script           \e[31m   |"
echo -e "\e[31m        |              \e[33m  for            \e[31m    |"
echo -e "\e[31m        |             \e[33m  XCFE             \e[31m   |"
echo -e "\e[31m        |___________________________________|"
echo -e '\033[0m'
sleep 3s
sudo dnf update -y
sudo dnf upgrade -y
sudo systemctl disable lightdm -y
sudo dnf install gdm -y
sudo dnf install @gnome-desktop -y

git clone https://github.com/ubuntu/gnome-shell-extension-appindicator.git
meson gnome-shell-extension-appindicator /tmp/g-s-appindicators-build -y
ninja -C /tmp/g-s-appindicators-build install -y
gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com -y



echo -e "\e[32m        _____________________________________"
echo -e "\e[32m        |             \e[33m                    \e[32m  |"
echo -e "\e[32m        |              \e[33m                 \e[32m    |"
echo -e "\e[32m        |              \e[33m                 \e[32m    |"
echo -e "\e[32m        |            \e[33m  Install          \e[32m    |"
echo -e "\e[32m        |            \e[33m  Success!!         \e[32m   |"
echo -e "\e[32m        |              \e[33m                 \e[32m    |"
echo -e "\e[32m        |  \e[33m    reboot in... 15 seconds  \e[32m    |"
echo -e "\e[32m        |           \e[33m                    \e[32m    |"
echo -e "\e[32m        |            \e[33m                    \e[32m   |"
echo -e "\e[32m        |___________________________________|"
echo -e '\033[0m'
sleep 15s
sudo reboot now 
