#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install curl lsb-release build-essential cmake clang -y

sudo systemctl enable ssh
sudo systemctl start ssh

mkdir -p codespace downloads/installer scripts software

