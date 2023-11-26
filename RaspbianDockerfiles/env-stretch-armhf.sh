#!/bin/bash

export ZIP_FILE=2019-04-08-raspbian-stretch.zip
export IMAGE_FILE=2019-04-08-raspbian-stretch.img
export DISTRIB=stretch
export ARCH=armhf
export DOCKER_PLATFORM=linux/arm/v7
export DOCKER_IMAGE_TAG=armv7
export DOCKER_IMAGE_REPOSITORY=anonomous
export DOCKER_IMAGE_NAME=raspbian-${DISTRIB}-${ARCH}
export DOCKERFILE=Dockerfile-${DISTRIB}-${ARCH}

wget https://downloads.raspberrypi.com/raspbian/images/raspbian-2019-04-09/${ZIP_FILE}

unzip -o ${ZIP_FILE};

rm ${ZIP_FILE}

./build.sh
