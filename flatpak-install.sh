#! /bin/bash

flatpak remote-add --if-not-exists /
flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub /
org.signal.Signal /
org.videolan.VLC /
com.brave.Browser /
com.parsecgaming.parsec