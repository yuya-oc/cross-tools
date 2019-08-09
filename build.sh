#!/bin/sh
set -eu

TARGET="${1}"
SOURCE_ROOT="$(cd "$(dirname "${0}")"; pwd)"
BUILD_DIR="build/${TARGET}"

mkdir -p "${BUILD_DIR}"
cd "${BUILD_DIR}"
#cmake -DCMAKE_TOOLCHAIN_FILE="${SOURCE_ROOT}/targets/${TARGET}/toolchain.cmake" "${SOURCE_ROOT}"

# shellcheck source=/dev/null
. "${SOURCE_ROOT}/targets/${TARGET}/env-vars"
cmake "${SOURCE_ROOT}"
make -j8
