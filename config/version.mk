# Copyright (C) 2017 ProjectArcana ROM
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

#Arcana Versioning
ARCANA_VERSION = ECLAIR
ARCANA_CODE = 5.0

ifeq ($(PREBUILT_LAWNCHAIR),true)
PREBUILT_LAUNCHER ?= LAWNCHAIR
else
PREBUILT_LAUNCHER ?= PIXEL
endif

ifeq ($(WITH_GAPPS),true)
PACKAGE_BUILD_TYPE ?= PIXEL
else
PACKAGE_BUILD_TYPE ?= VANILLA
endif

# build type
ifeq ($(ARCANA_OFFICIAL),true)
ARCANA_BUILD_TYPE ?= OFFICIAL
else
ARCANA_BUILD_TYPE ?= COMMUNITY
endif

# AOSP recovery flashing
ifeq ($(TARGET_USES_AOSP_RECOVERY), true)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.recovery_update=true
endif
