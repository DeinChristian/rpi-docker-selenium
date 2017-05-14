#!/bin/bash

cd ./base
./build.sh
cd ..

cd ./selenium-hub
./build.sh
cd ..

cd ./node-base
./build.sh
cd ..

cd ./node-firefox
./build.sh
cd ..
