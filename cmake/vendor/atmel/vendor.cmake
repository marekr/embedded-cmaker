
#assume all CPU_TYPEs have AT prefix for what we do here
string(TOUPPER ${CPU_TYPE} _AT_CPU_TYPE_UPPER)
add_definitions(-D__${_AT_CPU_TYPE_UPPER}__)

string(REGEX REPLACE "^AT" "" _NONAT_CPU_TYPE_UPPER ${_AT_CPU_TYPE_UPPER})
add_definitions(-D__${_NONAT_CPU_TYPE_UPPER}__)

if(VENDOR_ATMEL_USE_ASF)
    include(vendor/atmel/asf/asf)

    #set(VENDOR_SRC_FILES ${VENDOR_SRC_FILES} ${VENDOR_ATMEL_ASF_SRC_FILES})
    #set(VENDOR_INCLUDES ${VENDOR_INCLUDES} ${VENDOR_ATMEL_ASF_INCLUDES})
endif()