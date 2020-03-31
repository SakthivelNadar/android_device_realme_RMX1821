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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Realme RMX1825
$(call inherit-product, device/Realme/RMX1821/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Bootanimation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1520

PRODUCT_NAME := lineage_RMX1821
PRODUCT_DEVICE := RMX1821
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 3

PRODUCT_GMS_CLIENTID_BASE := android-Realme

TARGET_VENDOR_PRODUCT_NAME := RMX1821
TARGET_VENDOR_DEVICE_NAME := RMX1821

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="RMX1821" \
    PRODUCT_NAME="RMX1821" \
    PRIVATE_BUILD_DESC="full_Realme3_17065-user 9 PPR1.180610.011 eng.root.20200215.081652 release-keys"

BUILD_FINGERPRINT := "Realme/RMX1821/RMX1821:9/PPR1.180610.011/1579589611:user/release-keys"

