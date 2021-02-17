#!/bin/bash

function cleanup()
{   
    while(( "$?" == 0 ))
    do
        pushd ../ > /dev/null
    done
}
trap cleanup EXIT


function install_hidapi() {
    git clone git://github.com/signal11/hidapi.git
    pushd ./hidapi
    ./bootstrap
    ./configure --prefix=/usr
    make && make install
    popd
    rm -r hidapi
}


function build_libmsp430() {
    
}

