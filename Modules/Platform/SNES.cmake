# determine define with __65816__ and __TINYC__

set(CMAKE_SYSTEM_INCLUDE_PATH
  "${CMAKE_SNES_ROOT}/devkitsnes/include"
  "${CMAKE_SNES_ROOT}/pvsneslib/include")
set(CMAKE_SYSTEM_PROGRAM_PATH
  "${CMAKE_SNES_ROOT}/devkitsnes/bin"
  "${CMAKE_SNES_ROOT}/devkitsnes/tools")
set(CMAKE_SYSTEM_LIBRARY_PATH
  "${CMAKE_SNES_ROOT}/pvsneslib/lib")
