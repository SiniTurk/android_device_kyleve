# Release name
PRODUCT_RELEASE_NAME := GT-S7272

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/logands/device_logands.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := logands
PRODUCT_NAME := cm_logands
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7272
PRODUCT_CHARACTERISTICS := phone
