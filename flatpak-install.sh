#! /bin/bash


sudo dnf install flatpak
flatpak remote-add --if-not-exists \
flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak install flathub \
org.signal.Signal \
org.videolan.VLC \
com.brave.Browser \
com.parsecgaming.parsec \
com.google.Chrome \
com.valvesoftware.Steam \
org.libreoffice.LibreOffice

