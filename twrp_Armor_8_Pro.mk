#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from Armor_8_Pro device
$(call inherit-product, device/ulefone/Armor_8_Pro/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
#$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit common product files - PBRP
#$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root) \
	$(LOCAL_PATH)/prebuilt/dtb.img:dtb.img

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Armor_8_Pro
PRODUCT_NAME := twrp_Armor_8_Pro
PRODUCT_BRAND := ulefone
PRODUCT_MODEL := Armor 8 Pro
PRODUCT_MANUFACTURER := ulefone
