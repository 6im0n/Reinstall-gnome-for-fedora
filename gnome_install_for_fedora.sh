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
sudo systemctl disable lightdm
sudo dnf install gdm -y
sudo systemctl enable gdm 
sudo dnf install @gnome-desktop --nogpgcheck -y
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
