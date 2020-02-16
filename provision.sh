#!/bin/bash

mkdir temp

cd temp

sudo apt update

sudo apt install -y apt-transport-https curl chromium snapd ldap-auth-client nscd

curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

curl https://files.multimc.org/downloads/multimc_1.4-1.deb -o multimc.deb 

sudo apt install nodejs brave-browser ./multimc.deb -y

sudo snap install spotify

curl -s https://install.zerotier.com | sudo bash
