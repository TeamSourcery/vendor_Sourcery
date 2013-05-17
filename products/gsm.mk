# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/maguro/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml


# SIM Toolkit
PRODUCT_PACKAGES += \
     Stk \
     CellBroadcastReceiver

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.current.phone-type=1
