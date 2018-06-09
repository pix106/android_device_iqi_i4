DEVICE_DIR := device/aqr/i4pro
VENDOR_DIR := vendor/aqr/i4pro

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(DEVICE_DIR)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Get non-open-source specific aspects
$(call inherit-product-if-exists, $(VENDOR_DIR)/i4pro-vendor.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_DIR)/overlay

# Overlay Binaries
#$(call inherit-product, $(DEVICE_DIR)/overlay-binaries/overlay-binaries.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0


PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel


# call dalvik heap config
#$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)


# call hwui memory config		
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

