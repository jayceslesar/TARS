cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
include(pico_sdk_import.cmake)

project(hello_usb C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

if (PICO_SDK_VERSION_STRING VERSION_LESS "1.3.0")
    message(FATAL_ERROR "Raspberry Pi Pico SDK version 1.3.0 (or later) required. Your version is ${PICO_SDK_VERSION_STRING}")
endif()

# Initialize the SDK
pico_sdk_init()

add_compile_options(-Wall
        -Wno-format          # int != int32_t as far as the compiler is concerned because gcc has int32_t as long int
        -Wno-unused-function # we have some for the docs that aren't called
        -Wno-maybe-uninitialized
        )

add_executable(hello_usb
hello_usb.c
        )

target_link_libraries(hello_usb
        pico_stdlib              # for core functionality
        pico_cyw43_arch_none
        )

pico_enable_stdio_usb(hello_usb 1)
pico_enable_stdio_uart(hello_usb 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hello_usb)

# add url via pico_set_program_url
# example_auto_set_url(hello_usb)