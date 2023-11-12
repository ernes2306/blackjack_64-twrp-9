#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from blackjack_64 device
$(call inherit-product, device/motorola/blackjack_64/device.mk)

PRODUCT_DEVICE := blackjack_64
PRODUCT_NAME := twrp_blackjack_64
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(8) power lite
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="blackjack_64-user 9 POD29.349-2 f03c3 release-keys"

BUILD_FINGERPRINT := motorola/blackjack_64/blackjack:9/POD29.349-2/f03c3:user/release-keys
