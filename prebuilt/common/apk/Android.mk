# Copyright (C) 2017 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

# Arcanery
include $(CLEAR_VARS)
LOCAL_MODULE := Arcanery
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# OPWidget
include $(CLEAR_VARS)
LOCAL_MODULE := OPWidget
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# Via
include $(CLEAR_VARS)
LOCAL_MODULE := Via
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := GrapheneCamera
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Camera2 GcamGo Snap
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.camera.extensions.impl
include $(BUILD_PREBUILT)

# Retro
include $(CLEAR_VARS)
LOCAL_MODULE := Retro
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# ThemedIconsOverlay
include $(CLEAR_VARS)
LOCAL_MODULE := ThemedIconsOverlay
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)
