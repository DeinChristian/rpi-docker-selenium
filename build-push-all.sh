#!/bin/bash

BUILD_LATEST_TAG="latest"
BUILD_CURRENT_TAG="3.4.0"
export BUILD_LATEST_TAG
export BUILD_CURRENT_TAG

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

echo "Done!"
