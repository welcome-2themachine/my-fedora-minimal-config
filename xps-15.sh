#! /bin/bash
sudo dnf install \
fprintd \
iwlax2xx-firmware.noarch

sudo authselect enable-feature with-fingerprint

fprintd-enroll $USER 

sudo dnf install intel-media-driver libva libva-utils gstreamer1-vaapi ffmpeg intel-gpu-tools mesa-dri-drivers mpv
sudo dnf install groupinstall multimedia
