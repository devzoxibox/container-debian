#!/bin/bash

# Mises à jour
apt-get update && apt-get -qy dist-upgrade 
apt-get -q update && apt-get -qy install wget locales curl supervisor python-software-properties
apt-get clean

# Key for mariadb
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
add-apt-repository 'deb http://mirror6.layerjet.com/mariadb/repo/5.5/debian wheezy main'

# Locales
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

# User nobody pour UnRAID
usermod -u 99 nobody
usermod -g 100 nobody


