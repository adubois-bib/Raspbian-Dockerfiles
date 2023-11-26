# dynamic variable list for device letters
declare -a DEV=({a..z})

# assign kpartx results to device letters
for PART in $(kpartx -av "$IMAGE_FILE" 2>&1 | grep -owE '(loop[0-9]+p[0-9]+)')
  do
    eval ${DEV[${i:-0}]}=/dev/mapper/$PART
    i=$((${i:-0}+1))
done

mkdir ${DISTRIB}-${ARCH}-fat32 ${DISTRIB}-${ARCH}-ext4
mount $a ${DISTRIB}-${ARCH}-fat32/
mount $b ${DISTRIB}-${ARCH}-ext4/

docker buildx build --platform ${DOCKER_PLATFORM} -f ${DOCKERFILE} -t ${DOCKER_IMAGE_REPOSITORY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG} .

umount ${DISTRIB}-${ARCH}-fat32
umount ${DISTRIB}-${ARCH}-ext4
kpartx -dv $IMAGE_FILE

rm -rf ${DISTRIB}-${ARCH}-fat32
rm -rf ${DISTRIB}-${ARCH}-ext4
rm ${IMAGE_FILE}

docker push ${DOCKER_IMAGE_REPOSITORY}/${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}
