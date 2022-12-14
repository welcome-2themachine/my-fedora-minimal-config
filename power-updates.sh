#! /bin/bash

sudo dnf copr enable lukenukem/asus-linux
sudo dnf install supergfxctl
sudo dnf update --refresh
sudo systemctl enable supergfxd.service --now
supergfxctl -m integrated

sudo cp resources/tlp.conf /etc/tlp.conf

sudo systemctl enable tlp.service
sudo systemctl mask power-profiles-daemon.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

sudo powertop --auto-tune