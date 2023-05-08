#!/bin/bash 

END=$(echo %s | sed 's~:[[:digit:]]\+~~g')

export ENDPOINT=$END
export PASSWORD="%s"

echo this is from the script itself!!
echo $ENDPOINT
echo $PASSWORD
echo end of script prints

sudo apt-get install git -y
sudo apt-get install nodejs -y
sudo apt install npm -y
git clone https://github.com/TomerAdmon/express-mysql-todo.git
cd express-mysql-todo
sudo npm install
nohup node server.js &
