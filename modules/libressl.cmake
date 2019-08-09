ExternalProject_Add(libressl
    URL https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-3.0.0.tar.gz
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=${INSTALL_DIR} --host=${TARGET}
)
