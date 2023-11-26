#!/bin/bash

docker images;
ls -al;
for file in env*; do sudo ./${file}; done;
docker images;
ls -al;
