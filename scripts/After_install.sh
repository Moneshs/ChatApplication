#! /bin/bash

cd /home/ubuntu/ChatApplication
sudo virtualenv venv
source venv/bin/activate
cd chat
pip install -r requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate
cd ..


