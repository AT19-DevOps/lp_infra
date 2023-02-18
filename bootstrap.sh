#!/bin/bash
# This script will download and start Apache, and then create asymlink between your synced files directory and the location whereApache will look for the content
apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
    rm -rf /var/www
    ln -fs /vagrant /var/www
fi