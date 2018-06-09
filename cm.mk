# Release name
PRODUCT_RELEASE_NAME := i4pro

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)


# Inherit device configuration
$(call inherit-product, device/aqr/i4pro/full_i4pro.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i4pro
PRODUCT_NAME := cm_i4pro
PRODUCT_BRAND := aqr
PRODUCT_MODEL := i4pro
PRODUCT_MANUFACTURER := aqr
PRODUCT_RELEASE_NAME := i4pro

TARGET_SCREEN_WIDTH := 400
TARGET_SCREEN_HEIGHT := 400

