#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := begonia

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from begonia device
$(call inherit-product, device/redmi/begonia/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some extras stuff
$(call inherit-product-if-exists, vendor/MiuiCameraLeica/config.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := begonia
PRODUCT_NAME := lineage_begonia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/begonia/begonia:11/RP1A.200720.011/V12.5.8.0.RGGMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="begonia-user 11 RP1A.200720.011 V12.5.8.0.RGGMIXM release-keys" \
    DeviceName="begonia"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
