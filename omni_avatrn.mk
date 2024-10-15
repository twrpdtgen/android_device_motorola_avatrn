#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from avatrn device
$(call inherit-product, device/motorola/avatrn/device.mk)

PRODUCT_DEVICE := avatrn
PRODUCT_NAME := omni_avatrn
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 2024
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="avatrn-user 12 U2UANS34.72-43-2-3 843030 release-keys"

BUILD_FINGERPRINT := motorola/avatrn/avatrn:12/U2UANS34.72-43-2-3/843030:user/release-keys
