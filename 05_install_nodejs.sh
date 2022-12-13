#!/bin/bash

VERSION=v18.12.1
DISTRO=linux-x64

wget https://nodejs.org/dist/$VERSION/node-$VERSION-$DISTRO.tar.xz -c -P ~/downloads/installer/

mkdir -p ~/software/nodejs
tar -xJvf ~/downloads/installer/node-$VERSION-$DISTRO.tar.xz -C ~/software/nodejs

echo -e "\n# Nodejs\nexport PATH=\"$HOME/software/nodejs/node-$VERSION-$DISTRO/bin:$PATH\"\n" >> ~/.bashrc

sudo ln -s $HOME/software/nodejs/node-$VERSION-$DISTRO/bin/node /usr/bin/node 
sudo ln -s $HOME/software/nodejs/node-$VERSION-$DISTRO/bin/npm /usr/bin/npm 
sudo ln -s $HOME/software/nodejs/node-$VERSION-$DISTRO/bin/npx /usr/bin/npx 
