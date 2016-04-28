# Release name
PRODUCT_RELEASE_NAME := GT-S7392

# Inherit some common CM stuff.
$(call inherit-product, vendor/mahdi/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kyleve/device_kyleve.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kyleve
PRODUCT_NAME := mahdi_kyleve
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7392
PRODUCT_CHARACTERISTICS := phone
