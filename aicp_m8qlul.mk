# Release name
PRODUCT_RELEASE_NAME := m8qlul

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/config/bootanimation.mk

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m8qlul/full_m8qlul.mk)

BOARD_VENDOR := htc

# Device naming
PRODUCT_NAME := aicp_m8qlul
PRODUCT_DEVICE := m8qlul
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC One M8s

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
     DEVICE_MAINTAINERS="ata-kaner" 

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
     PRODUCT_NAME=m8qlul_htc_europe \
     TARGET_DEVICE=htc_m8qlul \
     PRODUCT_NAME="HTC One M8s" \
     PRODUCT_DEVICE="m8qlul" \
     PRIVATE_BUILD_DESC="2.21.401.1 CL826429 release-keys"
    
PRODUCT_GMS_CLIENTID_BASE := android-htc

BUILD_FINGERPRINT := "htc/m8qlul_htc_europe/htc_m8qlul:6.0.1/MMB29M/826429.1:user/release-keys"

PRODUCT_OVERRIDE_INFO := true
PRODUCT_OVERRIDE_FINGERPRINT := htc/m8qlul_htc_europe/htc_m8qlul:6.0.1/MMB29M/826429.1:user/release-keys
