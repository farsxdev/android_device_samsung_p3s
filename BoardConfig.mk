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

## Inherit from the common tree
include device/samsung/universal2100-common/BoardConfigCommon.mk

# Inherit from the proprietary configuration
include vendor/samsung/p3s/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/p3s

# Build Hax
BUILD_BROKEN_DUP_RULES := true

## Camera ID's
# ID=50 is second telephoto camera
# ID=52 is telephoto camera
SOONG_CONFIG_samsungCameraVars_extra_ids := 50,52

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG := exynos2100-p3sxxx_defconfig

# Kernel modules
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
