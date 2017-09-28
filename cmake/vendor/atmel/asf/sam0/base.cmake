list (APPEND VENDOR_ATMEL_ASF_SRC_FILES
        "src/ASF/sam0/utils/syscalls/gcc/syscalls.c"
        "src/ASF/common/utils/interrupt/interrupt_sam_nvic.c"
        "src/ASF/sam0/utils/cmsis/samd21/source/system_samd21.c"
        "src/ASF/sam0/utils/cmsis/samd21/source/gcc/startup_samd21.c"
        )


list (APPEND VENDOR_ATMEL_ASF_INCLUDES
        "src/ASF/sam0/utils/cmsis/samd21/source"
        "src/ASF/sam0/utils/cmsis/samd21/include"
        "src/ASF/sam0/utils"
        "src/ASF/sam0/utils/preprocessor"
        "src/ASF/sam0/utils/header_files"
        "src/ASF/common/utils"
        "src/ASF/common/boards"
        "src/ASF/common2/boards/user_board"
        )