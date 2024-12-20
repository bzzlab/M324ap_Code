#!/usr/bin/bash
# Attention:
# Change CRLF (Windows) to LF (Unix on AWS) in your Editor
#
# Purpose:
# Install nodejs for the client to test
# to test manually the server in the container
#
#If you need to uninstall node.js just run:
# sudo apt remove nodejs
#If you want to purge config files, too, add purge:
# sudo apt purge nodejs
echo "Checking node.js installation ..."
if command -v node &> /dev/null; then
    VER=$(node -v)
    echo "Node version ${VER} is installed!"
else
    echo "Node installation not found. Installing now ..."
    curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
    sudo apt-get install -y nodejs
fi

