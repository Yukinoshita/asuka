#!/bin/bash

mkdir -p ~/apps/src
cd ~/apps/src
wget https://github.com/aria2/aria2/releases/download/release-1.34.0/aria2-1.34.0.tar.gz
tar xvf aria2-1.34.0.tar.gz
cd aria2-1.34.0
sed -i 's/"1", 1, 16/"1", 1, 256/' src/OptionHandlerFactory.cc
sed -i 's/TEXT_MIN_SPLIT_SIZE, "20M", 1_m/TEXT_MIN_SPLIT_SIZE, "20M", 256_k/' src/OptionHandlerFactory.cc
./configure && make && make install
