set(CMAKE_ASM_SOURCE_FILE_EXTENSIONS "asm")
set(CMAKE_ASM_OUTPUT_EXTENSION ".obj")

string(JOIN CMAKE_ASM_COMPILE_OBJECT " "
  "<CMAKE_ASM_COMPILER>"
  "<INCLUDES>"
  "<COMPILE_DEFINITIONS>"
  "<FLAGS>"
  "-o" "<OBJECT>"
  "<SOURCE>")

set(CMAKE_DEPFILE_FLAGS_ASM "-M -MF <DEP_FILE>")
