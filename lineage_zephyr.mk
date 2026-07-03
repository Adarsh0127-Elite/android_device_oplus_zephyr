# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from the custom device configuration.
$(call inherit-product, device/oplus/zephyr/device.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Oplus
PRODUCT_DEVICE := zephyr
PRODUCT_MANUFACTURER := Oplus
PRODUCT_MODEL := mt6895
PRODUCT_NAME := lineage_zephyr

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_cn_armv82-user 15 AP3A.240617.008 1755697740151 release-keys" \
    BuildFingerprint=OnePlus/PGKM10/OP5565:15/AP3A.240617.008/S.1f56c75-1-a469:user/release-keys \
    DeviceName=PGKM10 \
    DeviceProduct=PGKM10 \
    SystemDevice=PGKM10 \
    SystemName=PGKM10

# LunarisAOSP
LUNARIS_BUILD_TYPE := UNOFFICIAL
TARGET_CUSTOM_UDFPS := true
WITH_GMS := false
WITH_GMS_COMMS_SUITE := false
WITH_PIXEL_LAUNCHER := false
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := true
PERF_ANIM_OVERRIDE := true
USE_REALITY_ENGINE := false
SURFACE_FLINGER_BOOST := true
TARGET_USE_FILES := false
TARGET_USE_GPHOTOS := false


