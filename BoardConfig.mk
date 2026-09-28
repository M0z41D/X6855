#
# Copyright (C) 2026 The OrangeFox Recovery Project
# Board Configuration for Infinix Note 50 Pro (X6855)
#

DEVICE_PATH := device/infinix/X6855

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_SMP := true

# Platform
TARGET_BOARD_PLATFORM := mt6789
TARGET_BOOTLOADER_BOARD_NAME := X6855

# Kernel & DTB Binaries (Mengambil dari repo M0z41D/X6855)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/prebuilt/dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Boot / Vendor Boot Header Options (Virtual A/B, GKI Architecture)
BOARD_BOOT_HEADER_VERSION := 3
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Partition Configuration
BOARD_USES_VENDOR_BOOTIMAGE := true
BOARD_BUILD_VENDOR_BOOT_IMAGE := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true

# Dynamic Partitions & File Systems
BOARD_SUPER_PARTITION_SIZE := 9126805504 # Sesuaikan jika diperlukan
BOARD_SUPER_PARTITION_GROUPS := infinix_dynamic_partitions
BOARD_RAMDISK_USE_LZ4 := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# OrangeFox Recovery Flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 2048
TW_DEFAULT_BRIGHTNESS := 1200
