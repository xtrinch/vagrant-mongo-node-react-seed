#!/bin/bash

cd ~/files

sudo locale-gen UTF-8

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf

# mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# node.js 6.x
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# install packages
sudo apt-get install -y nodejs build-essential mongodb-org nginx-full

# copy nginx config & restart
sudo cp ~/files/config/nginx.conf /etc/nginx/sites-available/default
sudo service nginx restart

# start mongodb
sudo service mongod start

# install global npm packages
sudo npm install -g gulp less phantomjs karma-phantomjs-launcher

# install packages from package.json
npm install --no-bin-links