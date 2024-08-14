#
# Copyright (C) 2022 The LineageOS Project
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

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from p3s device
$(call inherit-product, device/samsung/p3s/device.mk)

## Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

## Inherit some common Pixel Experience stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Matrixx
MATRIXX_CHIPSET := exynos2100
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 1440x3200
MATRIXX_MAINTAINER := farsxdev
TARGET_HAS_UDFPS := true
WITH_GMS := true

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_p3s
PRODUCT_DEVICE := p3s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G998B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# EPPE
TARGET_DISABLE_EPPE := true

