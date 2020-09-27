#Device path
DEVICE_PATH := device/bq/freezerhd

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt8163

# Platform
TARGET_BOARD_PLATFORM := mt8163

# mediaTek Hea
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

# Board Suffix
TARGET_BOARD_SUFFIX := _64

# Binder
TARGET_USES_64_BIT_BINDER := true

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_KERNEL_CMDLINE := "bootopt=64S3,32N2,32N2 buildvariant=eng androidboot.selinux=permissive"
BOARD_MKBOOTIMG_ARGS := --pagesize 2048 --base 0x40078000 --kernel_offset 0x00008000 --ramdisk_offset 0x14f88000 --second_offset 0x00e88000 --tags_offset 0x13f88000 --cmdline $(BOARD_KERNEL_CMDLINE)

# MediaTek Flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true

# Partition Sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1000000

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery Varaint
RECOVERY_VARIANT := twrp

# TWRP Flags
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_INCREASES_COLDBOOT_TIMEOUT := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 128
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := false
TW_NO_EXFAT := false
TW_USE_TOOLBOX := true

# MTP/USB
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_NO_USB_STORAGE := false

# Storage
BOARD_HAS_NO_REAL_SDCARD := true
TW_IGNORE_MISC_WIPE_DATA := true
RECOVERY_SDCARD_ON_DATA := true

# Recovery Partition Table
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/etc/twrp.fstab

# Screen
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 800x1280
DEVICE_SCREEN_WIDTH := 800
DEVICE_SCREEN_HEIGHT := 1280

# Decryption
TW_INCLUDE_CRYPTO := false
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data=ordered"

# Allow Missing Dependencies (Required for minimal TWRP)
ALLOW_MISSING_DEPENDENCIES := true
