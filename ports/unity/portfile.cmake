vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ThrowTheSwitch/Unity
    REF v2.6.0_RC1
    SHA512 0
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
