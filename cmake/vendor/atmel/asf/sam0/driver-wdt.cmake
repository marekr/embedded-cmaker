

list (APPEND VENDOR_ATMEL_ASF_SRC_FILES
        "src/ASF/sam0/drivers/wdt/wdt.c"
        )

list (APPEND VENDOR_ATMEL_ASF_INCLUDES
        "src/ASF/sam0/drivers/wdt"
)

if(DEFINED VENDOR_ATMEL_ASF_DRIVER_WDT_OPT_CALLBACKMODE)
    if(VENDOR_ATMEL_ASF_DRIVER_WDT_OPT_CALLBACKMODE)
        add_definitions(-DWDT_CALLBACK_MODE=true)

        list (APPEND VENDOR_ATMEL_ASF_SRC_FILES
                "src/ASF/sam0/drivers/wdt/wdt_callback.c"
                )
    else()
        add_definitions(-DWDT_CALLBACK_MODE=false)
    endif()
else()
    message(SEND_ERROR "VENDOR_ATMEL_ASF_DRIVER_WDT_OPT_CALLBACKMODE MUST BE SET")
endif()