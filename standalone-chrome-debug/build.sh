#!/usr/bin/env bash

BUILD_LATEST_TAG="latest"
BUILD_CURRENT_TAG="3.14.0"

docker build -t deinchristian/rpi-selenium-standalone-chrome-debug:${BUILD_LATEST_TAG} -t deinchristian/rpi-selenium-standalone-chrome-debug:${BUILD_CURRENT_TAG} . && \
docker push deinchristian/rpi-selenium-standalone-chrome-debug
