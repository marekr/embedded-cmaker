set(VENDOR_ATMEL_ASF_SRC_FILES "")
set(VENDOR_ATMEL_ASF_INCLUDES "")

include(vendor/atmel/asf/sam0/base)

if (VENDOR_ATMEL_ASF_DRIVER_PORT)
    include(vendor/atmel/asf/sam0/driver-port)
endif()

if (VENDOR_ATMEL_ASF_DRIVER_SYSTEM)
    include(vendor/atmel/asf/sam0/driver-system)
endif()

if (VENDOR_ATMEL_ASF_DRIVER_EXTINT)
    include(vendor/atmel/asf/sam0/driver-extint)
endif()

if (VENDOR_ATMEL_ASF_DRIVER_TC)
    include(vendor/atmel/asf/sam0/driver-tc)
endif()

if (VENDOR_ATMEL_ASF_DRIVER_WDT)
    include(vendor/atmel/asf/sam0/driver-wdt)
endif()

if (VENDOR_ATMEL_ASF_DRIVER_NVM)
    include(vendor/atmel/asf/sam0/driver-nvm)
endif()

if (VENDOR_ATMEL_ASF_SERVICE_IOPORT)
    include(vendor/atmel/asf/service-ioport)
endif()

if (VENDOR_ATMEL_ASF_SERVICE_SLEEPMGR)
    include(vendor/atmel/asf/service-sleepmgr)
endif()

if (VENDOR_ATMEL_ASF_SERVICE_DELAY)
    include(vendor/atmel/asf/sam0/service-delay)
endif()

if (VENDOR_ATMEL_ASF_SERVICE_EEPROM)
    include(vendor/atmel/asf/sam0/service-eeprom)
endif()

list (APPEND VENDOR_ATMEL_ASF_INCLUDES
        "src/ASF/thirdparty/Lib/GCC"
        "src/ASF/thirdparty/CMSIS/Include"
        "src/config"
    )

include_directories(${VENDOR_ATMEL_ASF_INCLUDES})

add_library(vendor_lib_atmel_asf
        ${VENDOR_ATMEL_ASF_SRC_FILES})