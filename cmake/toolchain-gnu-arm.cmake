
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

if ("${GCC_TOOLCHAIN_PREFIX}" STREQUAL "")
    set(GCC_TOOLCHAIN_PREFIX "arm-none-eabi-")
endif()

set(BASE_DEBUG_FLAGS "-O0 -g3 -DDEBUG")
set(CMAKE_C_FLAGS_DEBUG   "${BASE_DEBUG_FLAGS}")
set(CMAKE_CXX_FLAGS_DEBUG "${BASE_DEBUG_FLAGS}")
set(CMAKE_ASM_FLAGS_DEBUG "${BASE_DEBUG_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG "")

set(BASE_RELEASE_FLAGS "-DNDEBUG")
set(CMAKE_C_FLAGS_RELEASE 	"${BASE_RELEASE_FLAGS}")
set(CMAKE_CXX_FLAGS_RELEASE "${BASE_RELEASE_FLAGS}")
set(CMAKE_ASM_FLAGS_RELEASE "${BASE_RELEASE_FLAGS}")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "")

include(toolchain-base-gcc)