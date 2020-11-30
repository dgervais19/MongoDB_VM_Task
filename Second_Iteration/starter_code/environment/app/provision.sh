#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

export DB_HOST='192.168.10.150'
# assign the DB_HOST environment to the correct ip address and put it in the .bashrc file
echo "export DB_HOST='192.168.10.150'" >> ~/.bashrc

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

sudo apt-get install nginx -y


# finally, restart the nginx service so the new config takes hold
sudo service nginx restart
