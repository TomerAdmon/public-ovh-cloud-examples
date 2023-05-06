#!/bin/bash 
export ENDPOINT = ${var.endpoint}
export PASSWORD = ${var.password}

sudo apt-get install git -y
sudo apt-get install nodejs -y
sudo apt install npm -y
git clone https://github.com/TomerAdmon/express-mysql-todo.git
cd express-mysql-todo
sudo npm install
nohup node server.js &