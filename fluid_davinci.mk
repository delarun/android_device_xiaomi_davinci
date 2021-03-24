#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common FluidOS stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

FLUID_BUILD_TYPE := OFFICIAL

PRODUCT_NAME := fluid_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=Zadli \
  ro.fluid.cpu=SDM730G
