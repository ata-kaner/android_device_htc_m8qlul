# Copyright (C) 2015 The CyanogenMod Project
# 2017-2018 The LineageOS Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from m8qlul device
$(call inherit-product, device/htc/m8qlul/device.mk)


# Release name
PRODUCT_RELEASE_NAME := m8qlul
BOARD_VENDOR := htc

# Device naming
PRODUCT_NAME := lineage_m8qlul
PRODUCT_DEVICE := m8qlul
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC One M8s

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=m8qlul_htc_europe \
TARGET_DEVICE=htc_m8qlul

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="2.21.401.1 CL826429 release-keys"

BUILD_FINGERPRINT := "htc/m8qlul_htc_europe/htc_m8qlul:6.0.1/MMB29M/826429.1:user/release-keys"
