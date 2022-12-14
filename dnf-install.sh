#! /bin/bash

curl -fsSl https://pkg.cloudflare.com/cloudflared-ascii.repo | sudo tee /etc/yum.repos.d/cloudflared.repo

#sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf install flatpak
flatpak remote-add --if-not-exists \
flathub https://flathub.org/repo/flathub.flatpakrepo

sudo dnf update
dnf check-update

sudo dnf install \
nano \
gnome-shell \
gnome-terminal \
gnome-calculator \
gnome-disk-utility \
gnome-software \
gnome-tweaks \
gnome-themes-extra \
gnome-extensions-app \
gnome-shell-theme-flat-remix \
git \
ufw \
tlp \
powertop \
nautilus \
gimp \
gparted \
baobab \
cloudflared \
docker-ce \
docker-ce-cli \
cointainerd.io \
docker-compose-plugin \
wget \
unzip \
vulkan \
make \
proxychains-ng \
hashcat \
cmatrix \
cbonsai \
net-tools \
netcat \
lolcat \
htop \
btop \
steam \
libreoffice \
virtualbox \
firefox \
nmap \
code \
cowsay