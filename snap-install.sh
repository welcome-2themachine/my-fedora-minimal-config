#! /bin/bash

sudo dnf install snapd

snap refresh
snap find nordpass
sudo snap install nordpass