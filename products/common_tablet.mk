# Inherit common stuff
$(call inherit-product, vendor/Sourcery/products/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/common_tablet
