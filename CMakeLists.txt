cmake_minimum_required(VERSION 3.0)

project(cross-tools)

include(ExternalProject)

set(TARGET $ENV{TARGET})
set(INSTALL_DIR ${CMAKE_CURRENT_BINARY_DIR}/dist)

set(MODULES
    zlib
    libressl
    openssh
)

foreach(mod IN LISTS MODULES)
    include(modules/${mod}.cmake)
endforeach(mod)
