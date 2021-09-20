#!/bin/bash

#  Author: nkrsic
#
#  Sources: Official MongoDB docs (https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)
#

# Get latest stable MongoDB (right now, it's 5.0.x)

wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
apt-get update

apt install --yes mongodb-org

systemctl enable mongod
systemctl start mongod
