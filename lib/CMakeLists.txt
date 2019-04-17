# Add all sources
aux_source_directory(. DIR_LIB_SRCS)

# make shared lib
add_library (MathFunctions SHARED ${DIR_LIB_SRCS})


# install lib at CMAKE_INSTALL_PREFIX/lib
install (TARGETS MathFunctions DESTINATION lib)
# install headers at CMAKE_INSTALL_PREFIX/include
install (FILES "${PROJECT_SOURCE_DIR}/lib/MathFunctions.h" DESTINATION include)
