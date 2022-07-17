#!/bin/bash

mkdir -p build
cd build

export PICO_SDK_PATH=../pico-sdk
cmake ..

cd blink

make

cp blink.uf2 /Volumes/RPI-RP2/
