cmake_minimum_required(VERSION 3.7)
set (CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# Load the toolchain definition before the project is declared or else it won't work!
include(toolchain-gnu-arm)
set(CMAKE_VERBOSE_MAKEFILE ON)

project(micro)