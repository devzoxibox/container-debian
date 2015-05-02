#!/bin/bash

# Mises à jour
apt-get update && apt-get -qy dist-upgrade 
apt-get -q update && apt-get -qy install wget locales curl supervisor python-software-properties
apt-get clean

# Key for mariadb
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
echo "# MariaDB 5.5 repository list - created 2015-05-02 19:33 UTC
# http://mariadb.org/mariadb/repositories/
deb http://mirror6.layerjet.com/mariadb/repo/5.5/debian wheezy main
deb-src http://mirror6.layerjet.com/mariadb/repo/5.5/debian wheezy main
" >> /etc/apt/sources.list

# Locales
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

# User nobody pour UnRAID
usermod -u 99 nobody
usermod -g 100 nobody


