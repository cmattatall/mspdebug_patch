#!/bin/bash
git clone git://github.com/signal11/hidapi.git
pushd ./hidapi
./bootstrap
./configure --prefix=/usr
make && make install
popd
rm -r hidapi