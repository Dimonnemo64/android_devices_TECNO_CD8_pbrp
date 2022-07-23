LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), CD8-RU)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
