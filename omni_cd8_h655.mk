#
# Copyright (C) 2019 Potato Open Sauce Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/tecno/cd8_h655

# Release name
PRODUCT_RELEASE_NAME := TECNO CD8

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)


# Inherit from device
$(call inherit-product, device/tecno/CD8-RU/device.mk)

# Inherit from our custom product configuration
#$(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, vendor/omni/config/common.mk)

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root) \
#    device/TECNO/CD8/prebuilt/dtb:dtb

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TECNO-CD8
PRODUCT_NAME := omni_cd8_h655
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CD8
PRODUCT_MANUFACTURER := TECNO MOBILE LIMITED
#ro.vendor.tran.device.name=TECNO CAMON 15 Pro

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
	
# Resolution
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=TECNO-CD8 \
    PRODUCT_NAME=CD8-RU \
    PRIVATE_BUILD_DESC="full_cd8_h655-user 10 QP1A.190711.020 62296 release-keys"

BUILD_FINGERPRINT := TECNO/CD8-RU/TECNO-CD8:10/QP1A.190711.020/B-RU-201228V115:user/release-keys
