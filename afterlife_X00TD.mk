#
# Copyright (C) 2020 The LineageOS Project
#
# Copyright (C) 2023 AfterLife Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/full_X00TD.mk)

# Inherit some common Derpfest stuff
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# AfterLife flags
AFTERLIFE_MAINTAINER := Romeo_Delta_Wishkey

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_X00TD