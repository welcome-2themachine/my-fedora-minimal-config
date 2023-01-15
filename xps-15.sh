#! /bin/bash
sudo dnf install \
fprintd \
iwlax2xx-firmware.noarch

sudo authselect enable-feature with-fingerprint

fprintd-enroll $USER 
