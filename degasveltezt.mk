# Copyright (C) 2013 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, vendor/omni/config/common.mk)
# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := degasveltezt
PRODUCT_DEVICE := degasvelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T2397

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
PRODUCT_BUILD_PROP_OVERRIDES += \

# Inherit makefile
$(call inherit-product, device/samsung/degasvelte/device.mk)

# Vendor blobs
$(call inherit-product-if-exists, vendor/samsung/degasvelte/degasvelte-vendor.mk)
