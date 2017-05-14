#!/usr/bin/env bash

docker build -t deinchristian/rpi-selenium-hub:${BUILD_LATEST_TAG} -t deinchristian/rpi-selenium-hub:${BUILD_CURRENT_TAG} . && \
docker push deinchristian/rpi-selenium-hub
