# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for stingray hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# A few more packages that aren't quite used on all builds
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    LiveWallpapersPicker \
    VisualizationWallpapers \

# Camera
PRODUCT_PACKAGES += \
    Camera

# GPS
PRODUCT_PACKAGES += \
    gps.tegra

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, device/malata/smba-common/device-common.mk)

$(call inherit-product-if-exists, vendor/malata/smba1002/smba1002-vendor.mk)

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/malata/smba1002/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_smba1002
PRODUCT_DEVICE := smba1002
PRODUCT_BRAND := Android
PRODUCT_MODEL := Full Android on Malata a1002

