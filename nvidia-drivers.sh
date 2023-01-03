#! /bin/bash
sudo dnf update

sudo dnf install \
akmod-nvidia \
xorg-x11-drv-nvidia-cuda \
xorg-x11-drv-nvidia-cuda-libs
#note: cuda driver is optional for nvenc, cuda, nvenc support

#if this fails, follow this guide: https://phoenixnap.com/kb/fedora-nvidia-drivers
