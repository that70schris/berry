#! /bin/bash
Colour='\033[1;31m'
less='\033[0m'

echo -e "${Colour}\n\nThe system will now upgrade all the software and firmware, as well as clean up old/unused packages.\n\n${less}"
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

echo -e "${Colour}\n\nPi-hole will be installed now.\nThe initial configuration is interactive.\n\n${less}"
curl -sSL https://install.pi-hole.net | bash

echo -e "${Colour}\n\nOne more step is changing the password for the web interface of the Pi-hole.\n\n${less}"
pihole -a -p

echo -e "${Colour}\n\nTo finish the installation, a reboot is required.\n\n${less}"
# sleep 3
# echo -e "${Colour}\nRestarting the Raspberry Pi now.\n${less}"
# sudo reboot now
