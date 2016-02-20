USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/cubot/x9/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := x9

BOARD_KERNEL_CMDLINE := console=ttyMT0,921600n1 androidboot.hardware=mt6592 lcm=1-sanstar_mt6582m_nt35592_hd720_dsi_vdo_lcm_drv fps=5594
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 947912704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 902889472
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_PREBUILT_KERNEL := device/cubot/x9/kernel

#custom bootimg script
BOARD_CUSTOM_BOOTIMG_MK := device/cubot/x9/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --board 1419997733
BOARD_CUSTOM_BOOTIMG := true

# Cyanogenmod Recovery
TARGET_RECOVERY_FSTAB := device/cubot/x9/recovery/recovery.fstab
#TARGET_RECOVERY_DEVICE_DIRS += device/cubot/x9/
BOARD_HAS_NO_SELECT_BUTTON := true