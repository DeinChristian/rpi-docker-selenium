#!/usr/bin/env bash

BUILD_LATEST_TAG="latest"
BUILD_CURRENT_TAG="3.5.3"

docker build -t deinchristian/rpi-selenium-node-firefox-debug:${BUILD_LATEST_TAG} -t deinchristian/rpi-selenium-node-firefox-debug:${BUILD_CURRENT_TAG} . && \
docker push deinchristian/rpi-selenium-node-firefox-debug
