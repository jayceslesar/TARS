cmake_minimum_required(VERSION 3.12)

set(PICO_SDK_PATH ../pico-sdk/)

# Pull in SDK (must be before project)
include(pico-sdk/external/pico_sdk_import.cmake)

project(pico_examples C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialize the SDK
pico_sdk_init()

# Add blink example
add_subdirectory(blink)
