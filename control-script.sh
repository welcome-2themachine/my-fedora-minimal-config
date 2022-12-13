#! /bin/bash

chmod +x *.sh
#enables this script to run each subscrip in the correct sequence

./dnf-install.sh
./flatpak-install.sh
./nvidia-drivers.sh
./power-updates.sh
./convenience.sh

sudo plymout-set-default-theme bgrt
sudo dracut -f
reboot