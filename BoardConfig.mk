#
# Copyright (C) 2018 The LineageOS Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from sdm660-common
include device/xiaomi/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/wayne

# To enable system image
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

#AB
AB_OTA_UPDATER := false
BOARD_USES_RECOVERY_AS_BOOT := false

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/nvt_wake_gesture"

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm660
TARGET_KERNEL_CONFIG := wayne-perf_defconfig

TARGET_LIBINIT_EXTERNAL_DEFINES_FILE := $(DEVICE_PATH)/init/init_wayne.cpp

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# Root Folders
BOARD_ROOT_EXTRA_FOLDERS := persist efs

# WLAN MAC
WLAN_MAC_SYMLINK := true

# Security patch level
VENDOR_SECURITY_PATCH := 2018-11-01

# Inherit the proprietary files
