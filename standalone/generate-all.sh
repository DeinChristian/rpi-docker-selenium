#!/usr/bin/env bash

./generate.sh standalone-chrome rpi-selenium-node-chrome Chrome 3.14.0 deinchristian DeinChristian
./generate.sh standalone-firefox rpi-selenium-node-firefox Firefox 3.14.0 deinchristian DeinChristian

cd ../standalone-debug
./generate.sh standalone-chrome-debug rpi-selenium-node-chrome-debug Chrome 3.14.0 deinchristian DeinChristian
./generate.sh standalone-firefox-debug rpi-selenium-node-firefox-debug Chrome 3.14.0 deinchristian DeinChristian




