#!/bin/bash

rm -rf build
mkdir build
cd build

cmake ..

make -j8

cd $1

cp ${1}.uf2 /Volumes/RPI-RP2/
