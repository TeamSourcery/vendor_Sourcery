# device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)
$(call inherit-product, vendor/Sourcery/products/common.mk)
$(call inherit-product, vendor/Sourcery/products/common_phone.mk)
$(call inherit-product, vendor/Sourcery/products/theme.mk)

# Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/toroplus
PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/common

# Setup device specific product configuration.
PRODUCT_NAME := Sourcery_toroplus
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.gsm.data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.gsm.2nd_data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    camera.flash_off=0 \
    dalvik.vm.lockprof.threshold=500 \
    wifi.supplicant_scan_interval=180 \
    ro.goo.developerid=TeamSourcery \
    ro.modversion=JBSourcery-V4.2(test)

PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/gps.conf:system/etc/gps.conf \
    vendor/Sourcery/prebuilt/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml 


# Torospr specific packages
PRODUCT_PACKAGES += \
    Thinkfree


