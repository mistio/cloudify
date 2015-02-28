#!/bin/bash

sudo apt-get install -y python-dev build-essential git erlang libpcre3-dev

cd /home/vagrant
git clone https://github.com/mistio/mist.io | echo "Alredy cloned"
cd /home/vagrant/mist.io
virtualenv --no-site-packages .
./bin/pip install --upgrade setuptools
./bin/python bootstrap.py
./bin/buildout
./bin/pip install ansible

