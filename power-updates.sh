#! /bin/bash


sudo dnf update --refresh

sudo cp resources/tlp.conf /etc/tlp.conf

sudo systemctl enable tlp.service
sudo systemctl mask power-profiles-daemon.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

sudo powertop --auto-tune