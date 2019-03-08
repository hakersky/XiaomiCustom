#
# Copyright (C) 2017-2019 The LineageOS Project
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

VENDOR_XIAOMICUSTOM := vendor/XiaomiCustom

# Inherit MiuiCamera
$(call inherit-product, vendor/XiaomiCustom/MiuiCamera/MiuiCamera.mk)

# aptX
PRODUCT_COPY_FILES += \
    $(VENDOR_XIAOMICUSTOM)/system/lib64/libaptXHD_encoder.so:system/lib64/libaptXHD_encoder.so \
    $(VENDOR_XIAOMICUSTOM)/system/lib64/libaptX_encoder.so:system/lib64/libaptX_encoder.so

# Mlipay
PRODUCT_COPY_FILES += \
    $(VENDOR_XIAOMICUSTOM)/system/lib64/vendor.xiaomi.hardware.mlipay@1.0.so:system/lib64/vendor.xiaomi.hardware.mlipay@1.0.so \
    $(VENDOR_XIAOMICUSTOM)/system/lib64/vendor.xiaomi.hardware.mlipay@1.1.so:system/lib64/vendor.xiaomi.hardware.mlipay@1.1.so \
    $(VENDOR_XIAOMICUSTOM)/system/vendor/etc/init/vendor.xiaomi.hardware.mlipay@1.1-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.xiaomi.hardware.mlipay@1.1-service.rc \
    $(VENDOR_XIAOMICUSTOM)/system/vendor/bin/mlipayd@1.1:$(TARGET_COPY_OUT_VENDOR)/bin/mlipayd@1.1 \
    $(VENDOR_XIAOMICUSTOM)/system/vendor/lib64/libmlipay.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libmlipay.so \
    $(VENDOR_XIAOMICUSTOM)/system/vendor/lib64/libmlipay@1.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libmlipay@1.1.so 

# Properties
-include $(VENDOR_XIAOMICUSTOM)/custom-props.mk

