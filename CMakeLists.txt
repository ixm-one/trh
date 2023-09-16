cmake_minimum_required(VERSION 3.25)
cmake_policy(SET CMP0140 NEW)
list(PREPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/Modules")
include(CMakePrintHelpers)

return(PROPAGATE CMAKE_MODULE_PATH)
