LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_USE_AAPT2 := true

LOCAL_MODULE := VendorSupportLib

LOCAL_SHARED_ANDROID_LIBRARIES := \
    androidx.appcompat_appcompat \
    androidx.recyclerview_recyclerview \
    androidx.preference_preference

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_JAR_EXCLUDE_FILES := none

LOCAL_SRC_FILES := $(call all-java-files-under, src)

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_STATIC_JAVA_LIBRARY)
