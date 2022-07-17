cmake_minimum_required(VERSION 3.23)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

set(PICO_SDK_PATH ../../pico-sdk/)


# # Pull in SDK (must be before project)
include(../pico-sdk/external/pico_sdk_import.cmake)

project(blink C CXX ASM)

# Initialize the SDK
pico_sdk_init()

add_executable(blink
    main.c
)

# pull in common dependencies
target_link_libraries(blink
    pico_stdlib
)

# create map/bin/hex file etc.
pico_add_extra_outputs(blink)
