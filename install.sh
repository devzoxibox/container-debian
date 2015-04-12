#!/bin/bash

# Mises à jour
apt-get update && apt-get -qy dist-upgrade 
apt-get -q update && apt-get -qy install wget locales curl
apt-get clean

# Locales
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

# User nobody pour UnRAID
usermod -u 99 nobody
usermod -g 100 nobody


