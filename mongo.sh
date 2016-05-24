#!/bin/bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update
sudo apt-get install -y mongodb-10gen

#enable text search otherwise `bundle exec rake errbit:bootstrap` for errbit fails
#http://stackoverflow.com/a/23624139/120427
echo "setParameter=textSearchEnabled=true" | sudo tee -a /etc/mongodb.conf > /dev/null

echo "mongodb-10gen hold" | sudo dpkg --set-selections

sudo service mongodb restart
