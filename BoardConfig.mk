#
# Copyright 2019 The Android Open Source Project
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# mt6771 platform boardconfig
DEVICE_PATH := device/Realme/RMX1821

BOARD_VENDOR := Realme

# TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Assertions
TARGET_OTA_ASSERT_DEVICE := RMX1821,RMX1825

# system-as-root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Platform
TARGET_BOARD_PLATFORM := mt6771
TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_BOARD_PLATFORM_GPU := Mali-G72 MP3

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.configfs=true androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x14f88000 --second_offset 0x00e88000 --tags_offset 0x13f88000
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Security patch level
VENDOR_SECURITY_PATCH := 2020-02-05

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4513071104
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55135157760
BOARD_FLASH_BLOCK_SIZE := 131072  # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true

# fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6771

# System Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system_prop.mk

# VNDK
BOARD_VNDK_VERSION := current

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

#DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/double_tap_enable"
