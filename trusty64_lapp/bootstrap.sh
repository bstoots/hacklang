#!/usr/bin/env bash

# Add HHVM key / repo
wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -
echo deb http://dl.hhvm.com/ubuntu trusty main | sudo tee /etc/apt/sources.list.d/hhvm.list
# Update
apt-get update
# Install some goodies
apt-get install -y apache2 php5 php5-cli hhvm postgresql 
# Trash the default index since we're lazy and reusing the default apache site
rm /var/www/html/index.html
