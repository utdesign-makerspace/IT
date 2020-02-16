#!/bin/bash

sudo apt update

sudo apt install -y apt-transport-https curl chromium snapd ldap-auth-client nscd

sudo snap install spotify

sudo auth-client-config -t nss -p lac_ldap
