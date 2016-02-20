# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := x9

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/cubot/x9/device_x9.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x9
PRODUCT_NAME := cm_x9
PRODUCT_BRAND := cubot
PRODUCT_MODEL := x9
PRODUCT_MANUFACTURER := cubot
