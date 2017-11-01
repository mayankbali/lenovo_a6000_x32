# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Device identifier. This must come after all inclusions
TARGET_VENDOR := Lenovo
PRODUCT_DEVICE := a6000
PRODUCT_NAME := full_a6000
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := A6000
PRODUCT_MANUFACTURER := Lenovo

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Inherit from a6000 device
$(call inherit-product, device/lenovo/a6000/device.mk)

# Include Bootanimation configuration
TARGET_BOOTANIMATION_PRELOAD 	     := true
TARGET_BOOTANIMATION_TEXTURE_CACHE   := true

LOCAL_PATH := device/lenovo/a6000

DEVICE_PACKAGE_OVERLAYS := \
   $(LOCAL_PATH)/overlay

$(call inherit-product, device/lenovo/msm8916-common/BoardConfigCommon.mk)

$(call inherit-product, vendor/lenovo/a6000/a6000-vendor.mk)
