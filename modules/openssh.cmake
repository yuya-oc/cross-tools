ExternalProject_Add(openssh
    URL https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.0p1.tar.gz
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=${INSTALL_DIR} --host=${TARGET} --disable-strip --disable-etc-default-login --with-zlib=${INSTALL_DIR} --with-ssl-dir=${INSTALL_DIR}
    INSTALL_COMMAND make install-nokeys
    DEPENDS zlib libressl
)
