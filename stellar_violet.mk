#
# Copyright (C) 2018-2020 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Stellar OS stuff.
$(call inherit-product, vendor/stellar/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64

# Stellar Flags
STELLAR_BUILD_TYPE = gapps
TARGET_USES_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit ANX Camera
$(call inherit-product, vendor/ANXCamera/config.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := stellar_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
