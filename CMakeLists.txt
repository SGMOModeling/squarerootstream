cmake_minimum_required(VERSION 3.16...3.25)

project(SquareRootStream
    VERSION 2.0.0
    LANGUAGES Fortran
)

# Make sure compiler is intel
if(NOT ${CMAKE_Fortran_COMPILER_ID} STREQUAL "Intel")
    message(FATAL_ERROR "SquareRootStream only supports the Intel Compiler at this time")
endif()

# set release build default. This only works for Linux
# windows visual studio build types are set at build time
# e.g. cmake --build . --config Release
if(NOT WIN32 OR NOT ${CMAKE_GENERATOR} MATCHES "Visual Studio")
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Release build is the default" FORCE)
endif()

add_executable(${PROJECT_NAME} SquareRootStream.f90)