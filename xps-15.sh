#! /bin/bash
sudo dnf install \
fprintd \
iwlax2xx-firmware.noarch

sudo dnf copr enable lukenukem/asus-linux
sudo dnf install supergfxctl

sudo systemctl enable supergfxd.service --now
supergfxctl -m integrated


sudo authselect enable-feature with-fingerprint

fprintd-enroll $USER 

### The programs below seem to have broken gpu switching
sudo dnf install intel-media-driver gstreamer1-vaapi ffmpeg intel-gpu-tools mesa-dri-drivers mpv
sudo dnf install groupinstall multimedia
