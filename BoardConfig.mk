USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/kyleve/BoardConfigVendor.mk
LOCAL_PATH := device/samsung/kyleve/
# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := hawaii
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Assert
TARGET_OTA_ASSERT_DEVICE := kyleve,S7392,GT-S7392,hawaii

# Kernel
BOARD_KERNEL_BASE := 0x82000000
BOARD_KERNEL_PAGESIZE := 4096
#TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_kyleve_rev00_defconfig
#TARGET_KERNEL_SOURCE := kernel/samsung/kyleve
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
# Inline kernel building
#TARGET_NO_KERNEL := true
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kernel:kernel

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 907096000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2638217216
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144 #BOARD_KERNEL_PAGESIZE * 64

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kyleve/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/kyleve/bluetooth/libbt_vndcfg_S7392.txt

# Connectivity - Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI     := true
WPA_BUILD_SUPPLICANT 		:= true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b1
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG


# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    WITH_DEXPREOPT := true
  endif
endif

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Enable WEBGL in WebKit
ENABLE_WEBGL                := true

# Hardware rendering
BOARD_EGL_CFG := device/samsung/kyleve/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DHAWAII_HWC -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# opengl
BOARD_USE_BGRA_8888 := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_BATTERY_DEVICE_NAME := battery
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-kyleve.hawaii

# Use the CM PowerHAL
TARGET_USES_CM_POWERHAL := true
CM_POWERHAL_EXTENSION := hawaii
TARGET_POWERHAL_VARIANT = cm

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/kyleve/ril/

# Recovery
#TARGET_RECOVERY_INITRC := 
TARGET_RECOVERY_FSTAB := device/samsung/kyleve/rootdir/fstab.hawaii_ss_kyleve
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := false
BOARD_RECOVERY_ALWAYS_WIPES := false
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_DENSITY := hdpi

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/kyleve/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/kyleve/include

# Compat
TARGET_USES_LOGD := false

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

BOARD_SEPOLICY_DIRS += \
    device/samsung/kyleve/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    service_contexts \
    bkmgrd.te \
    device.te \
    surfaceflinger.te \
    bluetooth.te \
    geomagneticd.te \
    gpsd.te \
    init.te \
    immvibed.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_server.te \
    tvserver.te \
    vclmk.te
