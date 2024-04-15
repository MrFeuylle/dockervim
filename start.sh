#!/bin/bash
git clone git@github.com:MrFeuylle/dockervim.git /tmp/dockervim
cd /tmp/dockervim
docker build -t myimgnvim .
echo "alias nvi='docker run -it -v $PWD:/root/projet myimgnvim /root/entrypoint.sh'" >> ~/.zshrc
