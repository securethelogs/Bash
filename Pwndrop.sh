#! /usr/bin/env bash

mkdir ~/pwndrop
cd ~/pwndrop

echo "Downloading......"

wget https://github.com/kgretzky/pwndrop/releases/download/1.0.0/pwndrop-linux-amd64.tar.gz
tar zxvf pwndrop-linux-amd64.tar.gz
chmod 700 pwndrop
cd pwndrop
./pwndrop stop
./pwndrop install
./pwndrop start
./pwndrop status

echo "Pwndrop running"
