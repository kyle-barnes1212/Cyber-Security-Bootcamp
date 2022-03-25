#! /bin/bash

# this script cleans up the tmp directory, as well as the different caches in the different user directories.
rm -rf /tmp/*
rm -rf /var/tmp/*

apt clean -y

rm -rf /home/sysadmin/.cache/thumbnails
rm -rf /home/instructor/.cache/thumbnails
rm -rf /home/student/.cache/thumbnails
rm -rf /root/.cache/thumbnails
