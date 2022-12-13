#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install curl lsb-release build-essential cmake clang nginx -y

sudo systemctl enable ssh
sudo systemctl start ssh

mkdir -p $HOME/codespace $HOME/downloads/installer $HOME/scripts $HOME/software
