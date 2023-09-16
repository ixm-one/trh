# Overview

TRH stands for Tom's Retro Hardware, as I've written this project so an old
work buddy of mine can target his retro hardware with CMake. The list of
eventual platforms to be supported is listed below:

 - [ ] SNES
 - [ ] WonderSwan
 - [ ] NeoGeo Pocket

To use TRH, simply make sure that this directory is on your `CMAKE_MODULE_PATH`
before calling `project` or `enable_language`. You can easily do this by either
using [`FetchContent`], or calling `add_subdirectory` if you're using a
vendored software approach.

[`FetchContent`]: https://cmake.org/cmake/help/latest/module/FetchContent.html
