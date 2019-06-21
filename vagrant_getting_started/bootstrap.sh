#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then # if /var/www is not a symbolic link (-L)
  rm -rf /var/www
  ln -fs /vagrant /var/www # remove old symbolic links & make new symbolic link
fi
