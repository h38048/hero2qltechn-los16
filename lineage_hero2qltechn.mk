#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2026 hero2qltechn los16-port
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hero2qltechn device
$(call inherit-product, device/samsung/hero2qltechn/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hero2qltechn
PRODUCT_DEVICE := hero2qltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9350
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# 国行最终官方固件指纹（安卓8.0），有助于三星自家组件的兼容判断
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="hero2qltezc" \
    TARGET_DEVICE="hero2qltechn" \
    PRIVATE_BUILD_DESC="hero2qltezc-user 8.0.0 R16NW G9350ZCS5CTA1 release-keys"

BUILD_FINGERPRINT := samsung/hero2qltezc/hero2qltechn:8.0.0/R16NW/G9350ZCS5CTA1:user/release-keys

TARGET_VENDOR := samsung
