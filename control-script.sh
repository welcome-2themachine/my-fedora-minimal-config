#! /bin/bash

chmod +x *.sh
#enables this script to run each subscrip in the correct sequence

./dnf-install.sh
./flatpak-install.sh
./nvidia-drivers.sh
./power-updates.sh
./convenience.sh

sudo systemctl enable gdm
sudo systemctl set-default graphical.target

sudo plymouth-set-default-theme bgrt
sudo dracut -f
reboot