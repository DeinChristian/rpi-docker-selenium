#!/bin/bash

docker login docker.io

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

cd ./node-chrome
./build.sh
cd ..

cd ./node-firefox-debug
./build.sh
cd ..

cd ./node-chrome-debug
./build.sh
cd ..

cd ./standalone-chrome
./build.sh
cd ..

cd ./standalone-chrome-debug
./build.sh
cd ..

cd ./standalone-firefox
./build.sh
cd ..

cd ./standalone-firefox-debug
./build.sh
cd ..

echo "Done!"
