#!/bin/bash

export IMAGE_FILE=2022-09-06-raspios-bullseye-arm64-lite.img
export DISTRIB=bullseye
export ARCH=arm64
export DOCKER_PLATFORM=linux/arm64
export DOCKER_IMAGE_TAG=arm64
export DOCKER_IMAGE_REPOSITORY=anonomous
export DOCKER_IMAGE_NAME=raspbian-${DISTRIB}-${ARCH}
export DOCKERFILE=Dockerfile-${DISTRIB}-${ARCH}

wget https://downloads.raspberrypi.com/raspios_lite_arm64/images/raspios_lite_arm64-2022-09-07/${IMAGE_FILE}.xz

xz -dkfv ${IMAGE_FILE}.xz;

rm ${IMAGE_FILE}.xz

./build.sh

