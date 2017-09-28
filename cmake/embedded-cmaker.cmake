
set(TARGET_OUTPUT_NAME ${PROJECT_NAME}.elf)

#Make sure its all lowercase to avoid case sensitivity issues Linux vs Windows
string(TOLOWER ${CPU_TYPE} ${CPU_TYPE})

# Atmel SAMC21
if(CPU_TYPE STREQUAL "atsamc21j18a" OR
    CPU_TYPE STREQUAL "atsamc21j17a" )
    set(CPU_MTUNE "cortex-m0plus")
    set(CPU_FAMILY "SAMC21")
    set(CPU_VENDOR "atmel")
elseif(CPU_TYPE STREQUAL "atsamd21j18a"
        OR CPU_TYPE STREQUAL "atsamd21j17a"
        OR CPU_TYPE STREQUAL "atsamd21g16a"
        )
    set(CPU_MTUNE "cortex-m0plus")
    set(CPU_FAMILY "SAMD21")
    set(CPU_VENDOR "atmel")
elseif(CPU_TYPE STREQUAL "atsame70q20")
    set(CPU_MTUNE "m7")
else()
    message(FATAL_ERROR "Unknown cpu type ${CPU_TYPE}")
endif()

message("CPU Vendor: ${CPU_VENDOR}")
message("CPU Family: ${CPU_FAMILY}")
message("CPU Type: ${CPU_MTUNE}")

set(VENDOR_SRC_FILES "")
set(VENDOR_INCLUDES "")

set(_INCLUDED_FILE 0)
include(vendor/${CPU_VENDOR}/vendor OPTIONAL RESULT_VARIABLE _INCLUDED_FILE)

if (_INCLUDED_FILE)
    message("CPU Vendor Specific configuration loaded")
endif()

set(_INCLUDED_FILE 0)
include(vendor/${CPU_VENDOR}/${CPU_TYPE} OPTIONAL RESULT_VARIABLE _INCLUDED_FILE)

if (_INCLUDED_FILE)
    message("CPU CMake Specific configuration loaded")
endif()


set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -mcpu=${CPU_MTUNE}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mcpu==${CPU_MTUNE}")