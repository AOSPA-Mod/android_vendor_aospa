# Inherit common paranoid tablet target
$(call inherit-product, vendor/aospa/target/product/tablet.mk)

# NO Telephony
TARGET_NO_TELEPHONY := true

# Apps
PRODUCT_PACKAGES += \
    EmergencyInfo
