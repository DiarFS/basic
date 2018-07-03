cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

set(BASIC_PROJECT_NAME steam_populate)
project(${STEAM_PROJECT_NAME} CXX)

add_subdirectory(src)
# link_directories(${PROJECT_SOURCE_DIR}/dependencies/)

add_executable(${PROJECT_NAME} ${PROJECT_SOURCE_FILES})
set(CMAKE_CXX_STANDARD 11)

# include_directories(BEFORE ${PROJECT_SOURCE_DIR}/include)

target_link_libraries(${PROJECT_NAME} PUBLIC winmm.lib ws2_32.lib steam_api64.lib)

set(BASIC_OUTPUT_DIR ${PROJECT_BINARY_DIR}/bin)

set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${BASIC_OUTPUT_DIR})
set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_DEBUG ${BASIC_OUTPUT_DIR})


# add_subdirectory(etc)
# configure_file(# FROM_DIRECTORY # TO_DIRECTORY)

# add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#     COMMAND ${CMAKE_COMMAND} -E copy
#     # FROM_DIRECTORY
#     # TO_DIRECTORY