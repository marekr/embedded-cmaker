# Only Include from the toolchain specific config
# This is meant only as the gcc base
# i.e. include toolchain-gnu-arm or (future) toolchain-linaro

# Required for cross compilation or else the compiler test fails due to linker flags
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
# names of compiler based on the "ARM Gnu Embedded Toolchain" that ARM provides
set(CMAKE_C_COMPILER "${GCC_TOOLCHAIN_PREFIX}gcc")
set(CMAKE_CXX_COMPILER "${GCC_TOOLCHAIN_PREFIX}g++")
set(CMAKE_ASM_COMPILER "${GCC_TOOLCHAIN_PREFIX}as")

# this is sadly not a global already...lets define it ourselves
if (NOT DEFINED CMAKE_SIZE)
    find_program (CMAKE_SIZE "${GCC_TOOLCHAIN_PREFIX}size")
endif()

if (NOT DEFINED CMAKE_GDB)
    find_program (CMAKE_GDB "${GCC_TOOLCHAIN_PREFIX}gdb")
endif()

function(gcc_print_target_size TARGET)
    add_custom_command(TARGET ${TARGET} POST_BUILD
            COMMAND ${CMAKE_SIZE} $<TARGET_FILE:${TARGET}>)
endfunction()

function(gcc_generate_hex TARGET HEX_FILE)
    add_custom_command(TARGET ${TARGET} POST_BUILD
            COMMAND ${CMAKE_OBJCOPY} -Oihex $<TARGET_FILE:${TARGET}> ${HEX_FILE}
            COMMENT "Generating ${HEX_FILE}")
endfunction()


function(gcc_generate_bin TARGET BIN_FILE)
    add_custom_command(TARGET ${TARGET} POST_BUILD
            COMMAND ${CMAKE_OBJCOPY} -Obinary $<TARGET_FILE:${TARGET}> ${BIN_FILE}
            COMMENT "Generating ${BIN_FILE}")
endfunction()

function(gcc_generate_lss TARGET LSS_FILE)
    add_custom_command(TARGET ${TARGET} POST_BUILD
            COMMAND ${CMAKE_OBJDUMP} -h -S $<TARGET_FILE:${TARGET}> > ${LSS_FILE}
            COMMENT "Generating ${LSS_FILE}")
endfunction()





