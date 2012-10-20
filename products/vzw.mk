#Permissions and Lib for Verizon Wireless Apps
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/app/VerizonSSO.apk:system/app/VerizonSSO.apk \
    vendor/Sourcery/vzw/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/Sourcery/vzw/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/Sourcery/vzw/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \
    vendor/Sourcery/vzw/libmotricity.so:system/lib/libmotricity.so

