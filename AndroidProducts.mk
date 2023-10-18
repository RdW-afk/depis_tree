#
# Copyright (C) 2020 The LineageOS Project
#
# Copyright (C) 2021 DerpFest
# 
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/afterlife_X00TD.mk

COMMON_LUNCH_CHOICES := \
    afterlife_X00TD-userdebug

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/derp_X00TD.mk

COMMON_LUNCH_CHOICES += \
    derp_X00TD-userdebug 