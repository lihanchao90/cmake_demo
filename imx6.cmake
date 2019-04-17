set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(tools /opt/gcc-fsl/fsl-linaro-toolchain)

set(CMAKE_C_COMPILER ${tools}/bin/arm-none-linux-gnueabi-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/arm-none-linux-gnueabi-g++)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
