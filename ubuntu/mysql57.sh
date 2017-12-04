#!/bin/bash

data_dir="/usr/data"

sudo mkdir $data_dir
sudo chown mysql:mysql $data_dir

echo "deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7" | sudo tee /etc/apt/sources.list.d/mysql57.list
sudo apt-get update -o Dir::Etc::sourcelist="sources.list.d/mysql57.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
touch /tmp/.apt_update_ran

install-package mysql-server -o Dpkg::Options::="--force-confnew"
