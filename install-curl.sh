#!/bin/sh
set -ex
wget https://github.com/curl/curl/releases/download/curl-7_58_0/curl-7.58.0.tar.gz
tar -xzvf curl-7.58.0.tar.gz
cd curl-7.58.0 && ./configure --prefix=/usr && make && sudo make install
