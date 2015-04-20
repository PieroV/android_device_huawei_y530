#
# Copyright 2014 The Android Open Source Project
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

# Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/cdma.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/y530/full_y530.mk)

# Correct boot animation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Device name
PRODUCT_DEVICE := y530
PRODUCT_NAME := cm_y530
PRODUCT_BRAND := huawei
PRODUCT_MODEL := y530
PRODUCT_MANUFACTURER := huawei
PRODUCT_RELEASE_NAME := y530

# CM packages
PRODUCT_PACKAGES += \
    Torch
