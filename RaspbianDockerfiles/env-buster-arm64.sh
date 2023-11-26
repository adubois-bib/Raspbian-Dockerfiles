#!/bin/bash

export ZIP_FILE=2021-05-07-raspios-buster-arm64-lite.zip
export IMAGE_FILE=2021-05-07-raspios-buster-arm64-lite.img
export DISTRIB=buster
export ARCH=arm64
export DOCKER_PLATFORM=linux/arm64
export DOCKER_IMAGE_TAG=arm64
export DOCKER_IMAGE_REPOSITORY=anonomous
export DOCKER_IMAGE_NAME=raspbian-${DISTRIB}-${ARCH}
export DOCKERFILE=Dockerfile-${DISTRIB}-${ARCH}

wget https://downloads.raspberrypi.com/raspios_lite_arm64/images/raspios_lite_arm64-2021-05-28//${ZIP_FILE}

unzip -o ${ZIP_FILE};

rm ${ZIP_FILE}

./build.sh
