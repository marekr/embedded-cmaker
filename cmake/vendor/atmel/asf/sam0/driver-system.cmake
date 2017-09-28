
list (APPEND VENDOR_ATMEL_ASF_SRC_FILES
        "src/ASF/sam0/drivers/system/system.c"
        "src/ASF/sam0/drivers/system/pinmux/pinmux.c"
        "src/ASF/sam0/drivers/system/interrupt/system_interrupt.c"
        "src/ASF/sam0/drivers/system/clock/clock_samd21_r21/clock.c"
        "src/ASF/sam0/drivers/system/clock/clock_samd21_r21/gclk.c"
        )

list (APPEND VENDOR_ATMEL_ASF_INCLUDES
        "src/ASF/sam0/drivers/system"
        "src/ASF/sam0/drivers/system/interrupt"
        "src/ASF/sam0/drivers/system/reset"
        "src/ASF/sam0/drivers/system/reset/reset_sam_d_r"
        "src/ASF/sam0/drivers/system/power/power_sam_d_r"
        "src/ASF/sam0/drivers/system/interrupt/system_interrupt_samd21"
        "src/ASF/sam0/drivers/system/pinmux"
        "src/ASF/sam0/drivers/system/clock"
        "src/ASF/sam0/drivers/system/clock/clock_samd21_r21"
        )
