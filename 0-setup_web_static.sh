#!/usr/bin/env bash
# this sets up web servers for deployment
sudo apt-get update
sudo apt-get install -y nginx
sudo apt-get install -y curl
sudo mkdir -p /data/web_static/releases/test/index.html
sudo mkdir -p /data/web_static/shared/
sudo ln -sf /data/web_static/current /data/web_static/releases/test/
sudo chown -R ubuntu:ubuntu /data/
sudo sed -i "4i location {\n\talias\t/data/web_static/current/;\n}" /etc/nginx/nginx.conf
sudo echo "Holberton" > /data/web_static/releases/test/index.html
sudo service nginx restart
