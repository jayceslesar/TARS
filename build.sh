#!/bin/bash

cd $1
rm -rf build
mkdir build
cd build

cmake ..

make -j8

echo "Moving $PWD/${1}.uf2 to /Volumes/RPI-RP2/"
cp ${1}.uf2 /Volumes/RPI-RP2/
