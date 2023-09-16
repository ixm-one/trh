include(FindPackageHandleStandardArgs)

find_program(${CMAKE_FIND_PACKAGE_NAME}_GfxConverter_EXECUTABLE
  NAMES gfx2snes
  HINTS tools)

find_program(${CMAKE_FIND_PACKAGE_NAME}_SoundMapConverter_EXECUTABLE
  NAMES smconv
  HINTS tools)

find_program(${CMAKE_FIND_PACKAGE_NAME}_BrrConverter_EXECUTABLE
  NAMES snesbrr
  HINTS tools)

find_program(${CMAKE_FIND_PACKAGE_NAME}_TmxConverter_EXECUTABLE
  NAMES tmx2snes
  HINTS tools)

find_program(${CMAKE_FIND_PACKAGE_NAME}_Constify_EXECUTABLE
  NAMES constify
  HINTS tools)

if (${CMAKE_FIND_PACKAGE_NAME}_GfxConverter_EXECUTABLE)
  set(${CMAKE_FIND_PACKAGE_NAME}_GfxConverter_FOUND YES)
endif()

if (${CMAKE_FIND_PACKAGE_NAME}_SoundMapConverter_EXECUTABLE)
  set(${CMAKE_FIND_PACKAGE_NAME}_SoundMapConverter_FOUND YES)
endif()

if (${CMAKE_FIND_PACKAGE_NAME}_BrrConverter_EXECUTABLE)
  set(${CMAKE_FIND_PACKAGE_NAME}_BrrConverter_FOUND YES)
endif()

if (${CMAKE_FIND_PACKAGE_NAME}_TmxConverter_EXECUTABLE)
  set(${CMAKE_FIND_PACKAGE_NAME}_TmxConverter_FOUND YES)
endif()

if (${CMAKE_FIND_PACKAGE_NAME}_Constify_EXECUTABLE)
  set(${CMAKE_FIND_PACKAGE_NAME}_Constify_FOUND YES)
endif()


find_package_handle_standard_args(${CMAKE_FIND_PACKAGE_NAME}
  HANDLE_COMPONENTS)

foreach (component IN ITEMS GfxConverter SoundMapConverter BrrConverter TmxConverter Constify)
  if (${CMAKE_FIND_PACKAGE_NAME}_${component}_FOUND AND NOT TARGET SNES::${component})
    add_executable(SNES::${component} IMPORTED)
    set_property(TARGET SNES::${component}
      PROPERTY
        IMPORTED_LOCATION "${${CMAKE_FIND_PACKAGE_NAME}_${component}_EXECUTABLE}")
  endif()
endforeach()
