#!/bin/bash

sudo apt update

sudo systemctl stop sshd

sudo rm /etc/ssh/sshd_config

cd /etc/ssh

sudo wget -O https://raw.githubusercontent.com/EPX-PANCA/gcp-vm-remote-ssh/main/sshd_config

sudo systemctl start sshd

sudo systemctl enable sshd
