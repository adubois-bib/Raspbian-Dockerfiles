#!/bin/bash

export DOCKER_PLATFORM=linux/arm64
export DOCKER_IMAGE_TAG=arm64
export IMAGE_FILE=2023-10-10-raspios-bookworm-arm64-lite.img
export DISTRIB=bookworm
export ARCH=arm64
export DOCKER_IMAGE_REPOSITORY=anonomous
export DOCKER_IMAGE_NAME=raspbian-${DISTRIB}-${ARCH}
export DOCKERFILE=Dockerfile-${DISTRIB}-${ARCH}

wget https://downloads.raspberrypi.com/raspios_lite_arm64/images/raspios_lite_arm64-2023-10-10/${IMAGE_FILE}.xz

xz -dkfv ${IMAGE_FILE}.xz;

rm ${IMAGE_FILE}.xz

./build.sh
