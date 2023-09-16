if (IS_DIRECTORY "$ENV{PVSNESLIB_HOME}")
  cmake_path(CONVERT "$ENV{PVSNESLIB_HOME}"
    TO_CMAKE_PATH_LIST CMAKE_SNES_ROOT
    NORMALIZE)
endif()

if (NOT IS_DIRECTORY "${CMAKE_SNES_ROOT}")
  message(FATAL_ERROR "SNES: Could not find PVSNES Directory")
endif()