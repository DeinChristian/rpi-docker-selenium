#!/usr/bin/env bash

docker build -t deinchristian/rpi-selenium-node-base:${BUILD_LATEST_TAG} -t deinchristian/rpi-selenium-node-base:${BUILD_CURRENT_TAG} . && \
docker push deinchristian/rpi-selenium-node-base
