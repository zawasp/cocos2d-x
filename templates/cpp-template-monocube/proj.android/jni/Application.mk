APP_STL := c++_static
NDK_TOOLCHAIN_VERSION:=clang

APP_CPPFLAGS := -frtti -DCC_ENABLE_CHIPMUNK_INTEGRATION=1 -std=c++11 -fsigned-char
APP_LDFLAGS := -latomic
APP_PLATFORM := android-10 

ifeq ($(NDK_DEBUG),1)
  APP_CPPFLAGS += -DCOCOS2D_DEBUG=1
  APP_OPTIM := debug
  APP_ABI := armeabi-v7a
else
  APP_CPPFLAGS += -DNDEBUG
  APP_OPTIM := release
  APP_ABI := armeabi-v7a x86
endif