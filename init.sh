#!/bin/bash

sudo apt update

sudo systemctl stop sshd

sudo rm /etc/ssh/sshd/sshd_config

sudo wget -O https://raw.githubusercontent.com/EPX-PANCA/gcp-vm-remote-ssh/main/sshd_config

sudo systemctl start sshd

sudo systemctl enable sshd
