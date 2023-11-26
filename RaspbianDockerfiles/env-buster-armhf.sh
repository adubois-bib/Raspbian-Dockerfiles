#!/bin/bash

export ZIP_FILE=2020-12-02-raspios-buster-armhf-lite.zip
export IMAGE_FILE=2020-12-02-raspios-buster-armhf-lite.img
export DISTRIB=buster
export ARCH=armhf
export DOCKER_PLATFORM=linux/arm/v7
export DOCKER_IMAGE_TAG=armv7
export DOCKER_IMAGE_REPOSITORY=anonomous
export DOCKER_IMAGE_NAME=raspbian-${DISTRIB}-${ARCH}
export DOCKERFILE=Dockerfile-${DISTRIB}-${ARCH}

wget https://downloads.raspberrypi.com/raspios_lite_armhf/images/raspios_lite_armhf-2020-12-04/${ZIP_FILE}

unzip -o ${ZIP_FILE};

rm ${ZIP_FILE}

./build.sh
