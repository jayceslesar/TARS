cmake_minimum_required(VERSION 3.23)

# include sdk path
include(../pico-sdk/external/pico_sdk_import.cmake)

project(blink C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(blink
    main.c
)

# create map/bin/hex file etc.
pico_add_extra_outputs(blink)

# pull in common dependencies
target_link_libraries(blink
    pico_stdlib
)
