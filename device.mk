# Copyright (C) 2015 The CyanogenMod Project
# 2017-2019 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit the vendor files
$(call inherit-product, vendor/htc/m8qlul/m8qlul-vendor.mk)

# Inherit product launch version (5.0.1-Lollipop)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
$(LOCAL_PATH)/overlay \
$(LOCAL_PATH)/overlay-lineage

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_ENFORCE_RRO_TARGETS := *

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/com.htc.software.market.xml:system/vendor/etc/permissions/com.htc.software.market.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/vendor/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/vendor/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/vendor/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/vendor/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/vendor/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/vendor/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/vendor/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/vendor/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/vendor/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/vendor/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/vendor/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/vendor/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/vendor/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/vendor/etc/permissions/com.nxp.mifare.xml
    
# APEX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ld.config.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/swcodec/ld.config.txt

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@7.0-impl \
    android.hardware.audio.service \
    android.hardware.audio.effect@7.0-impl \
    audio.primary.msm8916 \
    audio_amplifier.msm8916 \
    audio_policy.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_mfg.txt:system/vendor/etc/sound_mfg.txt \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:system/vendor/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths_wcd9306.xml:system/vendor/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:system/vendor/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/soundimage/srsfx_trumedia_ext.cfg:system/vendor/etc/soundimage/srsfx_trumedia_ext.cfg \
    $(LOCAL_PATH)/configs/audio/soundimage/srsfx_trumedia_ext_HS250.cfg:system/vendor/etc/soundimage/srsfx_trumedia_ext_HS250.cfg \
    $(LOCAL_PATH)/configs/audio/soundimage/srsfx_trumedia_ext_MAX300.cfg:system/vendor/etc/soundimage/srsfx_trumedia_ext_MAX300.cfg \
    $(LOCAL_PATH)/configs/audio/soundimage/srsfx_trumedia_int.cfg:system/vendor/etc/soundimage/srsfx_trumedia_int.cfg \
    $(LOCAL_PATH)/configs/audio/soundimage/srsmodels.lic:system/vendor/etc/soundimage/srsmodels.lic \
    $(LOCAL_PATH)/configs/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/vendor/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio \
    antradio_app

# Bluetooth
PRODUCT_PACKAGES += \
    com.quicinc.wbc \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl \
    camera.msm8916 \
    libcamera_client_htc \
    libmm-qcamera \
    libshim_camera \
    Snap \
    libcameraface

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hdrhax:system/vendor/etc/hdrhax

# Connectivity Engine Support
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl 
    
# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.memtrack@1.0-impl \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    memtrack.msm8916 \
    libtinyxml \
    libxml2 \
    libgenlock 

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.4-service.clearkey

# FlipFlap (For DotView Case)
PRODUCT_PACKAGES += \
    FlipFlap

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software

# Gestures
PRODUCT_PACKAGES += \
    GestureHandler

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service \
    libloc_eng \
    libloc_core \
    libgps.utils \
    gps.msm8916 \
    libshim_izat

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/vendor/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/vendor/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/vendor/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/vendor/etc/izat.conf

# Healthd
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0-java

# HTC Log Symbols
PRODUCT_PACKAGES += \
    liblog_htc \
    libhlg

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/vendor/etc/sec_config

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/projector_input.idc:system/vendor/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/configs/idc/hsml_touchscreen.idc:system/vendor/usr/idc/hsml_touchscreen.idc \
    $(LOCAL_PATH)/configs/idc/synaptics-rmi-touchscreen.idc:system/vendor/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/device-keypad.kl:system/vendor/usr/keylayout/device-keypad.kl \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/vendor/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/m1120.kl:system/vendor/usr/keylayout/m1120.kl \
    $(LOCAL_PATH)/configs/keylayout/synaptics-rmi-touchscreen.kl:system/vendor/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/configs/keylayout/projector-Keypad.kl:system/vendor/usr/keylayout/projector-Keypad.kl

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.m8qlul \

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sysfs

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_sw_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sw_vendor.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Netutils
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0-impl \
    android.hardware.nfc@1.0-service \
    com.android.nfc_extras \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:$(TARGET_COPY_OUT_VENDOR)/etc/nfcee_access.xml \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    android.hardware.power.stats@1.0-service.mock

# QMI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml
    
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom_first_stage \
    fstab.swap \
    init.qcom.rc \
    init.htc.usb.rc \
    init.extras.rc \
    init.sensors.rc \
    init.qcom.power.rc \
    ueventd.qcom.rc

PRODUCT_PACKAGES += \
    init.qcom.bt.sh \
    init.qcom.mem.sh

# Renderscript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    libshim_ril \
    libaudioclient_shim

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Thermal
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service 

# Touch HAL
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.m8qlul

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Legacy Encryption
PRODUCT_PACKAGES += \
    vendor.qti.hardware.cryptfshw@1.0-service-qti.qsee

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    libwcnss_qmi \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/hostapd.accept:system/vendor/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/wifi/hostapd.conf:system/vendor/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/wifi/hostapd.deny:system/vendor/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    kernel/htc/msm8939/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/htc/msm8939/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_wlan_nv.bin:system/vendor/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
    
# Protobuf
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-lite-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-full-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-full-v28.so \
    prebuilts/vndk/v28/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-lite-v28.so

# WiFi Display
ifneq ($(QCPATH),)
PRODUCT_BOOT_JARS += WfdCommon
endif
