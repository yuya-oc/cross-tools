ExternalProject_Add(jq
    URL https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz
    PATCH_COMMAND autoreconf -fi
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=${INSTALL_DIR} --host=${TARGET}
)
