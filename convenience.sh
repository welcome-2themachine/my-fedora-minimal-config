#! /bin/bash

#this script is meant to move all the .confs around and make stuff look pretty

mkdir ~/.conf/neofetch/
mkdir ~/.local/share/fonts
mv resources/neofetch_config.conf /home/mechanicus/.config/neofetch/config.conf
mv resources/fonts/*.ttf home/mechanicus/.local/share/fonts/
mv resources/bashrc /home/mechanicus/.bashrc

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /bin/oh-my-posh

#set the desktop background
sudo mv resources/nasa-black.png /usr/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/nasa-black.png
#there's a lot more gnome settings the user will have to do themselves
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"