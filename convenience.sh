#! /bin/bash

#this script is meant to move all the .confs around and make stuff look pretty

sudo lvextend /dev/fedora/root -l+100%FREE
sudo xfs_growfs /
#this fixes the issue of only having 15G for your root drive

neofetch
mkdir -p ~/.local/share/fonts ~/.ssh ~/.config/{tmux,poshthemes}
mv resources/neofetch_config.conf ~/.config/neofetch/config.conf
mv resources/fonts/*.ttf ~/.local/share/fonts/
mv resources/.bashrc ~/.bashrc
mv resources/poshthemes ~/.config/poshthemes
mv resources/getip /usr/bin/
mv resources/ssh.config ~/.ssh/config
mv resources/tmux.conf ~/.config/tmux/tmux.conf
neofetch
#this is basically a print statement
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /bin/oh-my-posh
sudo chmod +x /bin/oh-my-posh

#set the desktop background
sudo mv resources/backgrounds/* /usr/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/nasa_black.png
#there's a lot more gnome settings the user will have to do themselves
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

#firewall fixes
sudo dnf remove gnome-tour firewalld
sudo ufw enable
sudo systemctl enable ufw

# settings
dconf load /org/gnome/terminal/legacy/profiles:/ < resources/profile.dconf
# dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf are there more dconf pieces I want?

#nordvpn
sudo sh <(wget -qO - https://downloads.nordcdn.com/apps/linux/install.sh)
sudo usermod -aG nordvpn mechanicus

#xbox controller
cd ~/Code
git clone https://github.com/atar-axis/xpadneo.git
sudo $(pwd)/xpadneo/install.sh

#for cac readers
sudo systemctl enable pcscd

#these need to be added to firefox by the user
mv resources/unclass-certificates_pkcs7_v5-6_dod.zip ~/Downloads
