#! /bin/bash
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf update

sudo dnf install \
akmod-nvidia \
xorg-x11-drv-nvidia-cuda \
xorg-x11-drv-nvidia-cuda-libs
#note: cuda driver is optional for nvenc, cuda, nvenc support

#if this fails, follow this guide: https://phoenixnap.com/kb/fedora-nvidia-drivers
