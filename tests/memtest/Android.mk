# Copyright 2006 The Android Open Source Project
ifeq ($(TARGET_ARCH),arm)
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= memtest.cpp.arm \
		  fptest.cpp \
		  thumb.cpp


LOCAL_SHARED_LIBRARIES := libc 

LOCAL_MODULE:= memtest

LOCAL_MODULE_TAGS := optional

## LOCAL_CFLAGS += -fstack-protector-all
LOCAL_CFLAGS += -fomit-frame-pointer

include $(BUILD_EXECUTABLE)
endif
