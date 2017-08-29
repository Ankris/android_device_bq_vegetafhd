LOCAL_PATH := device/bq/vegetafhd

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := vegetafhd

# Platform
TARGET_BOARD_PLATFORM := mt6592
MTK_BOARD_PLATFORMS := mt6592
MTK_PLATFORM := mt6592
MTK_PROJECT := vegetafhd

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Resolution
DEVICE_RESOLUTION := 1080x1920

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10092544
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10092544
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 738197504
BOARD_CACHEIMAGE_PARTITION_SIZE := 726564864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 25
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# Kernel
TARGET_PREBUILT_KERNEL := device/bq/vegetafhd/kernel

# OTA
TARGET_OTA_ASSERT_DEVICE := vegetafhd,Aquaris_E5FHD,E5FHD
BLOCK_BASED_OTA := false
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/recovery.fstab

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Power and native tap-to-wake
TARGET_POWERHAL_VARIANT := mtk-power
TARGET_POWER_SET_FEATURE_LIB := power-feature-mtk

# OpenGL GRAPHICS
USE_OPENGL_RENDERER := true

# WiFi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM		 := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA			 := STA
WIFI_DRIVER_FW_PATH_PARAM		 := AP
WIFI_DRIVER_FW_PATH_P2P			 := P2P

USE_MINIKIN := true
MALLOC_IMPL := dlmalloc

# Framework
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# FONTS
EXTENDED_FONT_FOOTPRINT := true

# SYSTEM PROP
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# RIL
SIM_COUNT := 2
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USERIMAGES_USE_EXT4:=true
USE_CAMERA_STUB := true

# SEPolicy
BOARD_SEPOLICY_DIRS += \
    device/bq/vegetafhd/sepolicy
