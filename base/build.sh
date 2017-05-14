#!/usr/bin/env bash

docker build -t deinchristian/rpi-selenium-base:${BUILD_LATEST_TAG} -t deinchristian/rpi-selenium-base:${BUILD_CURRENT_TAG} . && \
docker push deinchristian/rpi-selenium-base
