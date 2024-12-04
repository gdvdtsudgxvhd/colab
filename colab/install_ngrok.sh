#!/bin/bash

# Kill any ngrok process if running
kill $(ps aux | grep '\./ngrok tcp' | awk '{print $2}')

# Download ngrok
wget -q -nc https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip

# Unzip ngrok
unzip -qq -n ngrok-stable-linux-amd64.zip

# Install the openssh server
apt-get -qq update && apt-get -qq install -o=Dpkg::Use-Pty=0 openssh-server pwgen > /dev/null
