FROM ubuntu:18.04

RUN apt-get update && apt-get -y install --no-install-recommends \
    binutils \
    cmake \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    libc-dev-armhf-cross \
    libstdc++-7-dev-armhf-cross \
    make \
 && rm -rf /var/lib/apt/lists/* \
 && ln -s /usr/arm-linux-gnueabihf/lib/ld-linux-armhf.so.3 /lib/ld-linux-armhf.so.3

WORKDIR /workdir
