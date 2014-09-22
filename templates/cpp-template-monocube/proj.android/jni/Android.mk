LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../..)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := main/main.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../src \
					$(LOCAL_PATH)/../../src/controller \
					$(LOCAL_PATH)/../../src/scenes

LOCAL_STATIC_LIBRARIES += cocos2dcpp_common

include $(BUILD_SHARED_LIBRARY)

$(call import-module,sources)
$(call import-module,.)
