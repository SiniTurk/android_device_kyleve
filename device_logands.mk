$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/samsung/logands/logands-common-vendor.mk)

# Use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS += device/samsung/logands/overlay

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/logands/ramdisk/fstab.hawaii_ss_logands:root/fstab.hawaii_ss_logands \
	device/samsung/logands/ramdisk/init.rc:root/init.rc \
	device/samsung/logands/ramdisk/init.hawaii_ss_logands.rc:root/init.hawaii_ss_logands.rc \
	device/samsung/logands/ramdisk/init.bcm2166x.usb.rc:root/init.bcm2166x.usb.rc \
	device/samsung/logands/ramdisk/init.log.rc:root/init.log.rc \
	device/samsung/logands/ramdisk/charger:root/charger \
	device/samsung/logands/ramdisk/ueventd.hawaii_ss_logands.rc:root/ueventd.hawaii_ss_logands.rc
	
PRODUCT_COPY_FILES += \
	device/samsung/logands/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/logands/configs/audio_policy.conf:system/etc/audio_policy.conf \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
 	device/samsung/logands/configs/media_codecs.xml:system/etc/media_codecs.xml 

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/logands/keylayouts/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
	device/samsung/logands/keylayouts/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
	device/samsung/logands/keylayouts/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	device/samsung/logands/keylayouts/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl

# Copy Apps
#PRODUCT_COPY_FILES += \
#	device/samsung/logan/apk/Effem.apk:system/app/Effem.apk

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Set composition for USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Set read only default composition for USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.usb.default.config=mtp	

# Charger
#PRODUCT_PACKAGES += \
#	charger_res_images

# Insecure ADBD
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	persist.service.adb.enable=0
	
# Media
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1
	
# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.text_large_cache_height=2048 \
    ro.hwui.text_cache_width=2048 \
    ro.hwui.text_cache_height=256

# Performance and battery tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.disable.power.collapse=0 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    debug.sf.hw=1 \
    persist.sys.ui.hw=true \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.jpeg.quality=100 \
    pm.sleep_mode=1 \
    ro.mot.eri.losalert.delay=500 \
    wifi.supplicant_scan_interval=180 \
    ro.max.fling_velocity=25000 \
    ro.min.fling_velocity=12000 \
    windowsmgr.max_events_per_sec=150 \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0
	
# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything	

# Misc other modules
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	audio.primary.default \
	libaudioutils \
    libtinyalsa

# Device-specific packages
PRODUCT_PACKAGES += \
	SamsungServiceMode
	
# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ksm.default=1	
	
# Wi-Fi
PRODUCT_PACKAGES += \
	dhcpcd.conf \
	hostapd \
	wpa_supplicant \
	wpa_supplicant.conf	


# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    mobiledata.interfaces=rmnet0 \
    ro.telephony.ril_class=SamsungBCMRIL \
    ro.zygote.disable_gl_preload=true \
    persist.radio.multisim.config=dsds \
	ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc \
	cm.updater.uri=http://get.ace3.tk \
	ro.telephony.call_ring.multiple=0 \
	ro.telephony.call_ring=0
    
# Dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifeq ($(TARGET_BUILD_VARIANT),user)      
else      
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_logands
PRODUCT_DEVICE := logands
PRODUCT_MODEL := GT-S7272
