#!/usr/bin/env bash

BUILD_LATEST_TAG="latest"
BUILD_CURRENT_TAG="3.11.0"

docker build -t deinchristian/rpi-selenium-base:${BUILD_LATEST_TAG} -t deinchristian/rpi-selenium-base:${BUILD_CURRENT_TAG} . && \
docker push deinchristian/rpi-selenium-base
