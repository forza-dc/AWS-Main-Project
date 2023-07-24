#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/forza-dc/capstone.git
cd /home/ubuntu/capstone
apt install python3-pip -y
apt-get install python3.10-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/capstone/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80