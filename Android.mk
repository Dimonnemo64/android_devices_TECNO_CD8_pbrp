LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), cd8_h655)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
