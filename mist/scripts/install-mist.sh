#!/bin/bash

set -e
ctx logger info "Installing dependencies"

apt-get install -y python-dev build-essential git erlang libpcre3-dev

