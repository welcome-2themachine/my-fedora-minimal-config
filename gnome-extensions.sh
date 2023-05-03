#! /bin/bash

git clone https://github.com/brunelli/gnome-shell-extension-installer

chmod +x $(pwd)/gnome-shell-extension-installer/gnome-shell-extension-installer
sudo mv $(pwd)/gnome-shell-extension-installer/gnome-shell-extension-installer /usr/bin/

gnome-shell-extension-installer 779 307 4158 18 4506 3733 19 97 1714 5344 1732 --yes

#779 - Clipboard Indicator
#307 - Dash to Dock
#4158 - Gnome 4x UI Improvements
#1732 - GTK Title Bar
#18 - Native Window Placement
#4506 - Simple System Monitor
#3733 - Tiling Assitant
#19 - User Themes
#97 - Coverflow Alt-Tab
#1714 - SSH Search Provider Reborn
#5344 - super graphics control
