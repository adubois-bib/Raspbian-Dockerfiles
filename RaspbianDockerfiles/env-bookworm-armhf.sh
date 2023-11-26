#!/bin/bash

export DOCKER_PLATFORM=linux/arm/v7
export DOCKER_IMAGE_TAG=armv7
export IMAGE_FILE=2023-10-10-raspios-bookworm-armhf-lite.img
export DISTRIB=bookworm
export ARCH=armhf
export DOCKER_IMAGE_REPOSITORY=anonomous
export DOCKER_IMAGE_NAME=raspbian-${DISTRIB}-${ARCH}
export DOCKERFILE=Dockerfile-${DISTRIB}-${ARCH}

wget https://downloads.raspberrypi.com/raspios_lite_armhf/images/raspios_lite_armhf-2023-10-10/${IMAGE_FILE}.xz

xz -dkfv ${IMAGE_FILE}.xz;

rm ${IMAGE_FILE}.xz

./build.sh
