$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Time Zone data Credits to desalesouche => http://forum.xda-developers.com/showpost.php?p=64850444&postcount=1204
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL="I4Pro" \
    TARGET_DEVICE="I4Pro"

PRODUCT_NAME := omni_i4pro
PRODUCT_DEVICE := i4pro
