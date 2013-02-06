# Inherit AOSP device configuration for jewel.
$(call inherit-product, device/htc/jewel/full_jewel.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Jewel Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/jewel-common

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_jewel
PRODUCT_BRAND := htc
PRODUCT_DEVICE := jewel
PRODUCT_MODEL := EVO
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_jewel BUILD_ID=IMM76D BUILD_FINGERPRINT="sprint_wwe/jewel/jewel:4.0.4/IMM76D/99866.1:user/release-keys" PRIVATE_BUILD_DESC="2.13.651.1 CL99866 release-keys"

PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip
