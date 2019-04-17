cmake_minimum_required (VERSION 2.8)

aux_source_directory(. DIR_SRCS)

include_directories ("${PROJECT_SOURCE_DIR}/lib")
# Create the executable
add_executable(${PROJECT_NAME} ${DIR_SRCS})

target_link_libraries(${PROJECT_NAME} MathFunctions)

install (TARGETS ${PROJECT_NAME} DESTINATION bin)

message(STATUS "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}")
