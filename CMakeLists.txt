cmake_minimum_required(VERSION 3.10)
project(modules)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

enable_testing()
add_subdirectory(test)
