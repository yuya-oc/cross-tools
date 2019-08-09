#!/bin/sh
set -eu

TARGET="${1}"
DOCKER_IMAGE="cross-tools-builder:${TARGET}"

docker build -t "${DOCKER_IMAGE}" "targets/${TARGET}"
docker run -it --rm -v "$(pwd):/workdir" "${DOCKER_IMAGE}" ./build.sh "${TARGET}"
