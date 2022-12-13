#! /bin/bash

sudo dnf copr enable lukenukem/asus-linux
sudo dnf install supergfxctl
sudo dnf update --refresh
sudo systemctl enable supergfxd.service
supergfxctl -m integrated

sudo cp tlp.conf /etc/tlp.conf

sudo powertop --auto-tune