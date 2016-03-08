LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= bcm_headset.kl
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= keylayout
LOCAL_SRC_FILES		:= bcm_headset.kl
LOCAL_MODULE_PATH       := system/usr/keylayout
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= bcm_keypad_v2.kl
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= keylayout
LOCAL_SRC_FILES		:= bcm_keypad_v2.kl
LOCAL_MODULE_PATH       := system/usr/keylayout
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= samsung-keypad.kl
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= keylayout
LOCAL_SRC_FILES		:= samsung-keypad.kl
LOCAL_MODULE_PATH       := system/usr/keylayout
include $(BUILD_PREBUILT)
