#! /bin/bash

chmod +x *.sh
#enables this script to run each subscrip in the correct sequence
./nvidia-drivers.sh
./power-updates.sh
./dnf-install.sh
./flatpak-install.sh
./convenience.sh

sudo systemctl enable gdm
sudo systemctl set-default graphical.target

sudo dnf install plymouth-theme-spinner
sudo plymouth-set-default-theme bgrt
sudo dracut -f
reboot