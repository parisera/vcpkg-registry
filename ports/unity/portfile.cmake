vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ThrowTheSwitch/Unity
    REF v2.6.0_RC1
    SHA512 4c1b9679a93e4763532bd01ac099875ccf3342238cc468fa0e3aa1cf2a0ba2253d2f7d7fba29bb147d86cebae1fbcd429d16e106e4a46ed194c91976ab8ad998
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(
	INSTALL "${SOURCE_PATH}/LICENSE.txt"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
