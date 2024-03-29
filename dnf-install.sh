#! /bin/bash

curl -fsSl https://pkg.cloudflare.com/cloudflared-ascii.repo | sudo tee /etc/yum.repos.d/cloudflared.repo

#sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf update
dnf check-update

sudo dnf install \
nano \
gnome-shell \
gnome-terminal \
steam-devices\
kitty-bash-integration \
gnome-calculator \
gnome-disk-utility \
gnome-software \
gnome-tweaks \
gnome-themes-extra \
gnome-extensions-app \
gnome-shell-extension-user-theme \
gnome-shell-theme-flat-remix \
gnome-browser-connector \
google-noto-emoji-color-fonts \
git \
ufw \
tlp \
cockpit \
powertop \
nautilus \
gimp \
gparted \
baobab \
cloudflared \
docker-ce \
docker-ce-cli \
containerd.io \
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
VirtualBox.x86_64 \
firefox \
nmap \
code \
neofetch \
gh \
gvfs \
gvfs-smb \
gnome-vfs2-smb \
lm_sensors \
iperf3 \
jq \
discord \
gnome-text-editor \
tmux \
lshw \
# below installed to get cac readers to work
pcsc-lite \
pcsc-tools \
pcsc-perl \
pcsc-lite-ccid \
opensc \
# above installed to get cac readers to work
cowsay
