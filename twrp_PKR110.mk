#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/OnePlus/PKR110

# Inherit from device.mk configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := PKR110

## Device identifier
PRODUCT_DEVICE := PKR110
PRODUCT_NAME := twrp_PKR110
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PKR110
PRODUCT_MANUFACTURER := OnePlus

# Assert
TARGET_OTA_ASSERT_DEVICE := PKR110,OP60EBL1

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 111
TW_H_OFFSET := -111
