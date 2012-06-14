PRODUCT_NAME := Sourcery
PODUCT_BRAND := Sourcery
PRODUCT_DEVICE := generic


PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=icsourcery

# standard sourcery packages 
PRODUCT_PACKAGES := \
    Camera \
    Gallery \
    SoundRecorder \
    AppWidgetPicker \
    Superuser \
    Superuser.apk \
    su \
    Development \
    SpareParts \
    ICSControl

# tmobile	 	
PRODUCT_PACKAGES += \
    ThemeManager \
    ThemeChooser \
    com.tmobile.themes
 	 	


# Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    HoloSpiralWallpaper \
    NoiseField \
    MagicSmokeWallpapers \
    Galaxy4 \
    ICSourceryWallpapers

#CM apps - Thanks to the great team over at CyanogenMod we have these awesome apps :)
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf 

# init.d support
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/Sourcery/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/Sourcery/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/Sourcery/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/Sourcery/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/Sourcery/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/Sourcery/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/Sourcery/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/Sourcery/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/Sourcery/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/Sourcery/prebuilt/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/Sourcery/prebuilt/common/etc/.root_browser:system/etc/.root_browser \
    vendor/Sourcery/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/Sourcery/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/Sourcery/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/Sourcery/prebuilt/common/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml

# Propiortary applications
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/Sourcery/prebuilt/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/Sourcery/prebuilt/common/app/MiFileExplorer_v2.3.7.32.apk:system/app/MiFileExplorer_v2.3.7.32.apk \
    vendor/Sourcery/prebuilt/common/app/SlideShowWidget.apk:system/app/SlideShowWidget.apk \
    vendor/Sourcery/prebuilt/common/app/SourceryTools.apk:system/app/SourceryTools.apk

# Sounds
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3 \
    vendor/Sourcery/prebuilt/common/media/audio/notifications/Sourcery.ogg:system/media/audio/notifications/Sourcery.ogg

# libs
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/lib/libmotricity.so:system/lib/libmotricity.so \
    vendor/Sourcery/prebuilt/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/Sourcery/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Google DNS servers and host and gps file
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/gps.conf:system/etc/gps.conf \
    vendor/Sourcery/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/Sourcery/prebuilt/common/etc/hosts:system/etc/hosts

# Cron schedual 
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/Sourcery/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/Sourcery/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/Sourcery/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/Sourcery/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/Sourcery/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/Sourcery/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/Sourcery/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/Sourcery/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Term binarry for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/Sourcery/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so 
#vendor/Sourcery/proprietary/Term.apk:system/app/Term.apk \
# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/Sourcery/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/Sourcery/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/Sourcery/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/Sourcery/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/Sourcery/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/Sourcery/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/Sourcery/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/Sourcery/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/xbin/backup:system/xbin/backup \
    vendor/Sourcery/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/Sourcery/prebuilt/common/xbin/btool:system/xbin/btool \
    vendor/Sourcery/prebuilt/common/xbin/busybox:system/xbin/busybox \
    vendor/Sourcery/prebuilt/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/Sourcery/prebuilt/common/xbin/gdb:system/xbin/gdb \
    vendor/Sourcery/prebuilt/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/Sourcery/prebuilt/common/xbin/market_history:system/xbin/market_history \
    vendor/Sourcery/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/Sourcery/prebuilt/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/Sourcery/prebuilt/common/xbin/run_backup:system/xbin/run_backup \
    vendor/Sourcery/prebuilt/common/xbin/run_restore:system/xbin/run_restore \
    vendor/Sourcery/prebuilt/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/Sourcery/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/Sourcery/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/Sourcery/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/Sourcery/prebuilt/common/xbin/zipalign:system/xbin/zipalign 


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240 \
    wifi.supplicant_scan_interval=180 \
    ro.config.ringtone=LoveFlute.ogg \
    ro.config.notification_sound=Sourcery.ogg \
    ro.config.alarm_alert=Plutonium.ogg \
    ro.build.sourcery.version=3.2 \
    ro.com.android.dataroaming=false \
	ro.goo.version=100
















