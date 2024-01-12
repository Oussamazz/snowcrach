#!/bin/bash

# Update and upgrade the system
sudo apt-get update
sudo apt-get upgrade -y

# Install essential tools
sudo apt-get install -y git vim wget curl unzip jq nmap netcat john hydra wireshark ltrace

# Install John The Ripper
git clone https://github.com/magnumripper/JohnTheRipper.git
cd JohnTheRipper/src
./configure && make -s clean && make -sj4
sudo make install

# Install Wireshark
sudo apt-get install -y wireshark

# Install ltrace
sudo apt-get install -y ltrace

# Install OpenSSH Server
sudo apt-get install -y openssh-server

# Install PHP (for Level 06)
sudo apt-get install -y php

# Install additional tools as needed for your project

# Example: Install Lua (for Level 11)
sudo apt-get install -y lua5.1

# Example: Install netcat (if not installed)
sudo apt-get install -y netcat

# Example: Install John The Ripper community-enhanced version (bleeding-jumbo) for additional features
# git clone https://github.com/magnumripper/JohnTheRipper.git
# cd JohnTheRipper/src
# ./configure --enable-bleeding-jumbo && make -s clean && make -sj4
# sudo make install

# Add any additional installations based on your project requirements

echo "Installation completed successfully!"

