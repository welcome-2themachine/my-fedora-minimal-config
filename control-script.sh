#! /bin/bash

chmod +x *.sh
#enables this script to run each subscrip in the correct sequence

./dnf-install.sh
./flatpak-install.sh
./snap-isntall.sh
./power-updates.sh
./gnome-extensions.sh
./convenience.sh
./nvidia-drivers.sh

sudo systemctl enable gdm
sudo systemctl set-default graphical.target

sudo dnf install plymouth-theme-spinner
sudo plymouth-set-default-theme bgrt
sudo dracut -f
echo "Installation complete - reboot when ready"