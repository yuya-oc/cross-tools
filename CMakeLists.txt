cmake_minimum_required(VERSION 3.0)

project(cross-tools)

include(ExternalProject)

set(TARGET arm-linux-gnueabihf)
#set(ENV{CC} ${CMAKE_C_COMPILER})
#set(ENV{CXX} ${CMAKE_CXX_COMPILER})

ExternalProject_Add(zlib
    PREFIX vendor
    URL https://www.zlib.net/zlib-1.2.11.tar.gz
    URL_HASH SHA256=c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=<INSTALL_DIR>
)

ExternalProject_Add(libressl
    PREFIX vendor
    URL https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-3.0.0.tar.gz
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=<INSTALL_DIR> --host=${TARGET}
)

ExternalProject_Add(openssh
    PREFIX vendor
    URL https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.0p1.tar.gz
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=<INSTALL_DIR> --host=${TARGET} --disable-strip --disable-etc-default-login --with-zlib=<INSTALL_DIR> --with-ssl-dir=<INSTALL_DIR>
    INSTALL_COMMAND make install-nokeys
    DEPENDS zlib libressl
)
