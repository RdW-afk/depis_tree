#
# Copyright (C) 2020 The LineageOS Project
#
# Copyright (C) 2021 DerpFest
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/full_X00TD.mk)

# Inherit some common Derpfest stuff
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Official-ify
DERP_BUILDTYPE := UnOfficial
USE_LEGACY_BOOTANIMATION := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_X00TD
