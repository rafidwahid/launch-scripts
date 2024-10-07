#!/bin/bash

# Update and upgrade the system
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install curl
sudo apt-get install -y git
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g pm2
sudo apt-get install sqlite3 libsqlite3-dev -y

sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw enable
