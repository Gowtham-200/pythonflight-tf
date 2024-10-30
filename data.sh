#!/bin/bash
sudo yum -y update
sudo yum -y install git
sudo chmod 777 data.sh
sudo yum -y install python3-pip
git clone https://github.com/Gowtham-200/flight-perdiction.git
cd /
sudo mv flight-perdiction/ /home/ec2-user/
cd /home/ec2-user/
cd flight-perdiction/
pip3 install -r requirements.txt
screen -m -d python3 app.py
