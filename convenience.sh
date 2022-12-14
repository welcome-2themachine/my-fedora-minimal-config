#! /bin/bash

#this script is meant to move all the .confs around and make stuff look pretty

sudo lvextend -l +100% /dev/fedora/root
sudo xfs_growfs /dev/fedora/root
#this fixes the issue of only having 15G for your root drive

neofetch
mkdir ~/.local/share/fonts
mkdir ~/.config/poshthemes
mv resources/neofetch_config.conf ~/.config/neofetch/config.conf
mv resources/fonts/*.ttf ~/.local/share/fonts/
mv resources/.bashrc ~/.bashrc
mv resources/bubblesextra.omp.json ~/.config/poshthemes/
neofetch
#this is basically a print statement
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /bin/oh-my-posh
sudo chmod +x /bin/oh-my-posh

#set the desktop background
sudo mv resources/nasa-black.png /usr/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/nasa-black.png
#there's a lot more gnome settings the user will have to do themselves
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

sudo dnf remove gnome-tour firewalld
sudo ufw enable
dconf load /org/gnome/terminal/legacy/profiles:/ < resources/profile.dconf
# dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf are there more dconf pieces I want?

