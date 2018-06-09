DEVICE_DIR := device/aqr/i4pro

# Inherit from those products. Most specific first.
$(call inherit-product, $(DEVICE_DIR)/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_CHARACTERISTICS := watch

# init
PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    $(DEVICE_DIR)/rootdir/factory_init.rc:root/factory_init.rc \
    $(DEVICE_DIR)/rootdir/init.aee.rc:root/init.aee.rc \
    $(DEVICE_DIR)/rootdir/init.modem.rc:root/init.modem.rc \
    $(DEVICE_DIR)/rootdir/init.mt6580.rc:root/init.mt6580.rc \
    $(DEVICE_DIR)/rootdir/init.mt6580.usb.rc:root/init.mt6580.usb.rc \
    $(DEVICE_DIR)/rootdir/init.nvdata.rc:root/init.nvdata.rc \
    $(DEVICE_DIR)/rootdir/init.project.rc:root/init.project.rc \
    $(DEVICE_DIR)/rootdir/init.recovery.mt6580.rc:root/init.recovery.mt6580.rc \
    $(DEVICE_DIR)/rootdir/init.ssd.rc:root/init.ssd.rc \
    $(DEVICE_DIR)/rootdir/init.xlog.rc:root/init.xlog.rc \
    $(DEVICE_DIR)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    $(DEVICE_DIR)/rootdir/meta_init.rc:root/meta_init.rc \
    $(DEVICE_DIR)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(DEVICE_DIR)/rootdir/ueventd.mt6580.rc:root/ueventd.mt6580.rc \
    $(DEVICE_DIR)/rootdir/enableswap.sh:root/enableswap.sh
#    $(DEVICE_DIR)/rootdir/init.trace.rc:root/init.trace.rc \
#    $(DEVICE_DIR)/rootdir/init.environ.rc:root/init.environ.rc \

# fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/rootdir/fstab.mt6580:root/fstab.mt6580

# sh	# Is there an other way to avoid "- exec '/system/bin/sh' failed: No such file or directory (2) -" ?
PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/rootdir/system/bin/sh:root/system/bin/sh

# libxlog
PRODUCT_PACKAGES += \
    libxlog
    
# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# libbt-vendor
PRODUCT_PACKAGES += \
    libbt-vendor


# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio_policy.default \
	audio_policy.stub \
	audio.r_submix.default \
	audio.usb.default \
	audio.primary.default \
	libaudio-resampler

# Bluetooth
PRODUCT_PACKAGES += \
	bluetooth.default

# network
PRODUCT_PACKAGES += \
    netd
    
# root access
PRODUCT_PACKAGES += \
	su

# Misc HW
PRODUCT_PACKAGES += \
	keystore.default \
	local_time.default \
	power.default \
	vibrator.default

# Wifi
PRODUCT_PACKAGES += \
	libwifi-hal-mt66xx \
	libwifi-hal

#
PRODUCT_PACKAGES += \
        libion \
	gralloc.default

PRODUCT_PACKAGES += \
	libtinyxml \
	libtinycompress


# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Keylayout overrides
#PRODUCT_COPY_FILES_OVERRIDES += \
#    system/usr/keylayout/Generic.kl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:frameworks/native/data/etc/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
# widevine.software.drm

PRODUCT_COPY_FILES += \
    $(DEVICE_DIR)/permissions/platform.xml:system/etc/permissions/i4pro.xml

# MTK (xen0n)
#PRODUCT_PACKAGES += \
#	libion_mtk \
#	libgralloc_extra

