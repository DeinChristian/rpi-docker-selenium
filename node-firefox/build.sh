#!/usr/bin/env bash

docker build -t deinchristian/rpi-selenium-node-firefox . && \
docker push deinchristian/rpi-selenium-node-firefox
