#
# Copyright (C) 2020 The LineageOS Project
#
# Copyright (C) 2021 DerpFest
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/asus/sdm660-common/sdm660.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

ifeq ($(strip $(PRODUCT_NAME)), "derp_X00TD")
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-derp
endif

ifeq ($(strip $(PRODUCT_NAME)), "afterlife_X00TD")
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
endif

# PRODUCT_SHIPPING_API_LEVEL indicates the first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 27

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc

# Thermal configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Wifi
PRODUCT_PACKAGES += \
    X00TDWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/asus/X00TD/X00TD-vendor.mk)
