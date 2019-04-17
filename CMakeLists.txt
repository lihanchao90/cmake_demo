cmake_minimum_required (VERSION 2.8)

project(demo)
# compile flags support gdb
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

# version
set (Demo_VERSION_MAJOR 0)
set (Demo_VERSION_MINOR 1)
message(STATUS "project version is V${Demo_VERSION_MAJOR}.${Demo_VERSION_MINOR}")

# CMAKE_INSTALL_PREFIX
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/build_arm)
message(STATUS "CMAKE_INSTALL_PREFIX = ${PROJECT_SOURCE_DIR}/build_arm")
# toolchains
include(imx6.cmake)
message(STATUS "CMAKE_C_COMPILER=${tools}/bin/arm-none-linux-gnueabi-gcc")
# Add sub directories
add_subdirectory(src)
add_subdirectory(lib)

include (InstallRequiredSystemLibraries)
set (CPACK_PACKAGE_VERSION_MAJOR "${Demo_VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${Demo_VERSION_MINOR}")
include (CPack)


