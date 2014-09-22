LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)
$(call import-add-path,$(LOCAL_PATH)/../..)

LOCAL_MODULE := cocos2dcpp_common

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src \
					$(LOCAL_PATH)/src/config \
					$(LOCAL_PATH)/src/controller \
					$(LOCAL_PATH)/src/model \
					$(LOCAL_PATH)/src/scenes \
					$(LOCAL_PATH)/src/widgets
	
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_STATIC_LIBRARIES := cocos2dx_static
LOCAL_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_STATIC_LIBRARIES += cocostudio_static
LOCAL_STATIC_LIBRARIES += cocos_extension_static
LOCAL_STATIC_LIBRARIES += cube_framework_static

include $(BUILD_STATIC_LIBRARY)

$(call import-module,audio/android)
$(call import-module,editor-support/cocostudio)
$(call import-module,extensions)
$(call import-module,framework)

