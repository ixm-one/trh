# Overview

TRH stands for Tom's Retro Hardware, as I've written this project so an old
work buddy of mine can target his retro hardware with CMake. The list of
eventual platforms to be supported is listed below:

 - [ ] SNES
 - [ ] WonderSwan
 - [ ] NeoGeo Pocket

# Usage

As long as TRH is added to your `CMAKE_MODULE_PATH` prior to the first call to
`project()` or `enable_language`, you will be able to use its platform and
compiler detection features.

One of the easiest ways to use TRH is via [`FetchContent`]:

```cmake
cmake_minimum_required(VERSION 3.25)
include(FetchContent)
FetchContent_Declare(trh
    GIT_REPOSITORY https://github.com/ixm-one/trh
    GIT_TAG main)
FetchContent_MakeAvailable(trh)
```

Feel free to replace `main` with any `git rev-parse` capable entry. CMake will
use that specific revision to access it.

[`FetchContent`]: https://cmake.org/cmake/help/latest/module/FetchContent.html
