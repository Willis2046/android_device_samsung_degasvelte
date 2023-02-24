# Release name
PRODUCT_RELEASE_NAME := degasveltezt

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
# Using phone since 3g/gsm is available
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/degasvelet/degasveltezt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := degasvelte
PRODUCT_NAME := degasveltezt
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T2397
PRODUCT_MANUFACTURER := samsung
