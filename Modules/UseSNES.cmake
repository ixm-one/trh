include_guard(GLOBAL)

set(TRH_SNES_GRAPHICS_OPTIONS "-pr -pc16 -n -gs8 -pe0 -m")

define_property(TARGET PROPERTY SNES_GRAPHICS_OPTIONS INITIALIZE_FROM TRH_SNES_GRAPHICS_OPTIONS)
define_property(TARGET PROPERTY SNES_GRAPHICS_PICS)
define_property(TARGET PROPERTY SNES_GRAPHICS_QUIET)

function (add_snes_graphics name)
  add_custom_target(${name}
    DEPENDS
      $<GENEX_EVAL:$<TARGET_PROPERTY:${name},SNES_GRAPHICS_PICS>>)
endfunction()

function (target_snes_graphics target)
  cmake_parse_arguments(ARG "" "INTERFACE;PUBLIC;PRIVATE" "" ${ARGN})
  foreach (source IN LISTS ARG_PRIVATE ARG_PUBLIC)
    # Change the path to exist under the binary directory
    set(output $<PATH:REPLACE_EXTENSION,LAST_ONLY,${source},${extension}>)
    # TODO: Set the working directory to the binary dir location
    add_custom_command(OUTPUT "${output}"
      COMMAND SNES::GfxConverter
        $<GENEX_EVAL:$<TARGET_PROPERTY:SNES_GRAPHICS_OPTIONS>>
        $<$<GENEX_EVAL:$<TARGET_PROPERTY:SNES_GRAPHICS_QUIET>>:-q>
        -f$<LOWER_CASE:$<PATH:GET_EXTENSION,LAST_ONLY,${source}>>
        "${source}"
    )
    set_property(TARGET ${target} APPEND PROPERTY SNES_GRAPHICS_PICS "${output}")
    set_property(DIRECTORY APPEND PROPERTY ADDITIONAL_CLEAN_FILES "${output}")
  endforeach()
endfunction()
