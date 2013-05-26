# Default ringtone

PRODUCT_PACKAGES += \
  Stk

# Inherit drm blobs
 #include vendor/Sourcery/products/common_drm_phone.mk

# BT config
 PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

PRODUCT_PROPERTY_OVERRIDES += \
    fw.max_users=1
