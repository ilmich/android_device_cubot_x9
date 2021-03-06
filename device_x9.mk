#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/cubot/x9/x9-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/cubot/x9/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/cubot/x9/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Touchpad binary config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/etc/firmware/gt9xx_config.bin:recovery/root/etc/firmware/gt9xx_config.bin \
	$(LOCAL_PATH)/rootdir/etc/firmware/gt9xx_config.bin:root/etc/firmware/gt9xx_config.bin

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/fstab.mt6592:root/fstab.mt6592 \
	$(LOCAL_PATH)/rootdir/ueventd.mt6592.rc:root/ueventd.mt6592.rc \
	$(LOCAL_PATH)/rootdir/init.mt6592.rc:root/init.mt6592.rc \
	$(LOCAL_PATH)/rootdir/init.charging.rc:root/init.charging.rc \
	$(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/rootdir/init:root/init
