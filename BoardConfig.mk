#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lge/alphaplus

# inherit from common tree
-include device/lge/sm8150-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_CONFIG := vendor/lineageos_alpha_defconfig

# Platform
SOONG_CONFIG_NAMESPACES += LGE_LIGHTS_HAL
SOONG_CONFIG_LGE_LIGHTS_HAL := INCLUDE_DIR
SOONG_CONFIG_LGE_LIGHTS_HAL_INCLUDE_DIR := $(DEVICE_PATH)/include

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90

# inherit from the proprietary version
-include vendor/lge/alphaplus/BoardConfigVendor.mk
