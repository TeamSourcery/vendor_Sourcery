# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/Sourcery/products/common_phone.mk)
$(call inherit-product, vendor/Sourcery/products/common.mk)
# Inherit GSM common stuff
$(call inherit-product, vendor/Sourcery/products/gsm.mk)
# tmobile theme engine
$(call inherit-product, vendor/Sourcery/products/theme.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/maguro
PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/common


# Setup device specific product configuration.
PRODUCT_NAME := Sourcery_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=takju BUILD_FINGERPRINT=google/takju/maguro:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=398337

PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

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
    ro.modversion=JBSourcery-V2.3




# Maguro specific packages
PRODUCT_PACKAGES += \
       Thinkfree
