#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/titanium/config/common_full_phone.mk)

# Gapps
TARGET_GAPPS_ARCH := arm64
WITH_GMS=true
TARGET_INCLUDE_STOCK_GAPPS=true
TARGET_INCLUDE_LIVE_WALLPAPERS=true
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

REMOVE_GAPPS_PACKAGES += \
        YouTube \
        YouTubeMusicPrebuilt \
        Maps \
        Drive \
        FilesPrebuilt \
        VancedMicroG \
        MicropaperPrebuilt \
        Photos \
        PrebuiltGmail \
        WellbeingPrebuilt

# Face unlock
TARGET_USES_FACE_UNLOCK := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := titanium_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := POCO/surya_global/surya:10/QKQ1.200512.002/V12.0.8.0.QJGMIXM:user/release-keys
TARGET_INCLUDE_PIXEL_CHARGER := true
