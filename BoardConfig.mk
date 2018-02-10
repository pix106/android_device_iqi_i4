#
# Device
#
DEVICE_DIR := device/aqr/i4pro
VENDOR_DIR := vendor/aqr/i4pro
KERNEL_DIR := kernel/aqr/i4pro

#
# Architecture
#
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

#
# Board
#
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 998244352
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14302052352
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_LARGE_FILESYSTEM := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_USERIMAGES_USE_EXT4 := true

#
# Kernel
#
BUILD_KERNEL_FROM_SOURCE := false
ifeq ($(BUILD_KERNEL_FROM_SOURCE),true)
    # build kernel from sources
    TARGET_KERNEL_SOURCE := $(KERNEL_DIR)
    TARGET_KERNEL_CONFIG := mt6580_defconfig
    TARGET_KMODULES := true         # is it needed ?
else
    # use prebuilt kernel
    TARGET_PREBUILT_KERNEL := $(DEVICE_DIR)/kernel
endif

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive

#
# Boot
#
BOARD_MKBOOTIMG_ARGS := --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 #--second_offset = 0x0f00000

#
# Debug
#
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

#
# TWRP
#
TWHAVE_SELINUX := true
#TW_USE_TOOLBOX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_EXTRA_LANGUAGES := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
#TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_SUPERSU := true

# Filesystem and storage
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
FLASH_FROM_STORAGE := true	# flashes zips from their current location instead of copying them to /tmp
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_INJECTTWRP := false
#TW_NO_EXFAT_FUSE := true
#TW_NO_EXFAT := true
#TARGET_USERIMAGES_USE_F2FS := true	# Compatible kernel needed
#TW_NEVER_UNMOUNT_SYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true # "Some MMCs have VERY slow secure erase - use standard erase instead"

# Theme and graphics
TW_ROUND_SCREEN := true
TW_INCLUDE_FB2PNG := true
#TW_BRIGHTNESS_PATH := "/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255		# Max brightness to prevent display damage
TW_DEFAULT_BRIGHTNESS := 128

TW_THEME := watch_mdpi
#TW_CUSTOM_THEME := device/aqr/i4pro/recovery/theme/watch_mdpi_400


