$(call inherit-product, device/samsung/toro/full_toro.mk)
$(call inherit-product, vendor/Sourcery/products/common.mk)
$(call inherit-product, vendor/Sourcery/products/common_phone.mk)

PRODUCT_NAME := Sourcery_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=JRO03C \
    PRODUCT_NAME=mysid \
    BUILD_DISPLAY_ID=JRO03C-4.1.1-r1 \
    PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM76K 336647 release-keys" \
    BUILD_FINGERPRINT="google/mysid/toro:4.0.4/IMM76K/336647:user/release-keys"

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
    ro.modversion=JBSourcery-Version-1.0-Beta-1
    ro.goo.rom=Sourcery-TORO

# hardware info
ro.device.cpu=1.2GHz dual-core TI OMAP 4460
ro.device.gpu=PowerVR SGX SGX540
ro.device.rear_cam=5 MP
ro.device.front_cam=1.3 MP
ro.device.screen_res=720x1280


PRODUCT_COPY_FILES += \
    vendor/samsung/toro/proprietary/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/samsung/toro/proprietary/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/samsung/toro/proprietary/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml 
   

PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/toro
PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/common

