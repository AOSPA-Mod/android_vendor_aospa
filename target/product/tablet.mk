# Inherit common AOSPA target
$(call inherit-product, vendor/aospa/target/aospa-target.mk

# Inherit tablet AOSP target
$(call inherit-product, $(SRC_TARGET_DIR)/product/large_screen_common.mk)

# Freeform window management
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.freeform_window_management.xml

# Tablet Packages
PRODUCT_PACKAGES += \
    AOSPAFrameworksTabletOverlay

# Override props
PRODUCT_PRODUCT_OVERRIDES += \
    ro.setupwizard.rotation_locked=false
